<?php
defined('BASEPATH') or exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu, $this->session);
$this->pweb->menu($this->Menu, $this->session);
$this->pweb->Cheader('Setting', 'Fo Settings');
$this->pfrm->FrmHead3('Setting / Fo Settings', $F_Class . "/" . $F_Ctrl, $F_Class . "/" . $F_Ctrl . "_View");

?>

<style>
  .not-active {
    display: none;
  }

  .is-active {
    display: block;
  }

  .tab-bar {
    /* background-color:#0057b7; */
    padding: 6px;
  }

  .tab-bar>a {
    color: black;
    margin-right: 10px;
  }

  .tab-active {
    background-color: #0057b7;
    color: #fff;
  }

  #tab-head {
    background-color: #A9A9A9;
  }

  .textColor {
    color: white;
  }
</style>

<?php
$sql = "select * from  ExtraOption";
$exe = $this->db->query($sql);
foreach ($exe->result_array() as $row) {
  $walkout = $row['walkoutbillshowincashierreport'];
  $walkoutprint = $row['walkoutbillprint'];
  $walkoutReprint = $row['comreprintbill'];
  $registrationprint = $row['registrationcard'];
  $registrationreprint = $row['registrationcardreprint'];
  $spilitbill = $row['enablespilitbill'];
  $cashbookentry = $row['cashbookentryprint'];
  $whatsappBusinessSms = $row['whatsappBusinessSms'];
  $iswhatsapp = $row['iswhatsapp'];
  $md = $row['enablewhatsappsmsformd'];
  $checkin = $row['enablewhatsappsmsforcheckin'];
  $checkout = $row['enablewhatsappsmsforcheckout'];
  $res = $row['enablewhatsappsmsforres'];
  $resc = $row['enablewhatsappsmsforresc'];
}
?>
</div>

<div class="col-sm-12 " style="margin-top:5px;">
  <div class="row">
    <div class="col-sm-2">
      <div class="card text-center tab-active" id="tab1-div" style="padding:4px;">
        <a href="#tab1-panel" id="tab1-anchor" class="tab-active text-muted tab" style="padding:2px;" onclick="activeChange(1)">Whatsapp SMS</a>
      </div>
    </div>
    <div class="col-sm-2">
      <div class="card text-center"   id="tab2-div" style="padding:4px;">
        <a href="#tab2-panel" class="text-muted tab" id="tab2-anchor" style="padding:2px;" onclick="activeChange(2)">Reports</a>
      </div>
    </div>
    <div class="col-sm-2">
      <div class="card text-center"   id="tab3-div" style="padding:4px;">
        <a href="#tab3-panel" class="text-muted tab" id="tab3-anchor" style="padding:2px;" onclick="activeChange(3)">Cashier</a>
      </div>
    </div>
    <div class="col-sm-2">
      <div class="card text-center"   id="tab4-div" style="padding:4px;">
        <a href="#tab4-panel" class="text-muted tab" id="tab4-anchor" style="padding:2px;" onclick="activeChange(4)">Printing</a>
      </div>
    </div>
  </div>
