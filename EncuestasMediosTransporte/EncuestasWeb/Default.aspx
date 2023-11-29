<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EncuestasWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Mi Secretaria de transporte</h2>
        <p class="lead">Encuestas sobre el uso de los transportes urbanos</p>
    </div>

    <div class="container" id="content">

        <div class="sticky-inner">
            <asp:ListView ID="menuListView" runat="server">

                <LayoutTemplate>
                    <div class="row">
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                    </div>
                </LayoutTemplate>

                <ItemTemplate>
                    <div class="card text-center col-3 m-2">
                        <asp:Image ID="menuImage" runat="server" ImageUrl='<%# Eval("ImageUrl") %>'
                            CssClass="card-img-top" alt="" />

                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Title") %></h5>
                            <p class="card-text"><%# Eval("Descripcion") %></p>
                            <asp:HyperLink ID="menuLink" CssClass="btn btn-sm btn-primary" runat="server" NavigateUrl='<%# Eval("Link") %>'> IR </asp:HyperLink>
                            </div>
                    </div>
                    
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>


