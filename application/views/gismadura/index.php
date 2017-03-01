<script>
    var page = 'home';
</script>
<div role="main" class="ui-content ui-index">
    <div id="indexmap">

    </div>
    <div class="cariterdekat">
        <button id="cariterdekat" class="ui-btn ui-btn-raised clr-primary ui-mini" type="button">Cari Terdekat</button>
    </div>
    <div class="semuawisata">
        <?php 
            foreach ($wisata as $q_wisata) {
                ?>
                <a data-ajax="false" class="wisata" href="<?php echo base_url(); ?>index.php/main/detail/<?php echo $q_wisata->slug_wisata ?>">
                    <img src="<?php echo base_url(); ?>assets/wisata/<?php echo $q_wisata->foto ?>" alt="">
                    <div class="detail">
                        <h4><?php echo $q_wisata->nama_wisata ?></h4>
                        <div class="kota">
                            <?php echo ucwords($q_wisata->kota) ?>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </a>
                <?php
            }
        ?>
    </div>
</div>

