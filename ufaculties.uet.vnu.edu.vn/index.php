<html>
<head>
    <title>quanlyscb</title>
      <link rel="stylesheet" type="text/css" href="style-quanlydonvi.css">
</head>
<?php
	// 1 Kiểm tra xem người dùng đã đăng nhập hay chưa

	// nếu chưa thì cho đăng nhập trước
	require_once("account/control/AccountMgr.php");
	$accmgr = new \account\control\AccountMgr();
	$accmgr->checkAuthentication();

	// Nếu đăng nhập rồi thì xử lý nghiệp vụ
	
	// 2 dinh tuyen url
	// require_once("core/control/Routing.php");
	// $r = new \core\control\Routing();
	// $ret = $r->proc();

	// 3 goi controller de xu ly nghiep vu
	// require_once($ret['moduleName']);
	// $controller = new $ret['controllerName']();
	// $action = $ret['actionName'];
	// $controller->$action($ret['parameters']);



	// Hãy lần lượt mở các action sau:
	require_once("cbmgr/control/CbMgr.php");
    $stdctrl = new \cbmgr\control\CbMgr();
    $stdctrl->proc();
	// $stdctrl->proc(true);
	// $stdctrl->getPageCount();
	// $stdctrl->getPageCount(true);
	$stdctrl->find(ATTT01);
	// $stdctrl->find(true);
	// $stdctrl->listbox();
	// $stdctrl->listbox(true);


	
