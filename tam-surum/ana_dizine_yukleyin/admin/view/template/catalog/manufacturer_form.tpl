<?php echo $header; ?><?php echo $menu; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-manufacturer" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-check-circle"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><i class="fa fa-pencil"></i> <?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-manufacturer" class="form-horizontal">
      <div class="form-group required">
        <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
        <div class="col-sm-10">
          <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
          <?php if ($error_name) { ?>
          <div class="text-danger"><?php echo $error_name; ?></div>
          <?php } ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label"><?php echo $entry_store; ?></label>
        <div class="col-sm-10">
          <div class="well well-sm" style="height: 150px; overflow: auto;">
            <div class="checkbox">
              <label>
                <?php if (in_array(0, $manufacturer_store)) { ?>
                <input type="checkbox" name="manufacturer_store[]" value="0" checked="checked" />
                <?php echo $text_default; ?>
                <?php } else { ?>
                <input type="checkbox" name="manufacturer_store[]" value="0" />
                <?php echo $text_default; ?>
                <?php } ?>
              </label>
            </div>
            <?php foreach ($stores as $store) { ?>
            <div class="checkbox">
              <label>
                <?php if (in_array($store['store_id'], $manufacturer_store)) { ?>
                <input type="checkbox" name="manufacturer_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
                <?php echo $store['name']; ?>
                <?php } else { ?>
                <input type="checkbox" name="manufacturer_store[]" value="<?php echo $store['store_id']; ?>" />
                <?php echo $store['name']; ?>
                <?php } ?>
              </label>
            </div>
            <?php } ?>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-keyword"><?php echo $entry_keyword; ?></label>
        <div class="col-sm-10">
          <input type="text" name="keyword" value="<?php echo $keyword; ?>" placeholder="<?php echo $entry_keyword; ?>" id="input-keyword" class="form-control" />
          <span class="help-block"><?php echo $help_keyword; ?></span></div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
        <div class="col-sm-10">
          <?php if ($thumb) { ?>
          <a href="" id="thumb-image" class="img-thumbnail img-edit"><img src="<?php echo $thumb; ?>" alt="" title="" /></a>
          <?php } else { ?>
          <a href="" id="thumb-image" class="img-thumbnail img-edit"><i class="fa fa-camera fa-5x"></i></a>
          <?php } ?>
          <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
        <div class="col-sm-10">
          <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
        </div>
      </div>
    </form>
  </div>
</div>
<?php echo $footer; ?>