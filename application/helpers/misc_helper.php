<?php 
	
function die_pre($data)
{
	die('<pre>'.print_r($data, true).'</pre>');
}

function pre($data)
{
	echo '<pre>'.print_r($data, true).'</pre>';
}