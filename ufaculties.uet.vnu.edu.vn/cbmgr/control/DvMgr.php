<?php 
    namespace dvmgr\control;
    use core\util\Util;
    
    require_once("cbmgr/model/Donvi.php");
    require_once("cbmgr/view/DvView.php");
    require_once("core/util/Util.php");
    
    class DvMgr {
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
            $dv= new \dvmgr\model\Donvi();
            $data = $dv->getByPage($p-1, 10);
            
			if ($json) echo json_encode($data);
			else {
            	// hiển thị dạng bảng
            	$dvview = new \dvmgr\view\DvView($data);
            	echo $dvview->tableView();
			}
		}
		
		/**
		* Tính số trang
		*/
        public function getPageCount($json=false) {
            $dv= new \dvmgr\model\Donvi();
			$nop = $dv->getPageCount(10);
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
                $dv= new \dvmgr\model\Donvi();
                $data = $dv->find($v);
				if ($json) echo json_encode($data);
				else {
                	$dvview = new \dvmgr\view\DvView($data, count($data)/10, 0);
                	echo $dvview->tableView();
				}
           } 
        }

		/**
		* listbox
		*/
		public function listbox($json=false) {	
			$dv= new \dvmgr\model\Donvi();
			$data = $dv->getDonvi();
			if ($json) echo json_encode($data);
			else {
				$dvview = new \dvmgr\view\DvView($data, 1, 1);
          		echo $dvview->listdonviView();
			}
		}



		/**
		* Thêm mới
		*/
		public function add() {
			if (isset($_GET["action"]) && $_GET["action"] == "add" && 
                isset($_GET["ht"]) && isset($_GET["m"]) ) {
                     $dv = new \dvmgr\model\Donvi();
                     $dv->newStd(Util::clean($_GET["m"], 20), Util::clean($_GET["ht"], 200));
                }
		}    
    }
