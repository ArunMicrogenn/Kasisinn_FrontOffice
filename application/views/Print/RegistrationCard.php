<?php
defined('BASEPATH') or exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu, $this->session);
$this->pweb->menu($this->Menu, $this->session);
$this->pweb->Cheader('Print', 'Registration Card');
$this->pfrm->FrmHead4('Print / Registration Card', $F_Class . "/" . $F_Ctrl, $F_Class . "/" . $F_Ctrl . "_View");


$Res = $this->Myclass->Hotel_Details();
foreach ($Res as $row) {
	$Company = $row['Company'];
	$Address = $row['Address'];
	$City = $row['City'];
	$Pin = $row['PinCode'];
	$State = $row['State'];
	$Phone = $row['Phone'];
	if ($row['Email'] == '') {
		$Email = '';
	} else {
		$Email = 'Email:' . $row['Email'];
	}
	 $regcardheading = $row['regcardheading'];
	$regcardterms = $row['regcardterms'];
	$rowcount = 1;
}

?>

<div class="col-sm-12">
	<div class="the-box F_ram">
		<fieldset>
			<div id="printing" style="margin-bottom:10px;">
				<table class="mytable" style="margin-top:20px; table-layout:fixed; width=100%;">
					<!-- <col width=15 />
					<col width=35 />
					<col width=25 />
					<col width=25 /> -->
					<tr id="dataTable1">
						<td style="width:15%" ;>
							<img src="../../upload/logo.png" alt="Logo" style="width:100%;">
						</td>
						<td colspan="3">
							<div style="text-align:center;padding-right:120px;">
								<h3>
									<?php echo $Company; ?>
								</h3>
								<p>
									<?php echo $Address; ?>
								</p>
								<p>
									<?php echo $City . '-' . $Pin . ', ' . $State . '.'; ?>
								</p>
								<p>
									<?php echo $Phone . ' ' . $Email; ?>
								</p>
							</div>
						</td>
					</tr>
					<?php $sql = " exec registration__card '" . $_REQUEST['roomgrcid'] . "'";
					$result = $this->db->query($sql);
					foreach ($result->result() as $row) {
						$guestname = $row->Guestname;
						$grcno = $row->grcno;
						$companycus = $row->company;
						$addresscus = $row->HomeAddress1;
						$citycus = $row->City;
						$statecus = $row->State;
						$mobilecus = $row->Mobile;
						$emailcus = $row->Email_ID;
						$roomno = $row->Roomno;
						$RoomType = $row->Roomtype;
						$arrival = $row->arrival;
						$pax = $row->Noofpersons;
						$roomrent = $row->roomrent;
						$photopath = $row->photopath;
						$advance = $row->advance;
						$proofno = $row->idproofno;
						$prooftype = $row->idname;
						$dep = $row->depature;

						if ($photopath != '') {
							$directory = $photopath . "/" . $mobilecus . "_";
						} else {
							$directory = '../../assets/img/cards/noimage.png';
						}

					} ?>
					<tr id="dataTable1">
						<td colspan="4" style="text-align:center">
							<h4>REGISTRATION CARD </h4>
						</td>
					</tr>
					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;text-align:left;width:15%;">
							<p> <b>&nbsp;&nbsp;GRC No</b></P>
						</td>
						<td style="border:0px;width:35%;">
							<p><b>: </b>
								<?php echo $grcno; ?>
							</P>
						</td>
						<td style="border:0px;width:25%;">
							<p><b>Arrival Date&Time</b>
						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">
							<p><b>:</b>
								<?php echo $arrival; ?>
							</P>
						</td>
					</tr>
					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;text-align:leftwidth:15%;">
							<p> <b>&nbsp;&nbsp;Name</b></P>
						</td>
						<td style="border:0px;width:35%;">
							<p>
							<p><b>: </b>
								<?php echo $guestname; ?>
							</P>
						</td>
						<td style="border:0px;width:25%;">
							<p><b>Depature Date&Time </b></P>
						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">
							<p><b>:</b>
								<?php echo $dep; ?>
							</P>
						</td>

					</tr>
					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;width:15%;">
							<p> <b>&nbsp;&nbsp;Company </b></P>
						</td>
						<td style="border:0px;width:35%;">
							<p> <b>:</b>
								<?php echo $companycus ?>
							</P>
						</td>
						<td style="border:0px;width:25%;">
							<p> <b>No of Pax </b> </P>
						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">
							<p> <b>:</b>
								<?php echo $pax ?>
							</P>
						</td>

					</tr>
					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;width:15%;">
							<p> <b>&nbsp;&nbsp;Address </P>
						</td>
						<td style="border:0px;width:35%;">
							<p> <b>:</b>
								<?php echo $addresscus; ?>
							</P>
						</td>
						<td style="border:0px;width:25%;">
							<p> <b>Room Type </b></P>
						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">
							<p> <b>:</b>
								<?php echo $RoomType; ?>
							</P>
						</td>


					</tr>
					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;width:15%;">
							<p> <b>&nbsp;&nbsp;City </b></P>
						</td>
						<td style="border:0px;width:35%;">
							<p> <b>:</b>
								<?php echo $citycus; ?>
							</P>
						</td>
						<td style="border:0px;width:25%;">
							<p> <b>Room No </b> </P>
						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">
							<p> <b>: </b>
								<?php echo $roomno; ?>
							</P>
						</td>

					</tr>
					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;width:15%;">
							<p> <b>&nbsp;&nbsp;State</b></P>
						</td>
						<td style="border:0px;width:35%;">
							<p> <b>:</b>
								<?php echo $statecus; ?>
							</P>
						</td>
						<td style="border:0px;width:25%;">
							<p> <b>Room Tariff</b> </P>
						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">
							<p> <b>:</b>
								<?php echo number_format($roomrent, 2); ?> (Tax Extra, If applicable)
							</P>
						</td>



					</tr>

					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;width:15%;">
							<p> <b>&nbsp;&nbsp;Mobile No </b></P>
						</td>
						<td style="border:0px;width:35%;">
							<p> <b>:</b>
								<?php echo $mobilecus; ?>
							</P>
						</td>
						<td style="border:0px;width:25%;">
							<p> <b>Advance</b></P>
						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">
							<p> <b>:</b>
								<?php echo number_format($advance, 2); ?>
							</P>
						</td>

					</tr>

					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;width:15%;">
							<p> <b>&nbsp;&nbsp;Email </b></P>
						</td>
						<td style="border:0px;width:35%;">
							<p> <b>:</b>
								<?php echo $emailcus; ?>
							</P>
						</td>
						<td style="border:0px;width:25%;">
							<p> <b>ID Proof </b></P>
						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">
							<p><b>: </b>
								<?php echo $prooftype; ?>
							</p>
						</td>



					</tr>
					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;width:15%;">
							<p> <b>&nbsp;&nbsp;Room Type </b></P>
						</td>
						<td style="border:0px;width:35%;">
							<p> <b>:</b>
								<?php echo $RoomType; ?>
							</P>
						</td>
						<td style="border:0px;width:25%;">
							<p> <b>ID Proof No</b></P>
						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">
							<p>
								<b>
									:
								</b>
								<?php echo $proofno; ?>
							</P>
						</td>

					</tr>

					<tr style="border:0px;">
						<td style="border:0px;border-left:solid #CDCDCD  1px;width:15%;"></td>
						<td style="border:0px;width:35%;"></td>
						<td style="border:0px;width:25%;">
							<div style="display:flex;gap:20px;">

								<?php
								if ($photopath != '') {
									$j = 0;
									foreach (glob($directory . "*.{jpg,png,gif,jpeg}", GLOB_BRACE) as $file) {
										if ($j <= 1) {
											?>
											<img class="d-block w-50"
												style="margin:auto;width:160px;height:128px;border:solid #CDCDCD 1px;"
												src="../../<?php echo $file; ?>" alt="GuestProof">

											<?php
										}
										$j++;
									}
								} else {
									?>
									<img class="d-block w-50"
										style="margin:auto;width:160px;height:128px;border:solid #CDCDCD 1px;"
										src="<?php echo $directory; ?>" alt="GuestProof">
								<?php } ?>

						</td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">&nbsp;</td>
					</tr>
			</div>
			<?php
			if (@$regcardheading != '' && @$regcardterms != '') {
				?>

				<tr style="border:0px;">
					<td colspan="4"
						style="border:0px;border-right:solid #CDCDCD  1px;border-left:solid #CDCDCD  1px;text-align:left">
						<u>
							<h4 style="padding-left:20px;">
								<?php echo @$regcardheading; ?>
							</h4>
						</u>
					</td>
				</tr>

				<?php $your_array = explode("\n", @$regcardterms);
				foreach ($your_array as $arr) {
					if ($rowcount < 11) {
						$rowcount++; ?>
						<tr style="border:0px;">
							<td colspan="4"
								style="border:0px;border-right:solid #CDCDCD  1px;border-left:solid #CDCDCD  1px;text-align:left;padding-left:20px;">

								<?php echo '<li>' . $arr . '</li>'; ?>
							</td>
						</tr>
					<?php }
				}
				?>

				<!-- <tr style="border:0px;">
					<td colspan="4"
						style="border:0px;border-right:solid #CDCDCD  1px;border-left:solid #CDCDCD  1px;text-align:left;padding-left:20px;">
						<ol>
							<!-- <?php

							// $your_array = explode("\n", @$regcardterms);
							// foreach ($your_array as $arr) {	
							// 	if($rowcount < 19){
							// 		$rowcount++;
							// 	echo '<li>' . $arr . '</li>';	
							// 	}
							// }
							// 				?> -->
				<!-- // 			</ol>
			// 		</td>
			// 	</tr> -->

			<?php } ?>
			<!-- // </tr> -->

			<?php
			if (@$regcardheading != '' && @$regcardterms != '') {
				for ($i = 0; $i < (20 - $rowcount); $i++) {
					?>
					<tr>
						<td style="border:0px;border-left:solid #CDCDCD  1px;"></td>
						<td style="border:0px;"></td>
						<td style="border:0px;"></td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">&nbsp;</td>
					</tr>

				<?php }
			} else {
				for ($i = 0; $i < 20; $i++) {
					?>
					<tr>
						<td style="border:0px;border-left:solid #CDCDCD  1px;"></td>
						<td style="border:0px;"></td>
						<td style="border:0px;"></td>
						<td style="border:0px;border-right:solid #CDCDCD  1px;width:25%;">&nbsp;</td>
					</tr>

				<?php }
			}
			?>

			<tr style="border:0px;border-bottom:1px solid #CDCDCD;">
				<td style="border:0px;border-left:solid #CDCDCD  1px;">
					<p><b>&nbsp;Guest Signature</b>
				</td>
				<td style="border:0px;">
					<p><b>:</b></p>
				</td>
				<td style="border:0px;">
					<p> <b>&nbsp;&nbsp;Receptionist Signature :</b>
				</td>
				<td style="border:0px;border-right:solid #CDCDCD  1px;">&nbsp;</td>
			</tr>
			</table>

	</div>
	</fieldset>


</div>
<div class="the-box D_IS"></div>
</div>
<?php
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
?>
<SCRIPT language="javascript">
	function printDiv(a) {
		var printContents = document.getElementById(a).innerHTML;
		var originalContents = document.body.innerHTML;
		document.body.innerHTML = printContents;
		window.print();
		document.body.innerHTML = originalContents;
	}
	function fromdatevalidate() {
		var a = document.getElementsByName("dateFrom")[0].value;
		alert(a);
	}
	function addRow(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var colCount = table.rows[0].cells.length;

		for (var i = 0; i < colCount; i++) {

			var newcell = row.insertCell(i);

			newcell.innerHTML = table.rows[0].cells[i].innerHTML;
			//alert(newcell.childNodes);
			switch (newcell.childNodes[0].type) {
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

			for (var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					if (rowCount <= 1) {
						alert("Cannot delete all the rows.");
						break;
					}
					table.deleteRow(i);
					rowCount--;
					i--;
				}


			}
		} catch (e) {
			alert(e);
		}
	}

</SCRIPT>