</div>
<div class="col-sm-12 card text-muted " style="margin-top:10px; padding:5px; border:none;min-height:200px">
  <div id="tab1-panel" class="is-active table-responsive" style="color:black; border:none;">
    <div class="text-muted">
      <input type="checkbox" id="whatsappBusinessSms" value="1" <?php if ($whatsappBusinessSms == 1) {
        echo "checked";
      } ?>>
      Enable / Disable Business-Whatsapp Sms
    </div>

    <div class="text-muted">
      <input type="checkbox" id="md" value="1" <?php if ($md == 1) {
        echo "checked";
      } ?>>
      Enable / Disable  Night Audit Message for MD
    </div>
    <div class="text-muted">
      <input type="checkbox" id="checkin" value="1" <?php if ($checkin == 1) {
        echo "checked";
      } ?>>
      Enable / Disable Checkin Message
    </div>
    <div class="text-muted">
      <input type="checkbox" id="checkout" value="1" <?php if ($checkout == 1) {
        echo "checked";
      } ?>>
      Enable / Disable Checkout Message
    </div>
    <div class="text-muted">
      <input type="checkbox" id="res" value="1" <?php if ($res == 1) {
        echo "checked";
      } ?>>
      Enable / Disable Reservation Message
    </div>
    <div class="text-muted">
      <input type="checkbox" id="resc" value="1" <?php if ($resc == 1) {
        echo "checked";
      } ?>>
      Enable / Disable Reservation-Cancel Message
    </div>

    <div class="text-muted">
      <input type="checkbox" id="iswhatsapp" value="1" <?php if ($iswhatsapp == 1) {
        echo "checked";
      } ?>>
      Enable / Disable Whatsapp Sms
    </div>
  </div>
  <div id="tab2-panel" class="not-active table-responsive" style="color:black;border:none">
    <div class="text-muted">
      <input type="checkbox" id="cashbookentry" value="1" <?php if ($cashbookentry == 1) {
        echo "checked";
      } ?>>
      Enable / Disable - Payment/collection Receipt
    </div>
  </div>

  <div id="tab3-panel" class="not-active table-responsive" style="color:black;border:none">
    <div class="text-muted">
      <input type="checkbox" id="walkoutbill" value="1" <?php if ($walkout == 1) {
        echo "checked";
      } ?>> Enable / Disable
      Walkout Bill
      In
      Cashier Report
    </div>
  </div>

  <div id="tab4-panel" class="not-active table-responsive" style="color:black;border:none">
    
    <div class="text-muted">
      <input type="checkbox" id="walkoutbillprin" value="1" <?php if ($walkoutprint == 1) {
        echo "checked";
      } ?>>
      Enable / Disable Complementary Checkout Bill Print
    </div>

    <div class="text-muted">
      <input type="checkbox" id="walkoutReprint" value="1" <?php if ($walkoutReprint == 1) {
        echo "checked";
      } ?>>
      Enable / Disable Complementary Checkout Bill Reprint
    </div>
    <div class="text-muted">
      <input type="checkbox" id="registrationprint" value="1" <?php if ($registrationprint == 1) {
        echo "checked";
      } ?>>
      Enable / Disable RegistrationCard Print
    </div>

    <div class="text-muted">
      <input type="checkbox" id="registrationreprint" value="1" <?php if ($registrationreprint == 1) {
        echo "checked";
      } ?>>
      Enable / Disable RegistrationCard Bill Reprint
    </div>
    <div class="text-muted">
      <input type="checkbox" id="spilitbill" value="1" <?php if ($spilitbill == 1) {
        echo "checked";
      } ?>> Enable /
      Disable Spilit Bill
    </div>
  </div>

</div>



<?php
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
?>

<script>
  let tab =document.querySelectorAll('.tab');
  tabCount = tab.length;

  const activeChange = (a) =>{

    for(i = 1; i<= tabCount; i++){
      if(a != i){
      document.getElementById('tab'+(i)+'-div').removeAttribute('class', 'tab-active')
      document.getElementById('tab'+(i)+'-anchor').removeAttribute('class', 'tab-active')
      document.getElementById('tab'+(i)+'-div').setAttribute('class', 'card text-center ');
      document.getElementById('tab'+(i)+'-anchor').setAttribute('class', 'text-muted tab')
      document.getElementById('tab'+(i)+'-panel').removeAttribute('class','is-active table-responsive');
      document.getElementById('tab'+(i)+'-panel').setAttribute('class','not-active table-responsive');
      }
    }
    document.getElementById('tab'+(a)+'-div').setAttribute('class', 'card text-center tab-active');
    document.getElementById('tab'+(a)+'-anchor').setAttribute('class', 'text-muted tab tab-active')
    document.getElementById('tab'+a+'-panel').removeAttribute('class','not-active table-responsive');
    document.getElementById('tab'+a+'-panel').setAttribute('class','is-active table-responsive');
  }

