<?php
defined('BASEPATH') or exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu, $this->session);
$this->pweb->menu($this->Menu, $this->session);
$this->pweb->Cheader('Reprint', 'Registration Card');
$this->pfrm->FrmHead3('Reprint / Registration Card', $F_Class . "/" . $F_Ctrl, $F_Class . "/" . $F_Ctrl . "_View");

?>


<div class="col-sm-12">
	<div class="the-box F_ram">
		<form action="" method="POST">
			<table class="FrmTable T-6">
				<tr>
					<td align="right" class="F_val">From Date</td>
					<td align="left"><input type="text" value="<?php echo date('d-m-Y'); ?>" id="frmdate" name="frmdate"
							class="scs-ctrl Dat1" />
						<div class="Type"></div>
					</td>
					<td align="right" class="F_val">To Date</td>
					<td align="left"><input type="text" value="<?php echo date('d-m-Y'); ?>" id="todate" name="todate"
							class="scs-ctrl Dat1" />
						<div class="Type"></div>
					</td>
					<td align="left"><input type="submit" name="submit" class="btn btn-success btn-block" value="Get">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div class="the-box D_IS"></div>
</div>
<div class="col-sm-12">
	<?php
	$sql = "select isnull(comreprintbill,0) as comreprintbill from extraOption";
	$exx = $this->db->query($sql);
	foreach ($exx->result_array() as $row) {
		$walkoutReprint = $row['comreprintbill'];
	}
	?>
	<?php
	$sql = "select isnull(registrationcardreprint,0) as registrationcardreprint from extraoption";
	$res = $this->db->query($sql);
	foreach ($res->result_array() as $row) {
		$no = $row['registrationcardreprint'];
	}

	if ($no != 0) { ?>
		<table class="table table-bordered table-hover">
			<tbody>
				<?php
				$i = 1;
				$norow = 0;
				$CASH = 0;
				$CARD = 0;
				$NEFT = 0;
				$ROOM = 0;
				if (@$_POST['submit']) {
					$fromdate = date('Y-m-d', strtotime($_POST['frmdate']));
					$todate = date('Y-m-d', strtotime($_POST['todate']));
					$qry = "select mas.grcno, mas.CheckinDate,ti.Title+'.'+cmas.Firstname+' '+cmas.Lastname as customer, rmas.RoomNo,det.roomgrcid,mas.yearprefix  from Trans_Checkin_mas mas
							inner join trans_roomdet_det det on det.grcid = mas.grcid
							inner join Mas_Room rmas on rmas.Room_Id=det.roomid 
							inner join trans_roomcustomer_det cdet on cdet.grcroomdetid=det.grcroomdetid 
							inner join Mas_Customer cmas on cmas.Customer_Id=cdet.customerid
							inner join mas_Title ti on ti.Titleid=cmas.Titelid
							where mas.checkindate between '" . $fromdate . "' and '" . $todate . "' 
							order by mas.grcno";
					$exec = $this->db->query($qry);
					$totalAdvance = 0;
					$advance = $exec->num_rows();
					if ($advance != 0) {
						echo '<tr>';
						echo '<td  style="text-align: center;">GrcNo</td>';
						echo '<td  style="text-align: center;">Checkin Date</td>';
						echo '<td style="text-align: center;">Customer</td>';
						echo '<td style="text-align: center;">Room No</td>';
						echo '<td style="text-align: center;">Action</td>';
						echo '</tr>';
					}
					foreach ($exec->result_array() as $rows) {
						echo '<tr>';
						echo '<td  style="text-align: center;">' . $rows['yearprefix'] . '/' . $rows['grcno'] . '</td>';
						echo '<td style="text-align: center;">' . date('d-m-Y', strtotime($rows['CheckinDate'])) . '</td>';
						echo '<td style="text-align: left;">' . $rows['customer'] . '</td>';
						echo '<td style="text-align: center;">' . $rows['RoomNo'] . '</td>';
						echo '<td style="text-align: center;"><a href="' . scs_index . 'Transaction/RegistrationCard?roomgrcid=' . $rows['roomgrcid'] . '"><i class="fa fa-eye"></i></a></td>';
						echo '</tr>';
					}

				}
				?>
			</tbody>
		</table>
	<?php } ?>
</div>
<?php
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
?>