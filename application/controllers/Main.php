<?php
    class Main extends CI_Controller{
        function __construct() {
            parent::__construct();
            $this->load->library('Template', 'template');
            $this->load->model('WisataModel','wisata_model');

        }
        function index(){
            $data['wisata'] = $this->wisata_model->get_all_wisata();
            $this->template->display('gismadura/index', $data);
        }
        function wisata($kota){
            $data['wisata'] = $this->wisata_model->get_wisata_kota($kota);
            $this->template->display('gismadura/listwisata', $data);
        }
        function kategori($slug){
            $data['wisata'] = $this->wisata_model->get_wisata_kategori($slug);
            $this->template->display('gismadura/listwisata', $data);
        }
        function detail($slug){
            $data['wisata'] = $this->wisata_model->get_detail_wisata($slug);
            $this->template->display('gismadura/detail', $data);
        }
    }