<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="WebInforme.aspx.cs"
    Inherits="EncuestasWeb.WebInforme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Informes</h2>
        Viendo los resultados 
    </div>

    <div class="container body-content">
        <div class="form-group col-12">
            <fieldset class="group">
                <legend>Listado</legend>
                <asp:ListBox ID="ltbInforme" Style="width: 100%; max-width: none; text-align:left;" Width="100%" Height="100%" Enabled="false" runat="server">
                </asp:ListBox>
            </fieldset>
        </div>
    </div>
</asp:Content>
