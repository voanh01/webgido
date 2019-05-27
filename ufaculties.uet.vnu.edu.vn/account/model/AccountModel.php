<?php
namespace account\model;
use core\data\model\PDOData;
    
require_once("core/data/PDOData.php");

class AccountModel {
	public function __contruct() {
    }
    
    public function checkAccount($u, $p) {
    	$db = new PDOData();
        $data = $db->doPreparedQuery("select * from nguoidung where Taikhoan like ? and Matkhau like password(?);", array($u, $p));
        
        if (count($data) > 0) return true;
        
        return false;
    }
}
