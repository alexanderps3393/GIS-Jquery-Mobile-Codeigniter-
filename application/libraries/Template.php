<?php
	class Template{
		protected $_ci;
		function __construct(){
			$this->_ci =&get_instance();
		}

		function display($template, $data=null){
			$data['_header'] = $this->_ci->load->view('/gismadura/header', $data, true);
			$data['_content'] = $this->_ci->load->view($template, $data, true);
			$data['_footer'] = $this->_ci->load->view('/gismadura/footer', $data, true);
			$data['_javascript'] = $this->_ci->load->view('/gismadura/javascript', $data, true);
			$this->_ci->load->view('/gismadura/template.php', $data);

		}
	}