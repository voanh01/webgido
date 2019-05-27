<?php
namespace account\view;
class AccountView {
	public function __contruct() {}
	
	public function loginForm() {
		echo '<form method="post">
		<section class="loginBox posR ovh">
		                <header class="txtC ovh txtB">
		                    <a href="index.html" class="logo dpib ovh" tabindex="-1">
		       				    <img src="/img/logo-outline2.png" alt="uet" title="uet">		  
		                    </a>
		                </header>
					<section class="loginFr ovh vi-VN">
		                    <h3>Đăng nhập</h3>	
					<input type="hidden" name="loginSubmitted" value="1"/>
					<div class="mb15 posR">
		                        <label>Tên đăng nhập</label>
		                        
					 <input data-val="true" data-val-required="Nhập tên đăng nhập!" id="UserName" name="Taikhoan" tabindex="1" type="text" value="">
		                    </div>
		                    <div class="posR mb15">
		                        <label>Mật khẩu</label>
		                        <input data-val="true" data-val-required="Nhập mật khẩu!" id="Password" name="Matkhau" tabindex="2" type="password" value="">    
					
		                    </div>
					<input type="submit" value="Dang nhap" />
				 </form>
				 Chưa có tài khoản?
				 <a href="register.php">Đăng kí</a> 
				 </section>
				  <div class="other">Hỗ trợ: 123456789</div>
				</section>
				 ';
 	}
}
