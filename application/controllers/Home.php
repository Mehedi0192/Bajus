<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function index() {
        $data = array();
        $data['all_products_published_info'] = $this->welcome_model->all_published_products_info();
        $data['all_featured_image'] = $this->welcome_model->all_featured_image();
        $data['main_content'] = $this->load->view('pages/home_content', $data, true);
        $this->load->view('master', $data);
    }

    public function category_product($category_id) {
        $data = array();
        $data['all_products_published_info_by_category'] = $this->welcome_model->all_products_published_info_by_category($category_id);
        $data['all_featured_image'] = $this->welcome_model->all_featured_image();
        $data['main_content'] = $this->load->view('pages/category_product', $data, true);
        $this->load->view('master', $data);
    }

    public function checkout() {
        $data = array();
        $data['main_content'] = $this->load->view('pages/checkout', '', true);
        $this->load->view('master', $data);
    }

    public function product_details($product_id) {
        $data = array();
        $data['product_info'] = $this->welcome_model->select_product_by_product_id($product_id);
         $data['all_featured_image'] = $this->welcome_model->all_featured_image();
        $data['main_content'] = $this->load->view('pages/product_details', $data, true);
        $this->load->view('master', $data);
    }

}
