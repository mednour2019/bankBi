<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="first.aspx.cs"  Inherits="WebApplication3.config" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <h2 class="text-dark font-weight-bold mb-2"> Résultats de données des agences ATB de region Sfax<i class="mdi mdi-bank"></i> </h2> 
    <iframe title="Sfax" width="1140" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=ac46c591-fc5f-4361-8081-c83694c733d2&autoAuth=true&ctid=dbd6664d-4eb9-46eb-99d8-5c43ba153c61&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLXdlc3QtZXVyb3BlLXJlZGlyZWN0LmFuYWx5c2lzLndpbmRvd3MubmV0LyJ9" frameborder="0" allowFullScreen="true"></iframe>
    </asp:Content>

