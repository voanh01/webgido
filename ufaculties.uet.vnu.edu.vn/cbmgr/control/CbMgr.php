<?php 
    namespace cbmgr\control;
    use core\util\Util;
    
    require_once("cbmgr/model/Canbo.php");
    require_once("cbmgr/view/CbView.php");
    require_once("core/util/Util.php");
    
    class CbMgr {
        public function __contruct() {}
        
		/**
		* Danh sách theo trang
		*/
        public function proc($json=false) {
			// số hiệu trang hiện tại
            $p = 1;
            if (isset($_GET["p"]) && is_numeric($_GET["p"])) 
                $p = intval($_GET["p"]);
            
            // dữ liệu thuộc trang
            $cb= new \cbmgr\model\Canbo();
            $data = $cb->getByPage($p-1, 10);
            
			if ($json) echo json_encode($data);
			else {
            	// hiển thị dạng bảng
            	$cbview = new \cbmgr\view\CbView($data);
            	echo $cbview->tableView();
			}
		}
		
		/**
		* Tính số trang
		*/
        public function getPageCount($json=false) {
            $cb= new \cbmgr\model\Canbo();
			$nop = $cb->getPageCount(10);
			if ($json) echo json_encode(array("nop"=>$nop));
            else echo $nop;
        }

		/**
		* Tìm kiếm
		*/
		public function find($json=false) {
			$v = "";   
           if (isset($_GET["s"])) {
                $v = $_GET["s"];
                $cb= new \cbmgr\model\Canbo();
                $data = $cb->find($v);
				if ($json) echo json_encode($data);
				else {
                	$cbview = new \cbmgr\view\CbView($data, count($data)/10, 0);
                	echo $cbview->tableView();
				}
           } 
        }

        /**
		* listbox
		*/
		public function listbox($json=false) {	
			$dv= new \cbmgr\model\Canbo();
			$data = $dv->getAll();
			if ($json) echo json_encode($data);
			else {
				$dvview = new \cbmgr\view\CbView($data, 1, 1);
          		echo $dvview->listboxView();
			}
		}

		/**
		* listloaicb
		*/
		public function listloaicb($json=false) {	
			$cb= new \cbmgr\model\Canbo();
			$data = $cb->getLoaicb();
			if ($json) echo json_encode($data);
			else {
				$cbview = new \cbmgr\view\CbView($data, 1, 1);
          		echo $cbview->listloaicbView();
			}
		}

		/**
		* listhocvi
		*/
		public function listhocvi($json=false) {	
			$cb= new \cbmgr\model\Canbo();
			$data = $cb->getHocvi();
			if ($json) echo json_encode($data);
			else {
				$cbview = new \cbmgr\view\CbView($data, 1, 1);
          		echo $cbview->listhocviView();
			}
		}

		/**
		* listdonvi
		*/
		public function listdonvi($json=false) {	
			$cb= new \cbmgr\model\Canbo();
			$data = $cb->getDonvi();
			if ($json) echo json_encode($data);
			else {
				$cbview = new \cbmgr\view\CbView($data, 1, 1);
          		echo $cbview->listdonviView();
			}
		}

		/**
		* Thêm mới
		*/
		public function add() {
			if (isset($_GET["action"]) && $_GET["action"] == "add" && 
                isset($_GET["ht"]) && isset($_GET["m"]) ) {
                     $cb = new \cbmgr\model\Canbo();
                     $cb->newCb(Util::clean($_GET["m"], 20), Util::clean($_GET["ht"], 200));
                }
		}    
    }