</script>
<script>

  let a = document.getElementById("walkoutbill")
  let b = document.getElementById("walkoutbillprin")
  let c = document.getElementById("walkoutReprint")
  let d = document.getElementById("registrationprint")
  let e = document.getElementById("registrationreprint")
  let f = document.getElementById("spilitbill")
  let g = document.getElementById("cashbookentry")
  let i = document.getElementById("whatsappBusinessSms")
  let j = document.getElementById("iswhatsapp")
  let k = document.getElementById("md")
  let l = document.getElementById("checkin")
  let m = document.getElementById("checkout")
  let n = document.getElementById("res")
  let o = document.getElementById("resc")


  a.addEventListener("click", () => {
    if (a.checked == true) {
      // alert("yes")
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOption_save",
        success: function (html) { }
      });
    } else {
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionE_save",
        success: function (html) { }
      });
    }
  })

  b.addEventListener("click", () => {

    if (b.checked == true) {
      // alert("yes")
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionP_save",
        success: function (html) { }
      });
    } else {
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionPE_save",
        success: function (html) { }
      });
    }
  })


  c.addEventListener("click", () => {

    if (c.checked == true) {
      // alert("yes")
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionReprint_save",
        success: function (html) { }
      });
    } else {
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionReprintE_save",
        success: function (html) { }
      });
    }
  })

  d.addEventListener("click", () => {

    if (d.checked == true) {
      // alert("yes")
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptioncardPrint_save",
        success: function (html) { }
      });
    } else {
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptioncardPrintE_save",
        success: function (html) { }
      });
    }
  })


  e.addEventListener("click", () => {

    if (e.checked == true) {
      // alert("yes")
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptioncardRePrint_save",
        success: function (html) { }
      });
    } else {
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptioncardRePrintE_save",
        success: function (html) { }
      });
    }
  })


  f.addEventListener("click", () => {

    if (f.checked == true) {

      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionSpilitBill_save",
        success: function (html) { }
      });
    } else {
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionSpilitBillE_save",
        success: function (html) { }
      });
    }
  })


  g.addEventListener("click", () => {

    if (g.checked == true) {

      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptioncashbookentry_save",
        success: function (html) { }
      });
    } else {
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptioncashbookentryE_save",
        success: function (html) { }
      });
    }
  })
  i.addEventListener("click", () => {
	  


    if (i.checked == true) {

      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionWBSms_save",
        success: function (html) { }
      });
    } else {
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionWBSmsE_save",
        success: function (html) { }
      });
    }
  })

  j.addEventListener("click", () => {

    if (j.checked == true) {

      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionWSms_save",
        success: function (html) { }
      });
    } else {
      $.ajax({
        type: "POST",
        url: "<?php echo scs_index; ?>Setting/ExtraOptionWSmsE_save",
        success: function (html) { }
      });
    }
  })


k.addEventListener("click", () => {

if (k.checked == true) {

  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionmd_save",
    success: function (html) { }
  });
} else {
  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionmdE_save",
    success: function (html) { }
  });
}
})


l.addEventListener("click", () => {

if (l.checked == true) {

  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionCheckin_save",
    success: function (html) { }
  });
} else {
  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionCheckinE_save",
    success: function (html) { }
  });
}

})

m.addEventListener("click", () => {

if (m.checked == true) {

  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionCheckout_save",
    success: function (html) { }
  });
} else {
  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionCheckoutE_save",
    success: function (html) { }
  });
}

})




n.addEventListener("click", () => {

if (n.checked == true) {

  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionres_save",
    success: function (html) { }
  });
} else {
  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionresE_save",
    success: function (html) { }
  });
}

})


o.addEventListener("click", () => {

if (o.checked == true) {

  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionresc_save",
    success: function (html) { }
  });
} else {
  $.ajax({
    type: "POST",
    url: "<?php echo scs_index; ?>Setting/ExtraOptionrescE_save",
    success: function (html) { }
  });
}

})





</script>