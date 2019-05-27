<?php

	require_once("account/control/AccountMgr.php");
	$accmgr = new \account\control\AccountMgr();
	$accmgr->checkAuthentication();

	require_once("cbmgr/control/DvMgr.php");
    $dvctrl = new \dvmgr\control\DvMgr();
    $dvctrl->listbox();
    $dvctrl->proc();



	
