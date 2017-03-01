<?php
    class Api extends CI_Controller{
        function __construct() {
            parent::__construct();
            $this->load->model('WisataModel', 'wisata_model');
            header('application/json');
        }
        function detail_wisata($slug){
            $wisata = $this->wisata_model->get_detail_wisata($slug);
            if($wisata){
                echo json_encode(['status'=>'success', 'wisata'=>$wisata]);
            }else{
                echo json_encode(['status'=>'fail']);
            }
            
        }
        function get_all_wisata(){
            $wisata = $this->wisata_model->get_all_wisata();
            if($wisata){
                echo json_encode(['status'=>'success', 'wisata'=>$wisata]);
            }else{
                echo json_encode(['status'=>'fail']);
            }
        }
        function get_kota(){

        }
        function get_wisata_kota($slug){
            $wisata = $this->wisata_model->get_wisata_kota($slug);
            if($wisata){
                echo json_encode(['status'=>'success', 'wisata'=>$wisata]);
            }else{
                echo json_encode(['status'=>'fail']);
            }
        }
    }