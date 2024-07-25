<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication3.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="https://kendo.cdn.telerik.com/2022.1.119/js/jquery.min.js"></script>

    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2022.1.119/styles/kendo.common.min.css" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2022.1.119/styles/kendo.blueopal.min.css" />
      

    <script src="https://kendo.cdn.telerik.com/2022.1.119/js/kendo.all.min.js"></script>
     <script>
         $(document).ready(function () {

            
                 //$('#reportDropdown').attr('disabled', true);
             
               

             var mapData = <%=this.output2%>;
             var mapData2 = <%=this.output3%>;
             var max = <%=this.maxvalue%>;
             debugger 
             function createChart() {
                 $("#chart").kendoChart({
                     title: {
                         text: "nombre utilisateur total par grade"
                     },
                     legend: {
                         visible: true
                     },
                     seriesDefaults: {
                         type: "column"
                     },
                     series: [{
                         name: "nombre utilisateur total",
                         data: mapData2,
                         color: "black"

                     }],
                     valueAxis: {
                         max: max,
                         line: {
                             visible: true
                         },
                         minorGridLines: {
                             visible: true
                         },
                         labels: {
                             rotation: "auto"
                         }
                     },
                     categoryAxis: {
                         visible: true,
                         categories: mapData,
                         majorGridLines: {
                             visible: true
                         }
                     },
                     tooltip: {
                         visible: true,
                         template: "#= series.name #: #= value #"
                     }
                 });
             }

             $(document).ready(createChart);
             $(document).bind("kendo:skinChange", createChart);


             



         });
        
         </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
  <div class="row">
    <div class="col-sm">
     
    </div>
    <div class="col-sm">
     <img src="ConnectPlusAdmin-Free-Bootstrap-Admin-Template-master/template/assets/images/Atb39logojhk.png"alt="logo" 
              style="width: 120px;height: 100px;background-color: #e6faf221; margin-top: -60px;margin-left: 100px;"/>
    </div>
    <div class="col-sm">
      
    </div>
  </div>
</div>
 <div class="d-xl-flex justify-content-between align-items-start">
              <h2 class="text-dark font-weight-bold mb-2"> Tableau de bord ATB BANK <i class="mdi mdi-bank"></i> </h2> 
             
            </div>
         <div class="d-sm-flex justify-content-between align-items-center transaparent-tab-border {">
               
                 
                </div>
     <div class="row">
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="mb-2 text-dark font-weight-normal">Nombre utilisateurs <i class="fa fa-user-secret" style="font-size: revert;"></i></h5>
                            <h2 class="mb-4 text-dark font-weight-bold"><%=nbusers%></h2>
                            <div class="dashboard-progress dashboard-progress-1 d-flex align-items-center justify-content-center item-parent"><i class="mdi mdi-lightbulb icon-md absolute-center text-dark"></i></div>
                            <p class="mt-4 mb-0"><i class="fa fa-check" style="font-size: revert;"></i></p>
                            <h3 class="mb-0 font-weight-bold mt-2 text-dark"></h3>
                          </div>
                        </div>
                      </div>
                   <div class="col-xl-9 ">
                        <div class="card">
                          <div class="card-body text-center">
                           <div id="example">
                               <i class="mdi mdi-bank-outline" style="font-size:large; color:black"></i>
                          <div class="demo-section k-content wide">
                          <div id="chart" style="background: center no-repeat url('');"></div>
                          </div>
                          </div>

                          </div>
                        </div>
                      </div>
                    </div>
         <div class="row">

                      <div class="col-12 grid-margin">
                        <div class="card" >
                          <div class="card-body">
                     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container bootstrap snippets bootdeys">
      <div class="row text-center">
        <div class="col-sm-4">
          <div class="contact-detail-box">
            <i class="fa fa-th fa-3x text-colored"></i>
            <h4>Entrer en contact</h4>
            <abbr title="Phone">P:</abbr> 74 225 142<br>
            E: <a href="mailto:n.jebali@atb.com.tn class="text-muted">n.atb@atb.com.tn</a>
          </div>
        </div><!-- end col -->

        <div class="col-sm-4">
          <div class="contact-detail-box">
            <i class="fa fa-map-marker fa-3x text-colored"></i>
            <h4>Notre emplacement</h4>

            <address>
            PQJ6+GWM, Avenue Habib Bourguiba <br>
     tunis 4009  <br>
          </address>
          </div>
        </div><!-- end col -->

        <div class="col-sm-4">
        
        </div><!-- end col -->

      </div>
      <!-- end row -->


      <div class="row">
        <div class="col-sm-6">
          <div class="contact-map">
            <iframe src="https://maps.google.com/maps?q=atb%20bank%20tunis&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="width: 100%; height: 360px;"></iframe>
          </div>
        </div><!-- end col -->

        <!-- Contact form -->
   <!-- end col -->

      </div> <!-- end row -->
          
    </div>
                          </div>
                        </div>
                      </div>
                    </div>
   
    </asp:Content>
