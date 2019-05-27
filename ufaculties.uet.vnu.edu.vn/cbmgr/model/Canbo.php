<?php
    namespace cbmgr\model;
    use core\data\model\PDOData;
    
    require_once("core/data/PDOData.php");
    
    class Canbo {
        public function __contruct() {
        }
	
		public function getAll() {
            $db = new PDOData();
            $ret = $db->doQuery("select * from canbo;");
            return $ret;
        }
        
        public function getLoaicb() {
            $db = new PDOData();
            $ret = $db->doQuery("select DISTINCT LoaiCB from canbo;");
            return $ret;
        }

        public function getHocvi() {
            $db = new PDOData();
            $ret = $db->doQuery("select DISTINCT Hocvi from canbo;");
            return $ret;
        }

        public function getDonvi() {
            $db = new PDOData();
            $ret = $db->doQuery("select DISTINCT Tendonvi from canbo;");
            return $ret;
        }


        public function getById($MaCB) {
            $db = new PDOData();
            $ret = $db->doPreparedQuery("select * from canbo where MaCB = ?;", array($MaCB));
            return $ret;
        }
         
        public function find($s) {
            $db = new PDOData();
			$ret = $db->doPreparedQuery("select * from canbo where MaCB like ? or Hoten like ?;", array("%$s%", "%$s%"));
            return $ret;
        }
        
        public function getByPage($pageNumber, $pageSize) {
            $db = new PDOData();
            $rows = $db->doQuery("select * from canbo;");
            
            $beginIndex = $pageNumber * $pageSize;
            $endIndex = $beginIndex  + $pageSize;
            if ($beginIndex > count($rows)) $beginIndex = count($rows);
            if ($endIndex > count($rows)) $endIndex = count($rows);
            
            $ret = array();
            for ($i = $beginIndex; $i < $endIndex; $i++)
                $ret[] = $rows[$i];
              
            return $ret;
        }
        
         public function getPageCount($pageSize) {
            $db = new PDOData();
            $rows = $db->doQuery("select * from canbo;");
            $ret = floor(count($rows) / $pageSize);
            if (count($rows) % $pageSize > 0) $ret++;
            return $ret;
         }
         
         public function newCb($m, $ht) {
            $db = new PDOData();
			// Hãy sử dụng câu lệnh chuẩn bị trước, tức sử dụng doPrepareSql()
			// thay cho doSql() trong tình huống này.
            $c = $db->doSql("insert into canbo(MaCB, Hoten) values('$m', '$ht')"); 
            return $c;
         }
    }
