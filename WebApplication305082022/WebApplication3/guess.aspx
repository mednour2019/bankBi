<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="guess.aspx.cs" Inherits="WebApplication3.guess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
     
</asp:Content>


  

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
</script>

	
  


  <form  name="myform"> 

   <h2 class="text-dark font-weight-bold mb-2">Gerer utilisateurs <i class="fa-fa user-avatar"></i> </h2> 
           


    <div class="container">
<div class="row gutters">

<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
<div class="card h-100">
	<div class="card-body">
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<h6 class="mb-2 text-primary">Détails personnels</h6>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="fullName">Nom Complet</label>
					<input type="text" class="form-control" id="fullName" placeholder="Entrez le nom complet"  required="required">
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="username">Nom d'utilisateur</label>
					<input type="text" class="form-control" id="username" placeholder="Entrez le nom d'utilisateur" required>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="password">Mot de passe</label>
					<input type="password" class="form-control" id="password" placeholder="Entrez le mot de passe" required>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				
				
					<div class="form-group">
					<label for="username">Sexe:</label> <br />
                    <input type="radio" name="Gender" value="Homme"  checked/> Homme <br />
                    <input type="radio" name="Gender" value="Femme" /> Femme

</div>
			</div>
			
		</div>
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<h6 class="mt-3 mb-2 text-primary">Informations sur le grade del'utilisateur</h6>
			</div>
		<div class="form-group">
					<label for="grade">Grade</label>
					<select class="form-select grade"  required aria-label="Default select example" id="gra" >
  <option value="">Selectionnez grade</option>
  <option value="1">Informaticien</option>
  <option value="2">Directeurgénéral</option>
  <option value="3">chefrégional</option>
<option value="4">Chefagence</option>
</select>
				</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group region">
					<label for="ciTy">Region</label>
						<select class="form-select"  aria-label="Default select example" id="reg"  >
  <option value="">Selectionnez region</option>
  <option value="1">sfax</option>
  <option value="2">tunis</option>
  <option value="3">nabeul</option>
<option value="4">sousse</option>
<option value="5">benarous</option>
<option value="6">manouba</option>
</select>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group  branch">
					<label for="sTate">Agence</label>
						<select class="form-select " aria-label="Default select example" id="br"  >
 <option value="">selectionnez agence</option>

</select>
				</div>
			</div>
		
		</div>
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
				
					<button type="reset" id="reset" name="submit" class="btn btn-secondary">Annuler <i class="fa fa-smile-o"></i></button>
                             <button type="submit" id="save" name="submit"  class="btn btn-primary">Sauvegarder <i class="fa fa-save"></i></button>	
                     <label id="notif" style="margin-left: 200px;"></label>

				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>

      
  </form> 

   
   
