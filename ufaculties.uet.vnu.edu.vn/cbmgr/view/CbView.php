<?php
    namespace cbmgr\view;
    
    class CbView {
        private $data; // danh sach can bo
        
        public function __construct($data) {
            $this->data = $data;
        }
        
        public function tableView() {
            $html = "<table><thead><tr>";
            $html .= "<th>Mã cán bộ</th>";
            $html .= "<th>Họ tên</th>";
            $html .= "<th>VNU-mail</th>";
            $html .= "<th>Loại cán bộ</th>";
            $html .= "<th>Học vị</th>";
            $html .= "<th>Tên đơn vị</th>";
            $html .= "</tr></thead><tbody>";       
            foreach ($this->data as $r) {
                    $html .= "<tr>";
                    $html .= "<td>".$r["MaCB"]."</td>";
                    $html .= "<td>".$r["Hoten"]."</td>";
                    $html .= "<td>".$r["VNUemail"]."</td>";
                    $html .= "<td>".$r["LoaiCB"]."</td>";
                    $html .= "<td>".$r["Hocvi"]."</td>";
                    $html .= "<td>".$r["Tendonvi"]."</td>";
                    $html .= "<td>"."</td>";
		    $html .= "</tr>";
             }
            $html .= "</tbody></table>";
            
			return $html;
        }


        public function listloaicbView() {
            $html =  "<b>Loại cán bộ: </b>";
            $html .=  "<select>";   
            foreach ($this->data as $r) {
                  $html .= "<option value=";
                  $html .= "'".$r["MaCB"]."'>";
                  $html .= $r["LoaiCB"];
                  $html .= "</option>";
             }
            $html .= "</select>";
            return $html;
        }

        public function listhocviView() {
            $html =  "<b>Học hàm, Học vị: </b>";
            $html .=  "<select>";   
            foreach ($this->data as $r) {
                  $html .= "<option value=";
                  $html .= "'".$r["MaCB"]."'>";
                  $html .= $r["Hocvi"];
                  $html .= "</option>";
             }
            $html .= "</select>";
            return $html;
        }

        public function listdonviView() {
            $html =  "<b>Đơn vị: </b>";
            $html .=  "<select>";   
            foreach ($this->data as $r) {
                  $html .= "<option value=";
                  $html .= "'".$r["MaCB"]."'>";
                  $html .= $r["Tendonvi"];
                  $html .= "</option>";
             }
            $html .= "</select>";
            return $html;
        }
    }
 
