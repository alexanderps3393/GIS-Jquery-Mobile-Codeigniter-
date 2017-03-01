<div class="ui-content">
    <div class="list-kota">

        <div class="nd2-card">
                <?php 
                    foreach($wisata as $q_wisata){
                        ?>
                        <div class="card-media">
                            <img src="<?php echo base_url(); ?>assets/wisata/<?php echo $q_wisata->foto ?>">

                            <div class='card-media-overlay with-background'>

                                <div class="card-title has-supporting-text">
                                    <h3 class="card-primary-title"><?php echo $q_wisata->nama_wisata ?></h3>
                                    <h5 class="card-subtitle"><?php echo ucwords($q_wisata->kategori) ?></h5>
                                     <div class="kemananan">
                                        <?php
                                        for ($i=0; $i < $q_wisata->tingkat_keamanan; $i++) { 
                                            ?>
                                            <img style="width:20px; float:left" src="<?php echo base_url() ?>assets/rating.png" alt="">
                                            <?php
                                        }
                                        ?>
                                    </div>
                                </div>

                                <div class="card-action">
                                    <div class="row between-xs">
                                        <div class="col-xs-12">
                                            <div class="box">
                                                <a data-ajax="false" href="<?php echo base_url(); ?>index.php/main/detail/<?php echo $q_wisata->slug_wisata ?>" class="ui-btn ui-btn-inline">Detail</a>
                                                <a href="#" class="ui-btn ui-btn-inline">Cari Rute</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <?php
                    }
                ?>
				</div>

    </div>
</div>