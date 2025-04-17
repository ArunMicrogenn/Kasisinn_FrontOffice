<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Report','Occupancy Report');
$this->pfrm->FrmHead6('Report /Occupancy Report',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");
 
?>
 

<div class="col-sm-12">
  <div class="the-box F_ram">
    <fieldset>
	<form action="" method="POST">
      	<table class="FrmTable T-6" >
        <tr>
          <td align="right" class="F_val">From Date</td>
          <td align="left"><input type="date" value="<?php if(@$_POST['frmdate']){echo @$_POST['frmdate']; }else{echo date('Y-m-d');} ?>" id="frmdate" max="<?php echo date('Y-m-d'); ?>"  min="<?php echo date('Y-m-d'); ?>" name="frmdate"   class="scs-ctrl " />
            <div class="Type" ></div></td>    
		   <td align="left"><input type="submit" name="submit"  class="btn btn-success btn-block" value="Get"></td>
           <td align="left">
            <!-- <div style="display:flex; justify-content:space-around;">
                <div><label>In House<label></div>
               <div><input type="checkbox" name="inhouse" <?php if(@$_POST['inhouse']){ echo "checked";} ?> class="btn btn-success btn-block" value="1"></div>
               
            </div> -->
            </td>
        </tr>
      	</table>
	   </form>
    </fieldset>
  </div>
  <div class="the-box D_IS" ></div>
</div>
    <div id="printing" class="col-sm-12">
		<?php

		if(@$_POST['submit'])
		{
		  ?>
		
        <table class="table table-bordered table-hover"  >  
		    <div>
				<h3 class="text-center">Occupancy Report  <?php echo date('d-m-Y', strtotime($_POST['frmdate'])); ?> <h3>
		    </div>           
		   <tbody>
		    <?php 
			 $i=1;	
             $todayroomno ='';$lastroomno = '';$chkroomno='';$vroomno=''; $dirtyroom ='';$mroom=''; $foroom='';
             $fromdate = date('Y-m-d', strtotime($_POST['frmdate']));
             if(@$_POST['inhouse']== 1){

                $qry="exec  Inhouse '".$fromdate."'";

             }
             else{
                $qry="exec  occupany__List__General '".$fromdate."'";
             }
            
			 $exec=$this->db->query($qry);
			 $advance= $exec->num_rows();
             $pax=0;$occroom=0;
			  if($advance !=0)
			  {
				echo '<tr style="background-color:#c9c6c6;" >';		 
				echo '<td style=" text-align:center;" >S.No</td>';
               
                echo '<td style="text-align: center;">Roomno</td>';
                echo '<td style="text-align: center;">Roomtype</td>';
                echo '<td style="text-align: center;">Guestname</td>';
                echo '<td style="text-align: center;">Pax</td>';	
				echo '<td  style="text-align: center;">Ndays</td>';
                echo '<td style="text-align: center;">Company</td>';
				echo '<td style="text-align: center;">Address</td>';
                echo '<td style="text-align: center;">City</td>';
                echo '<td style="text-align: center;">Pincode</td>';			
				echo '</tr>';	
			  }			
			  foreach ($exec->result_array() as $rows)
			  {
               $pax +=$rows['noadults'];
               echo '<tr>';		 
               echo '<td  style="text-align: center;">'.$i++.'</td>';
            
               echo '<td  style="text-align: left;">'.$rows['roomno'].'</td>';             
               echo '<td  style="text-align: left;">'.$rows['printingName'].'</td>';
               echo '<td  style="text-align: left;">'.$rows['customer'].'</td>';
               echo '<td  style="text-align: right;">'.$rows['noadults'].'</td>';
               echo '<td style="text-align: right;">'.$rows['indays'].'</td>';
               echo '<td  style="text-align: left;">'.$rows['company'].'</td>';
      
               echo '<td style="text-align: center;">'.$rows['homeAddress1'].'</td>';
               echo '<td style="text-align: center;">'.$rows['city'].'</td>';
               echo '<td style="text-align: left;">'.$rows['homepincode'].'</td>';				
             }
			  if($advance !=0)
			  {
                $foot = "exec occupany_footer  '".$fromdate."'";
                $fooex = $this->db->query($foot);
                foreach($fooex->result_array() as $frow){
                    $lastcheckin = $frow['lastcheckin'];
                    $todaycheckin = $frow['todaycheckin'];
                    $todaycheckout = $frow['todaycheckout'];
                    $total = $frow['total'];
                    $vaccant = $frow['vaccant'];
                    $dirty = $frow['dirty'];
                    $mblock = $frow['mblock'];
                    $foblock = $frow['foblock'];
                }
                $foot1 = "exec todaycheckinRooms  '".$fromdate."'";
                $fooex = $this->db->query($foot1);
                foreach($fooex->result_array() as $frow){
                    $todayroomno .= $frow['RoomNo'].',';
                }

                $foot2 = "exec lastcheckinRooms  '".$fromdate."'";
                $fooex = $this->db->query($foot2);
                foreach($fooex->result_array() as $frow){
                    $lastroomno .= $frow['RoomNo'].',';
                }

                $foot3 = "exec todaycheckoutRooms  '".$fromdate."'";
                $fooex = $this->db->query($foot3);
                foreach($fooex->result_array() as $frow){
                    $chkroomno .= $frow['RoomNo'].',';
                }
                
                $foot4 = "exec vaccant ";
                $fooex = $this->db->query($foot4);
                foreach($fooex->result_array() as $frow){
                    $vroomno .= $frow['RoomNo'].',';
                }

                $foot5 = "exec dirty ";
                $fooex = $this->db->query($foot5);
                foreach($fooex->result_array() as $frow){
                    $dirtyroom .= $frow['RoomNo'].',';
                }

                $foot6 = "exec mblock ";
                $fooex = $this->db->query($foot6);
                foreach($fooex->result_array() as $frow){
                    $mroom .= $frow['RoomNo'].',';
                }

                $foot7 = "exec foblock ";
                $fooex = $this->db->query($foot7);
                foreach($fooex->result_array() as $frow){
                    $foroom .= $frow['RoomNo'].',';
                }
                
                $foot8 = "exec occ__roomcount ";
                $fooex8 = $this->db->query($foot8);
                foreach($fooex8->result_array() as $frow){
                    $occroom = $frow['roomcount'];
                }

                echo '<tr>';
				echo '<td colspan="10" class="text-bold" style="text-align: right;">&nbsp;</td>';				
				echo '</tr>';
                echo '<tr>';

				                echo '<tr>';
				echo '<td colspan="3" class="text-bold" style="text-align: right;">Occupancy: </td>';
				echo '<td style="text-align: left;" colspan="7">'.$occroom.'</td>';							
				echo '</tr>';
				echo '<tr>';
				echo '<td colspan="3" class="text-bold" style="text-align: right;">Occupancy Pax: </td>';
				echo '<td style="text-align: left;" colspan="7">'.$pax.'</td>';							
				echo '</tr>';
                // echo '<tr>';
				// echo '<td colspan="3" class="text-bold" style="text-align: right;">Last Checkin: </td>';
				// echo '<td style="text-align: left;" colspan="1">'.$lastcheckin.'</td>';	
                // echo '<td style="text-align: left;" colspan="6">'.$lastroomno.'</td>';							
				// echo '</tr>';		
                // echo '<tr>';
				// echo '<td colspan="3" class="text-bold" style="text-align: right;">Today Checkin: </td>';
				// echo '<td style="text-align: left;" colspan="1">'.$todaycheckin.'</td>';	
                // echo '<td style="text-align: left;" colspan="6">'.$todayroomno.'</td>';						
				// echo '</tr>';
                // echo '<tr>';
				// echo '<td colspan="3" class="text-bold" style="text-align: right;">Today Checkout: </td>';
				// echo '<td style="text-align: left;" colspan="1">'.$todaycheckout.'</td>';		
                // echo '<td style="text-align: left;" colspan="6">'.$chkroomno.'</td>';						
				// echo '</tr>';	
                // echo '<tr>';
				// echo '<td colspan="3" class="text-bold" style="text-align: right;">Occupancy Pax: </td>';
				// echo '<td style="text-align: left;" colspan="7">'.$total.'</td>';							
				// echo '</tr>';
                echo '<tr>';
				echo '<td colspan="3" class="text-bold" style="text-align: right;">Vaccant Rooms: </td>';
				echo '<td style="text-align: left;" colspan="1">'.$vaccant.'</td>';	
                echo '<td style="text-align: left;" colspan="6">'.$vroomno.'</td>';								
				echo '</tr>';	
                echo '<tr>';
				echo '<td colspan="3" class="text-bold" style="text-align: right;">Dirty Rooms: </td>';
				echo '<td style="text-align: left;" colspan="1">'.$dirty.'</td>';
                echo '<td style="text-align: left;" colspan="6">'.$dirtyroom.'</td>';								
				echo '</tr>';
                echo '<tr>';
				echo '<td colspan="3" class="text-bold" style="text-align: right;">Maintainance Block: </td>';
				echo '<td style="text-align: left;" colspan="1">'.$mblock.'</td>';
                echo '<td style="text-align: left;" colspan="6">'.$mroom.'</td>';								
				echo '</tr>';
                echo '<tr>';
				echo '<td colspan="3" class="text-bold" style="text-align: right;">FrontOffice Block: </td>';
				echo '<td style="text-align: left;" colspan="1">'.$foblock.'</td>';		
                echo '<td style="text-align: left;" colspan="6">'.$foroom.'</td>';						
				echo '</tr>';
            			  }	 
		   ?>		   
		   </tbody>
		 </table>
		
		
		  <?php
		} ?>
	</div>
	<?php 
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
?>
 
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/jquery.table2excel.min.js"></script>
 <SCRIPT language="javascript">
		function printDiv(a) {
			 var printContents = document.getElementById(a).innerHTML;
			 var originalContents = document.body.innerHTML;
			 document.body.innerHTML = printContents;
			 window.print();
			 document.body.innerHTML = originalContents;
		}
       function fromdatevalidate()
	   {
		 var a= document.getElementsByName("dateFrom")[0].value;
		 alert(a);
	   }
		function addRow(tableID) {

			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var colCount = table.rows[0].cells.length;

			for(var i=0; i<colCount; i++) {

				var newcell	= row.insertCell(i);

				newcell.innerHTML = table.rows[0].cells[i].innerHTML;
				//alert(newcell.childNodes);
				switch(newcell.childNodes[0].type) {
					case "text":
							newcell.childNodes[0].value = "";
							break;
					case "checkbox":
							newcell.childNodes[0].checked = false;
							break;
					case "select-one":
							newcell.childNodes[0].selectedIndex = 0;
							break;
				}
			}
		}

		function deleteRow(tableID) {
			try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for(var i=0; i<rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if(null != chkbox && true == chkbox.checked) {
					if(rowCount <= 1) {
						alert("Cannot delete all the rows.");
						break;
					}
					table.deleteRow(i);
					rowCount--;
					i--;
				}


			}
			}catch(e) {
				alert(e);
			}
		}


		$(function() {
        $("#exporttable").click(function(e)
		{

          var table = $("#printing");
          if(table && table.length)
		  {
            $(table).table2excel({
              exclude: ".noExl",
              name: "Excel Document Name",
              filename: "Occupancy List Report" + new Date().toISOString().replace(/[\-\:\.]/g, "") + ".xls",
              fileext: ".xls",
              exclude_img: true,
              exclude_links: true,
              exclude_inputs: true,
              preserveColors: false
            });
          } 
		});
      });

        $("body").on("click", "#exportpdf", function () {
            html2canvas($('#printing')[0], {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Occupancy List Report.pdf");
                }
            });
        });

	</SCRIPT>


