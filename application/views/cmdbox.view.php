<!DOCTYPE html>
<html lang="en">
<head>
		<?php print html::stylesheet(array('media/css/site'),array('screen')); ?>
</head>
<body >
	<?php
	///$user = ORM::factory('user',Auth::instance()->get_user()->username);
	$idname = html::specialchars(Auth::instance()->get_user()->idname);
	$username = html::specialchars(Auth::instance()->get_user()->username);
	$db = new Site_Model();
	
	/*TODO: write select with join using array index and values*/
	$querystr = sprintf('select id,sysconfig_id,app_version,db_version,environment from sysconfigs where sysconfig_id = "%s"',"SYSTEM");
	$result = $db->executeSelectQuery($querystr);
//print_r($result); print "<hr>";
	$row = $result[0];
	$TEXT=<<<_TEXT_
	<div id="cmdbox">
	<table border="0" cellspacing=0 cellpadding=1>
		<tr><td><b>User Id :</b></td><td align="left">$idname</td></tr>
		<tr><td><b>Signon Name :</b></td><td align="left">$username</td></tr>
		<tr><td><b>App Version :</b></td><td align="left">$row->app_version</td></tr> 
		<tr><td><b>DB Version :</b></td><td align="left">$row->db_version</td></tr> 
		<tr><td><b>Environment :</b></td><td align="left">$row->environment</td></tr>
	</table>

	</div>
_TEXT_;
	print $TEXT;
	?>
</body>
</html>   