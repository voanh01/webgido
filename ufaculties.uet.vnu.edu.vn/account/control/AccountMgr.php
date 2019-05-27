<?php
namespace account\control;

require_once("account/view/AccountView.php");
require_once("account/model/AccountModel.php");

class AccountMgr {
	public function __contruct() {}
	
	public function checkAuthentication() {
		session_start();
    	if (!isset($_SESSION["Taikhoan"])) {
			if (isset($_POST["loginSubmitted"])) $this->doLogin();
			else $this->login();
		}
    }
    
    public function login() {
   		$v = new \account\view\AccountView();
   		$v->loginForm();
    	exit();
    }
    
    public function doLogin() {
    	if (isset($_SESSION["Taikhoan"])) return; /*da dang nhap roi*/
    	if (isset($_POST["Taikhoan"]) && isset($_POST["Matkhau"])) {
    		$m = new \account\model\AccountModel();
		    if ($m->checkAccount($_POST["Taikhoan"], $_POST["Matkhau"])) {
		         $_SESSION["Taikhoan"] = $_POST["Taikhoan"];
		    } else {
		        echo "Tên dăng nhập hoặc mật khẩu không đúng.";
		        $this->login();
		    } 
		} else {
			echo "Chưa nhập tên dăng nhập hoặc mật khẩu.";
		    $this->login();
		}
   }
   
   public function doLogout() {
   		session_start();
		unset($_SESSION["Taikhoan"]);
		$this->login();
   }
}
