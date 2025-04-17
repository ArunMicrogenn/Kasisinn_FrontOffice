<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Master','Department');
$this->pfrm->FrmHead1('Master  / Department',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");

?>

<div class="table-responsive">
  <table class="table table-bordered table-hover"  id="example1">
    <thead  >
      <tr>
        <th>Sno</th>
        <th>Department</th>
		<th>Status</th>
        <th style="width:100px !important" align="center" >Edit</th>
      </tr>
    </thead>
    <tbody>
      <?php 
			$Res=$this->Myclass->Department();
			$count=1;
			 
		 foreach($Res as $row)
			{
				 
               echo  '<tr class="odd gradeX">
                      <td>'.$count.' </td>
                      <td>'.$row['Department'].'</td>';	?>
				      <td style="Color:<?php if($row['Inactive'] == 0){echo"Green";}else{echo"Red";} ?>"><?php if($row['Inactive'] == 0){ echo "Is Active";}else{echo "Is Inactive";} ?></td>
				<?php	  
               echo  '<td>
					  <a class="btn btn-warning btn-xs" href="'.scs_index.$F_Class."/".$F_Ctrl."/".$row['Deptid'].'/UPDATE"   >
					  <i class="fa fa-edit"></i> Edit</a> 				   
					  
					  </td>
                      
                      </tr>';
                 /*<a class="btn btn-danger btn-xs" href="'.scs_index.$F_Class."/".$F_Ctrl."/".$row['Deptid'].'/DELETE"   >
					  <i class="fa fa-trash"></i> Delete</a>*/
                 
                
				 $count++;
              
			}
			 ?>
    </tbody>
  </table>
</div>
<?php
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
?>
