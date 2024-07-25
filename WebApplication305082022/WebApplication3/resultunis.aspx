<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="resultunis.aspx.cs" Inherits="WebApplication3.resultunis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <h2 class="text-dark font-weight-bold mb-2"> Résultats de données des agences ATB de region Tunis<i class="mdi mdi-bank"></i> </h2> 
    <iframe title="Tunis" width="1140" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=3b128f80-fa3f-4035-9517-f23cbe26896f&autoAuth=true&ctid=dbd6664d-4eb9-46eb-99d8-5c43ba153c61&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLXdlc3QtZXVyb3BlLXJlZGlyZWN0LmFuYWx5c2lzLndpbmRvd3MubmV0LyJ9" frameborder="0" allowFullScreen="true"></iframe>
</asp:Content>
