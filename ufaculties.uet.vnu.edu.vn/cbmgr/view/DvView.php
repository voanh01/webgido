<?php
    namespace dvmgr\view;
    
    class DvView {
        private $data; // danh sach sinh vien
        
        public function __construct($data) {
            $this->data = $data;
        }
        
        public function tableView() {
            $html = "<table><thead><tr>";
            $html .= "<th>Tên đơn vị</th>";
            $html .= "<th>Loại đơn vị</th>";
            $html .= "<th>Địa chỉ</th>";
            $html .= "<th>Điện thoại</th>";
            $html .= "<th>Website</th>";
            $html .= "</tr></thead><tbody>";       
            foreach ($this->data as $r) {
                    $html .= "<tr>";
                    $html .= "<td>".$r["Tendonvi"]."</td>";
                    $html .= "<td>".$r["Loaidonvi"]."</td>";
                    $html .= "<td>".$r["Diachi"]."</td>";
                    $html .= "<td>".$r["Dienthoai"]."</td>";
                    $html .= "<td>".$r["Website"]."</td>";
                    $html .= "</tr>";
             }
            $html .= "</tbody></table>";
            
			return $html;
        }

		public function listdonviView() {
            $html =  "<b>Loại đơn vị: </b>";
            $html .=  "<select>";   
            foreach ($this->data as $r) {
                  $html .= "<option value=";
                  $html .= "'".$r["Tendonvi"]."'>";
                  $html .= $r["Loaidonvi"];
                  $html .= "</option>";
             }
            $html .= "</select>";
            return $html;
        }
 }
