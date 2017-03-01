<?php
    class WisataModel extends CI_Model{
        function get_detail_wisata($slug){
            return $this->db->get_where('wisata', ['slug_wisata'=>$slug])->row();
        }
        function get_wisata_kota($slug){
            return $this->db->get_where('wisata', ['kota'=>$slug])->result();
        }
        function get_wisata_kategori($slug){
            return $this->db->get_where('wisata', ['kategori'=>$slug])->result();
        }
        function get_all_wisata(){
            return $this->db->get('wisata')->result();
        }
    }