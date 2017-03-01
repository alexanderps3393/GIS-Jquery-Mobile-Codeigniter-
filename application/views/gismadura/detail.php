<script>
  var page = 'detail';
  var slug = '<?php echo $wisata->slug_wisata ?>';
</script>
<div role="main" class="ui-content" style="padding:0px;">
    <div id="detailmap">
    
    </div>

    <div id="detail-wisata" style="padding:10px;">
      <h3><?php echo $wisata->nama_wisata ?></h3>  
      <p><?php echo $wisata->deskripsi_wisata; ?></p>

      <div class="foto-wisata">
        <img style="width:100%;" src="<?php echo base_url() ?>assets/wisata/<?php echo $wisata->foto; ?>" alt="">
      </div>

      <div class="tingkat-keamanan">
        <h4>Tingkat Keamanan</h4>
      
        <?php 
          for ($i=0; $i < $wisata->tingkat_keamanan; $i++) { 
            ?>
            <img src="<?php echo base_url() ?>assets/rating.png" alt="">
            <?php
          }
        ?>
        <div>
          (
          <?php 
            switch ($wisata->tingkat_keamanan) {
              case 1:
                ?>
                Tidak Ada Aman
                <?php
                break;
              case 2:
                ?>
                Rawan
                <?php
                break;
              case 3:
                ?>
                Hati - Hati
                <?php
                break;
              case 4:
                ?>
                Aman
                <?php
                break;
              case 5:
                ?>
                Sangat Aman
                <?php
                break;
              
              default:
                # code...
                break;
            }
          ?>
          )
        </div>
      </div>
    </div>
</div>


