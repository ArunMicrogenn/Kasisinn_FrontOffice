<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Master','member');
$this->pfrm->FrmHead1('Master / Member',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");

?>

 
    <div class="table-responsive">
      <table class="table table-bordered table-hover"  id="example1">
        <thead  >
          <tr>
            <th>Sno</th>
            <th>Title</th>
            <th>Name</th>
            <th>Company</th>
            <th>Address1</th>
             
            <th>City</th>
            <th>Mobile</th>
             
            <th>Email</th>
        
            <th style="width:100px !important" >Edit</th>
          </tr>
        </thead>
        <tbody>
          <?php 
			$Res=$this->Myclass->Member();
			$count=1;
			 
		 foreach($Res as $row)
			{
				 
               echo  '<tr class="odd gradeX">
                      <td>'.$count.' </td>
                      <td>'.$row['Title'].'</td>
					  <td>'.$row['Name'].'</td>	
					  <td>'.$row['Company'].'</td>
					  <td>'.$row['Address1'].'</td>	
					 
					  <td>'.$row['City'].'</td>
					  <td>'.$row['Mobile'].'</td>
					   
					  <td>'.$row['Email'].'</td>
					  
					   	 
                      <td>
					  <a class="btn btn-warning btn-xs" href="'.scs_index.$F_Class."/".$F_Ctrl."/".$row['Member_Id'].'/UPDATE"   >
					  <i class="fa fa-edit"></i> Edit</a> | 
					   <a class="btn btn-danger btn-xs" href="'.scs_index.$F_Class."/".$F_Ctrl."/".$row['Member_Id'].'/DELETE"   >
					  <i class="fa fa-trash"></i> Delete</a></td>
                      
                      </tr>';
                 
                 
                
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

