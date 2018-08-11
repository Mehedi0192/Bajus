<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'home';
$route['management'] = 'admin/index';
$route['login-check'] = 'admin/admin_login_check';
$route['dashboard'] = 'Super_admin/index';

$route['logout'] = 'Super_admin/logout';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


/*--------------For Admin ------------------*/



 $route['add-category'] = 'Super_admin/add_category';
$route['save-category'] = 'Super_admin/save_category';
$route['manage-category'] = 'Super_admin/manage_category';
$route['delete-category/(.+)'] = 'Super_admin/delete_category/$1';
$route['update-category'] = 'Super_admin/update_category';
$route['edit-category/(.+)'] = 'Super_admin/edit_category/$1';

$route['unpublish-category/(.+)'] = 'Super_admin/unpublish_category/$1';
$route['publish-category/(.+)'] = 'Super_admin/publish_category/$1';

$route['edit-category/(.+)'] = 'Super_admin/edit_category/$1';
$route['update-category'] = 'Super_admin/update_category';
$route['add-manufacture'] = 'Super_admin/add_manufacture';
$route['save-manufacture'] = 'Super_admin/save_manufacture';
$route['manage-manufacture'] = 'Super_admin/manage_manufacture';
$route['unpublish-manufacture/(.+)'] = 'Super_admin/unpublish_manufacture/$1';
$route['publish-manufacture/(.+)'] = 'Super_admin/publish_manufacture/$1';
$route['delete-manufacture/(.+)'] = 'Super_admin/delete_manufacture/$1';
$route['edit-manufacture/(.+)'] = 'Super_admin/edit_manufacture/$1';
$route['update-manufacture'] = 'Super_admin/update_manufacture';
$route['add-products'] = 'Super_admin/add_products';
$route['save-products'] = 'Super_admin/save_products';
$route['manage-products'] = 'Super_admin/manage_products'; 


/*
$arr = array(
    "product-management" => "adm_product_controller",
    "units-management" => "adm_units_controller"
);

foreach ($arr as $key => $value) {
    $route["{$key}"] = "{$value}";
    $route["{$key}/insert"] = "{$value}/insert";
    $route["{$key}/view"] = "{$value}/view";
    $route["{$key}/edit/(:num)"] = "{$value}/edit/$1";
    $route["{$key}/update"] = "{$value}/update";
    $route["{$key}/delete/(:num)"] = "{$value}/delete/$1";
} */