<script>

    $(document).ready(function () {

        //var region = $('#reg').find(":selected").text();
        //var agence = $('#br').find(":selected").text();
        $('.branch').hide();
        $('.region').hide();
        $('.grade').change(function () {
          //  console.log(this.value);
            if (this.value == "3") { //regional
                $('.region').show();
                $('.branch').hide();

                //$('#br').prop('disabled', true);
            }

            else if (this.value == "4")//agence
            {
                $('.region').show();
                $('.branch').show();
            }
            else {
                $('.region').hide();
                $('.branch').hide();
                //document.getElementById("fdnomcomplet").value = $("#fullName").val();
                

            }
          

        });
        $('.region').change(function () {
            // console.log($(".region option:selected").val());
            // debugger
            if ($(".grade option:selected").val() == "4") {

                if ($(".region option:selected").val() == "") {
                    $("#br").html('');
                }
                else
                    if ($(".region option:selected").val() == "1") {
                        $("#br").html('');

                        $('#br').append($('<option>', {
                            value: 1,
                            text: 'agenceGremda'
                        }));
                        $('#br').append($('<option>', {
                            value: 2,
                            text: 'agence Al Ain'
                        }));
                        $('#br').append($('<option>', {
                            value: 3,
                            text: 'agence route lafran'
                        }));
                        $('#br').append($('<option>', {
                            value: 4,
                            text: 'agence beb bhar'
                        }));
                    }
                    else if ($(".region option:selected").val() == "2") {
                        $("#br").html('');

                        $('#br').append($('<option>', {
                            value: 1,
                            text: 'agencemontplaisir'
                        }));
                        $('#br').append($('<option>', {
                            value: 2,
                            text: 'agence beb bnet'
                        }));
                        $('#br').append($('<option>', {
                            value: 3,
                            text: 'agence menzah 6'
                        }));
                        $('#br').append($('<option>', {
                            value: 4,
                            text: 'agence centre urbain nord'
                        }));
                    }
                    else if ($(".region option:selected").val() == "3") {
                        $("#br").html('');

                        $('#br').append($('<option>', {
                            value: 1,
                            text: 'agence nabeul niapolis'
                        }));
                        $('#br').append($('<option>', {
                            value: 2,
                            text: 'agence madina jadida'
                        }));
                        $('#br').append($('<option>', {
                            value: 3,
                            text: 'agence hammamet'
                        }));
                        $('#br').append($('<option>', {
                            value: 4,
                            text: 'agence klibia'
                        }));
                    }
                    else if ($(".region option:selected").val() == "4") {
                        $("#br").html('');

                        $('#br').append($('<option>', {
                            value: 1,
                            text: 'agence jawhara'
                        }));
                        $('#br').append($('<option>', {
                            value: 2,
                            text: 'agence khzema'
                        }));
                        $('#br').append($('<option>', {
                            value: 3,
                            text: 'agence beb bhar'
                        }));
                        $('#br').append($('<option>', {
                            value: 4,
                            text: 'agence zawra'
                        }));
                    }
                    else if ($(".region option:selected").val() == "5") {
                        $("#br").html('');

                        $('#br').append($('<option>', {
                            value: 1,
                            text: 'agence el mourouj '
                        }));
                        $('#br').append($('<option>', {
                            value: 2,
                            text: 'agence rades'
                        }));
                        $('#br').append($('<option>', {
                            value: 3,
                            text: 'agence benarous'
                        }));
                        $('#br').append($('<option>', {
                            value: 4,
                            text: 'agence zahra'
                        }));
                    }
                    else if ($(".region option:selected").val() == "6") {
                        $("#br").html('');

                        $('#br').append($('<option>', {
                            value: 1,
                            text: 'agence manouba'
                        }));
                        $('#br').append($('<option>', {
                            value: 2,
                            text: 'agence danden'
                        }));
                        $('#br').append($('<option>', {
                            value: 3,
                            text: 'agence madina jadida'
                        }));
                        $('#br').append($('<option>', {
                            value: 4,
                            text: 'agence manouba tunis'
                        }));

                    }
            }
            else
                if ($(".grade option:selected").val() == "3") {
                    $("#br").html('');

                }

        });


        $('.grade').change(function () {
            var value = $("#gra option:selected")
            // console.log(value.text());
            grade = value.val();
           // console.log(grade);
        });
      
    });


   
    $(function () {
        $('#save').click(function () {


            //var Name = $("#textbox").val()
            fullname = $("#fullName").val();
            username = $("#username").val();
            password = $("#password").val();
            gender = $('input[name="Gender"]:checked').val();
            var value = $("#gra option:selected")
           // console.log(value.text());
            grade = value.text();
            gradeindice = value.val();
            var value2 = $("#reg option:selected")
            region = value2.text();
            regionindice = value2.val();
            var value3 = $("#br option:selected")
            agence = value3.text();
            agenceindice = value3.val();
            if (gradeindice == "1" || gradeindice == "2") {
                if (fullname != "" && username != "" && password != "" && gender != "" && gradeindice != "") {
                    var DTO = { 'fullname': fullname, 'username': username, 'password': password, 'gender': gender, 'grade': grade, 'region': region, 'agence': agence };
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "guess.aspx/afficher",
                        dataType: "json",
                        data: JSON.stringify(DTO),
                        success: OnSuccess,
                        error: ErrorFound
                    });

                }
                else {
                    $("#notif").show();
                    $("#notif").html('il faut remplir quelques champs!!!');
                    $('#notif').css("color", "red");
                    $("#notif").delay(3000).fadeOut(500);
                }

            }
            else
                if (gradeindice == "") {
                    $("#notif").show();
                    $("#notif").html('il faut selectionner grade!!!');
                    $('#notif').css("color", "red");
                    $("#notif").delay(3000).fadeOut(500);
                }
                else
                    if (gradeindice == 3) {
                        if (regionindice == "" || fullname == "" || username == "" || password == "" || gender == "" ) {

                            $("#notif").show();
                            $("#notif").html('il faut verifieer quelques champs');
                            $('#notif').css("color", "red");
                            $("#notif").delay(3000).fadeOut(500);
                            return false;
                        }
                        else {
                            var DTO = { 'fullname': fullname, 'username': username, 'password': password, 'gender': gender, 'grade': grade, 'region': region, 'agence': agence };
                            $.ajax({
                                type: "POST",
                                contentType: "application/json; charset=utf-8",
                                url: "guess.aspx/afficher",
                                dataType: "json",
                                data: JSON.stringify(DTO),
                                success: OnSuccess,
                                error: ErrorFound
                            });

                        }

                    }
                    else
                    {
                        if (gradeindice == 4)
                        {
                            if (regionindice == "" || agenceindice == "" ||fullname== "" || username == "" || password == "" || gender == "") {

                                $("#notif").show();
                                $("#notif").html('il faut selectionner quelques champs!!!');
                                $('#notif').css("color", "red");
                                $("#notif").delay(3000).fadeOut(500);
                                return false;
                            }
                            else
                            {
                                var DTO = { 'fullname': fullname, 'username': username, 'password': password, 'gender': gender, 'grade': grade, 'region': region, 'agence': agence };
                                $.ajax({
                                    type: "POST",
                                    contentType: "application/json; charset=utf-8",
                                    url: "guess.aspx/afficher",
                                    dataType: "json",
                                    data: JSON.stringify(DTO),
                                    success: OnSuccess,
                                    error: ErrorFound
                                });
                            }


                        }
                    }



            


        });
        function OnSuccess(data) {
            $("#notif").show();
            $("#notif").html('utilisateur ajouté avec succés!!!');
            $('#notif').css("color", "green");
            $("#notif").delay(3000).fadeOut(500);
       
            console.log("sucess");
        };

        function ErrorFound(result) {
            console.log("error");
            $("#notif").show();
            $("#notif").html('erreur!!!');
            $('#notif').css("color", "red");
            $("#notif").delay(3000).fadeOut(500);
        }

    });
</script>
    </asp:Content>