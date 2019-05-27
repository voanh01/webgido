<?php

	require_once("account/control/AccountMgr.php");
	$accmgr = new \account\control\AccountMgr();
	$accmgr->checkAuthentication();
	// Hãy lần lượt mở các action sau:
	require_once("cbmgr/control/CbMgr.php");
    $cbctrl = new \cbmgr\control\CbMgr();
	$cbctrl->listloaicb();
	$cbctrl->listhocvi();
	$cbctrl->listdonvi();
    $cbctrl->proc();
	// $cbctrl->proc(true);
	// $cbctrl->getPageCount();
	// $cbctrl->getPageCount(true);
	// $cbctrl->find();
	// $cbctrl->find(true);
	// $cbctrl->listbox();
	// $cbctrl->listbox(true);


	
