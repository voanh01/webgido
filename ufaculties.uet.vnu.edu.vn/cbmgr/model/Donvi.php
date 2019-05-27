<?php
    namespace dvmgr\model;
    use core\data\model\PDOData;
    
    require_once("core/data/PDOData.php");
    
    class Donvi {
        public function __contruct() {
        }
	
		public function getAll() {
            $db = new PDOData();
            $ret = $db->doQuery("select * from donvi;");
            return $ret;
        }
      
        public function getById($Tendonvi) {
            $db = new PDOData();
            $ret = $db->doPreparedQuery("select * from donvi where Tendonvi = ?;", array($Tendonvi));
            return $ret;
        }

        public function getDonvi() {
            $db = new PDOData();
            $ret = $db->doQuery("select DISTINCT Loaidonvi from donvi;");
            return $ret;
        }
         
        public function find($s) {
            $db = new PDOData();
			$ret = $db->doPreparedQuery("select * from donvi where Tendonvi like ? or Loaidonvi like ?;", array("%$s%", "%$s%"));
            return $ret;
        }
        
        public function getByPage($pageNumber, $pageSize) {
            $db = new PDOData();
            $rows = $db->doQuery("select * from donvi;");
            
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
            $rows = $db->doQuery("select * from donvi;");
            $ret = floor(count($rows) / $pageSize);
            if (count($rows) % $pageSize > 0) $ret++;
            return $ret;
         }
         
         public function newStd($m, $ht) {
            $db = new PDOData();
			// Hãy sử dụng câu lệnh chuẩn bị trước, tức sử dụng doPrepareSql()
			// thay cho doSql() trong tình huống này.
            $c = $db->doSql("insert into donvi(Tendonvi, Loaidonvi) values('$m', '$ht')"); 
            return $c;
         }
    }
