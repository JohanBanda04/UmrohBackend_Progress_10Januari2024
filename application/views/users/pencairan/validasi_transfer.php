<?php
$link1 = strtolower($this->uri->segment(1));
$link2 = strtolower($this->uri->segment(2));
$link3 = strtolower($this->uri->segment(3));
$link4 = strtolower($this->uri->segment(4));
$link5 = strtolower($this->uri->segment(5));

$user = $user->row();
$level = $user->level;

$foto_profile = "img/user/user-default.jpg";
if ($level == 'obh') {
    $d_k = $this->db->get_where('tbl_data_obh', array('id_user' => $user->id_user))->row();
    $foto_k = $d_k->foto_obh;
    if ($foto_k != '') {
        if (file_exists("$foto_k")) {
            $foto_profile = $foto_k;
        }
    }
}
?>

<!-- Main content -->
<div class="content-wrapper">

    <!-- Content area -->
    <div class="content">

        <!-- Dashboard content -->
        <div class="row">
            <!--            <div class="col-md-3"></div>-->
            <!--            <div class="col-md-6">-->
            <div class="col-md-12">


                <div class="panel panel-inverse">
                    <div class="panel-heading">

                        <div class="panel-heading-btn">
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default"
                               data-click="panel-expand"><i class="fa fa-expand"></i></a>
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success"
                               data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning"
                               data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger"
                               data-click="panel-remove"><i class="fa fa-times"></i></a>
                        </div>
                        <h4 class="panel-title"><?php echo $judul_web; ?></h4>
                    </div>
                    <div class="panel-body">
                        <fieldset class="content-group">
                            <legend class="text-bold"><i class="icon-user"></i>
                                <center>
                                    <b>Withdrawal</b> <br>
                                    <small class="lh-1" style="color: red; font-size: 10px">
                                        <i>*Pencairan Paling Lambat Jam 12 Siang di Hari Kerja</i>
                                    </small>
                                </center>

                            </legend>


                            <?php
                            echo $this->session->flashdata('msg');
                            ?>
                            <!--ini adalah kunci kesuksesan untuk action pada form-->
                            <form class="form-horizontal" action="<?php echo $link1; ?>/<?php echo $link2; ?>/withdrawal/<?php echo hashids_encrypt($data_bonus->id_pencairan); ?>"
                                  data-parsley-validate="true" method="post"
                                  enctype="multipart/form-data">

                                <?php
                                $penerima_id = $this->session->userdata('id_user');
                                $pengajuan_pencairan = 'pengajuan_pencairan';

                                $nominal_pengajuan_pencairan = $this->db->query("SELECT SUM(jumlah_nominal) as jumlah_nominal FROM 
                                tbl_pencairan where status='$pengajuan_pencairan' 
                                and penerima_id='$penerima_id'")->row()->jumlah_nominal;
                                $saldo_bonus = $bonus_umroh_valid-$nominal_pengajuan_pencairan;

                                ?>
                                <center>

                                    <span style="font-size: 20px;">Jumlah Saldo Yang Akan Dicairkan</span>
                                </center>
                                <center>

                                    <span  style="font-size: 20px; font-weight: bold; color: green">Rp. <?= number_format($data_bonus->jumlah_nominal)?></span>
                                </center>



                                <br>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Nama Admin</label>
                                        <div class="col-lg-9">

                                            <input style="color: black; font-weight: bold" type="hidden"
                                                   name="id_pencairan"
                                                   id="id_pencairan"
                                                   class="form-control"
                                                   value="<?php echo hashids_encrypt($data_bonus->id_pencairan) ?>"
                                                   placeholder="ID Admin" required>
                                            <input style="color: black; font-weight: bold" type="hidden"
                                                   name="id_admin"
                                                   id="id_admin"
                                                   class="form-control"
                                                   value="<?php echo $this->session->userdata('id_user') ?>"
                                                   placeholder="ID Admin" required>
                                            <input disabled style="color: black; font-weight: bold" type="text"
                                                   name="nama_admin"
                                                   id="nama_admin"
                                                   class="form-control"
                                                   value="<?php echo strtoupper($this->session->userdata('nama_lengkap')); ?>"
                                                   placeholder="Nama Admin" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">No. Rekening Pengirim</label>
                                        <div class="col-lg-9">

                                            <input  style="color: black; font-weight: bold" type="text"
                                                   name="norek_admin_pengirim"
                                                   id="norek_admin_pengirim"
                                                   class="form-control"
                                                   value=""
                                                   placeholder="No. Rekening Pengirim" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Nama Bank Pengirim</label>
                                        <div class="col-lg-9">
                                            <select class="form-control default-select2"
                                                    name="id_bank_pengirim" id="id_bank_pengirim" required>
                                                <option style="text-align: center"
                                                        value="">
                                                    -Pilih Bank-
                                                </option>


                                                <?php
                                                $data_banks = $this->db->get("tbl_bank");
                                                // echo "<pre>"; print_r($data_zonaAll);
                                                foreach ($data_banks->result() as $index => $bank) {
                                                    ?>
                                                    <option <?php if($query->id_bank_penerima==$bank->id_bank) { ?>selected<?php } ?> value="<?= $bank->id_bank ?>"><?= $bank->nama_bank; ?></option>
                                                    <?php
                                                }
                                                ?>

                                            </select>

                                        </div>
                                    </div>





                                </div>

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label class="control-label col-lg-3">No. Rekening Tujuan </label>
                                        <div class="col-lg-9">
                                            <input style="font-weight: bold"
                                                   type="number" name="norek_tujuan_penerima" id="norek_tujuan_penerima"
                                                   class="form-control"
                                                   value="<?= $data_bonus->norek_penerima; ?>"
                                                   placeholder="No. Rekening Penerima"
                                                   maxlength="100">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Nama Bank Penerima</label>
                                        <div  class="col-lg-9">
                                            <select class="form-control default-select2"
                                                    name="id_bank_penerima" id="id_bank_penerima" required>
                                                <option style="text-align: center"
                                                        value="">
                                                    -Pilih Bank-
                                                </option>


                                                <?php
                                                $data_banks = $this->db->get("tbl_bank");
                                                // echo "<pre>"; print_r($data_zonaAll);
                                                foreach ($data_banks->result() as $index => $bank) {
                                                    ?>
                                                    <option <?php if($data_bonus->id_bank_penerima==$bank->id_bank) { ?>selected  <?php } ?> value="<?= $bank->id_bank ?>"><?= $bank->nama_bank; ?></option>
                                                    <?php
                                                }
                                                ?>

                                            </select>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Lampiran Bukti Transfer</label>
                                        <div class="col-lg-9">
                                            <input id="lamp_bukti_tf_wd"
                                                   type="file"
                                                   onchange="checkSelectedFile(id)"
                                                   name="lamp_bukti_tf_wd" class="form-control" required>
                                            <small class="lh-1" style="color: red"><i>.jpeg .jpg .png (*wajib)</i></small>
                                        </div>
                                    </div>



                                    <div class="form-group pull-right" style="margin-right: 290px">
                                        <div class="g-recaptcha" data-sitekey="6LdJ0pAmAAAAAI7vU7S3seu7_Wt9AnJCINpeceU_"
                                             style="width: 40px">

                                        </div>
                                    </div>

                                </div>


                                <hr>


                        </fieldset>

                        <input style="float:right;" type="submit" id="btn_pencairan" name="btn_pencairan"
                               class="btn btn-primary" value="Update"/>
                        <a style="background-color: #a89292;float: right; margin-right:10px "
                           href="<?php echo $link1; ?>/<?php echo $link2; ?>/aksi/id/<?= hashids_encrypt($this->session->userdata('id_user')); ?>"
                           class="btn btn-default"><<
                            Kembali
                        </a>
                        </form>
                    </div>
                </div>
            </div>


        </div>
        <!-- /dashboard content -->

        <script>
            $(document).ready(function () {

                // document.getElementById("jml_pencairan").value = "";
                // document.getElementById("norek_tujuan").value = "";



            });

            function checkSelectedFile(id) {


                fileName = document.querySelector('#' + id).value;
                extension = fileName.split('.').pop();


                if( document.getElementById(id).files.length == 0 ){
                    console.log("no files selected");
                    $('#'+id).prop('required', true);
                    // $('.text-field').prop('required',true);
                } else {
                    console.log("there are files selected");
                    // $('#'+id).prop('required',false);

                    if(extension != 'jpeg' && extension != 'jpg' && extension!='png'){
                        alert("ekstensi file harus JPEG, JPG, atau PNG");

                        document.querySelector('#' + id).value = '';
                        $('#'+id).prop('required',true);
                    } else {
                        const oFile = document.getElementById(id).files[0];
                        console.log(id);
                        console.log(oFile);
                        $('#'+id).prop('required',false);

                        if (oFile.size > (5*(1024*1024))) // 500Kb for bytes.
                        {
                            alert("size file terlalu besar");

                            document.querySelector('#' + id).value = '';
                            $('#'+id).prop('required',true);
                        }
                    }



                }

            }

            function myFunction() {
                let jml_pencairan = document.getElementById("jml_pencairan").value;
                let total_saldo = document.getElementById("total_saldo").value;

                let total_saldo_awal = total_saldo;
                let total_saldo_awal_formatted = total_saldo_awal.toLocaleString("en-US");

                var total_saldo_convert = total_saldo.replaceAll(",", "");
                var sisa_saldo = total_saldo_convert - jml_pencairan;

                var sisa_saldo_formatted = sisa_saldo.toLocaleString('en-US');
                console.log(sisa_saldo_formatted); // 7,323,452,568.283

                if (jml_pencairan == "") {

                    document.getElementById("total_saldo").value = total_saldo_awal_formatted

                } else if (jml_pencairan != "") {
                    document.getElementById("total_saldo").value = sisa_saldo_formatted
                }


                var input = document.getElementById('jml_pencairan');

                input.onkeydown = function () {
                    var key = event.keyCode || event.charCode;

                    if (key == 8 || key == 46)
                        console.log("hapus");
                    //return false;
                };


                // document.getElementById("total_saldo").value = sisa_saldo_formatted;


            }
        </script>
        <script src="assets/js/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="assets/panel/plugin/datetimepicker/jquery.datetimepicker.css"/>
        <script src="assets/panel/plugin/datetimepicker/jquery.datetimepicker.js"></script>
        <script>
            $('#tgl_1').datetimepicker({
                lang: 'en',
                timepicker: false,
                format: 'd-m-Y'
            });
        </script>

        <script type="text/javascript">
            $(document).on('click', '#btn_pencairan', function () {
                var response = grecaptcha.getResponse();
                if (response.length == 0) {
                    alert("Please verify you are not a robot.");
                    return false;
                }
            });
        </script>


        <script type="text/javascript">
            $(document).ready(function () {
                console.log("ready boss");

                // $("#jml_pencairan").change(function(){
                //     console.log("testy");
                // });


            });
        </script>
