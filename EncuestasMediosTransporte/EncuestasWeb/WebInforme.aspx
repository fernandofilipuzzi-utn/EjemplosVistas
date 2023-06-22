<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" 
                AutoEventWireup="true" CodeBehind="WebInforme.aspx.cs" 
                Inherits="EncuestasWeb.WebInforme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   <fieldset class="group">
        <legend>Listado</legend>
        <asp:ListBox ID="ltbInforme" Width="100%" Enabled="false" runat="server"></asp:ListBox>
   </fieldset> 

</asp:Content>
