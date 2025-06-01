<?php

require_once __DIR__ . '/vendor/autoload.php';

$hell_mode = 'loose';
if ($hell_mode === 'loose') {
	error_reporting(E_ALL & ~E_WARNING & ~E_NOTICE & ~E_DEPRECATED);
} elseif ($hell_mode === 'strict') {
	/**
	 * Hell of a PHP Errors
	 * @link https://ne-a-r.blogspot.com/2018/11/hell-of-php-errors.html
	 */
	ini_set('error_reporting', E_ALL);
	ini_set('display_errors', true);
	set_error_handler(function ($errno, $errstr, $errfile, $errline) {
		throw new \ErrorException($errstr, 0, $errno, $errfile, $errline);
	});
}

/** @todo [PENTING] atur awalan tiap index pada _GET untuk menghindari galat */
$http_params_defaults = [
	'p',
	'dc',
	'op',
	'idx',
	'lex',
	'mod',
	'rpp',
	'src',
	'type',
	'action',
	'phrase',
	'abbr_key',
];
foreach ($http_params_defaults as $k => $v) {
	if (is_int($k)) {
		if (empty($_GET[$v])) {
			$_GET[$v] = null;
		}
	} else {
		if (empty($_GET[$k])) {
			$_GET[$k] = $v;
		}
	}
}

if (!function_exists('dd')) {
	function dd()
	{
		foreach (func_get_args() as $a) dump($a);
		dump(debug_backtrace());
		die;
	}
}
