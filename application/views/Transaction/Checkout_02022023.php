<?Php  
  $date=date("Y-m-d");
  $time= date("H:i:s");
  $Roomid=$_REQUEST['Room_id'];
  $Res=$this->Myclass->Get_Checkoutno();
  foreach($Res as $row)
  { $Checkoutno=$row['number'];  } 

 



 
?>
<legend style="font-size:13px" ><strong></strong></legend>	
  <!-- The Modal -->
  <div id="splitbillopen" class="modal">
	<!-- Modal content -->
	<div class="modal-content" style="width:70%;">
		<span class="close">&times;</span>
		<body>
		
		</body>
	</div>
  </div>
<div id="popupopen" class="modal">
  <!-- Modal content -->
  <div class="modal-content" style="width:60%;">
    <span class="close">&times;</span>
  
	<body>		   
	   
	</body>

  </div>
</div>
  
  

<script>
var modal = document.getElementById("popupopen");
var btn = document.getElementById("Billdetails");
var span = document.getElementsByClassName("close")[1];
var span1 = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
  modal1.style.display = "none";
}
span1.onclick = function() 
{  modal.style.display = "none";
  modal1.style.display = "none"; }
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";	
  }
  if (event.target == modal1) {
	modal1.style.display = "none";
  }
}
var modal1 = document.getElementById("splitbillopen");
var btn1 = document.getElementById("SplitBill");
btn1.onclick = function() {
  modal1.style.display = "block";
}
</script>  
 <script>
 var bank=0;
 var card=0;
 var validate=0;
 var payid =0;


function GroupSplit(value,id)
{
	if(<?php echo $noofdays ?>==0)
	{
		alert("if");
	}
	else
	{
		alert("else");
	}

}
$("#BillSplitForm").on('submit', function (e) {
       e.preventDefault();
          $.ajax({
            type: 'get',
            url: "<?php echo scs_index ?>Transaction/tempBillSplitform?Roomid=<?php echo $Roomid; ?>",
            data: $('#BillSplitForm').serialize(),
            success: function (result) {
				var id=result;
				 swal({
				  title: "Checkout Save Successfully..!",
				  text: "Did you Need Print..!",
				  icon: "success",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
				   window.location.href ="<?php echo scs_index ?>Transaction/CheckoutReceipt?Checkoutid="+id;
				  } else {
					window.location.href ="<?php echo scs_index ?>Transaction/RoomChart";
				  }
				}); 
			  
			   }			
          });
          		   
        });
 </script>