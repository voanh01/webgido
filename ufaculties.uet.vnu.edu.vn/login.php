<?php
	// 1 Kiểm tra xem người dùng đã đăng nhập hay chưa

	// nếu chưa thì cho đăng nhập trước

	require_once("account/control/AccountMgr.php");
	$accmgr = new \account\control\AccountMgr();
	$accmgr->checkAuthentication();

	require_once("cbmgr/control/CbMgr.php");
    $cbctrl = new \cbmgr\control\CbMgr();
    $cbctrl->proc();