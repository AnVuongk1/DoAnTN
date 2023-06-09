<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Quản lí
      <small>Công ty</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
      <li class="active">Công ty</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
      <div class="col-md-12 col-xs-12">

        <?php if ($this->session->flashdata('success')) : ?>
          <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?php echo $this->session->flashdata('success'); ?>
          </div>
        <?php elseif ($this->session->flashdata('error')) : ?>
          <div class="alert alert-error alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?php echo $this->session->flashdata('error'); ?>
          </div>
        <?php endif; ?>

        <div class="box">
          <div class="box-header">
            <h3 class="box-title">Quản lí thông tin công ty</h3>
          </div>
          <form role="form" action="<?php base_url('company/update') ?>" method="post">
            <div class="box-body">

              <?php echo validation_errors(); ?>

              <div class="form-group">
                <label for="company_name">Tên công ty</label>
                <input type="text" class="form-control" id="company_name" name="company_name" placeholder="Nhập tên công ty" value="<?php echo $company_data['company_name'] ?>" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="service_charge_value">Thuế kho (%)</label>
                <input type="text" class="form-control" id="service_charge_value" name="service_charge_value" placeholder="Nhập thuế kho" value="<?php echo $company_data['service_charge_value'] ?>" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="vat_charge_value">Thuế VAT (%)</label>
                <input type="text" class="form-control" id="vat_charge_value" name="vat_charge_value" placeholder="Nhập thuế VAT %" value="<?php echo $company_data['vat_charge_value'] ?>" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="address">Địa chỉ</label>
                <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ" value="<?php echo $company_data['address'] ?>" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="phone">Số điện thoại</label>
                <input type="text" class="form-control" id="phone" name="phone" placeholder="Nhập số điện thoại" value="<?php echo $company_data['phone'] ?>" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="country">Quốc gia</label>
                <input type="text" class="form-control" id="country" name="country" placeholder="Nhập quốc gia" value="<?php echo $company_data['country'] ?>" autocomplete="off">
              </div>
              <div class="form-group">
                <label for="permission">Thông điệp</label>
                <textarea class="form-control" id="message" name="message">
                     <?php echo 'Quản lí kho hàng Thái An' ?>
                  </textarea>
              </div>
              <div class="form-group">
                <label for="currency">Đơn vị tiền tệ</label>
                <?php ?>
                <select class="form-control" id="currency" name="currency">
                  <option value="">~~Chọn~~</option>

                  <?php foreach ($currency_symbols as $k => $v) : ?>
                    <option value="<?php echo trim($k); ?>" <?php if ($company_data['currency'] == $k) {
                                                              echo "selected";
                                                            } ?>><?php echo $k ?></option>
                  <?php endforeach ?>
                </select>
              </div>

            </div>
            <!-- /.box-body -->

            <div class="box-footer">
              <button type="submit" class="btn btn-primary">Lưu thay đổi</button>
            </div>
          </form>
        </div>
        <!-- /.box -->
      </div>
      <!-- col-md-12 -->
    </div>
    <!-- /.row -->


  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript">
  $(document).ready(function() {
    $("#companyNav").addClass('active');
    $("#message").wysihtml5();
  });
</script>