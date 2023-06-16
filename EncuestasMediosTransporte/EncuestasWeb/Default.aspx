<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" 
        AutoEventWireup="true" CodeBehind="Default.aspx.cs" 
        Inherits="EncuestasWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Mi Secretaria de transporte</h1>
        <p class="lead">Encuestas sobre el uso de los trasnportes urbanos</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">

        <asp:ListView ID="menuListView" runat="server">
            <LayoutTemplate>
                <div class="row">
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                </div>
            </LayoutTemplate>

            <ItemTemplate>
                <div class="col-md-4">
                    <h2><%# Eval("Title") %></h2>
                    <p><%# Eval("Description") %></p>
                    <p>
                        <a class="btn btn-default" 
                                href='<%# Eval("Link") %>'>Ir &raquo;</a>
                    </p>
                </div>
            </ItemTemplate>

        </asp:ListView>
    </div>

</asp:Content>
