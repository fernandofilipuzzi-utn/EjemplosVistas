
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" 
        AutoEventWireup="true" CodeBehind="Default.aspx.cs" 
        Inherits="EncuestasWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Mi Secretaria de transporte</h1>
        <p class="lead">Encuestas sobre el uso de los transportes urbanos</p>
    </div>
  
    <div class="home-sticky" id="content">

        <div class="sticky-inner">
            <asp:ListView ID="menuListView" runat="server">
            
                <LayoutTemplate>        
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>                   
                </LayoutTemplate>

                <ItemTemplate>
                    <aside class="col-md-4 home-sticky-post post has-post-thumbnail sticky">               

  		                <span class="post-image">
                            <asp:HyperLink ID="menuLink" runat="server" NavigateUrl='<%# Eval("Link") %>'>
                                <asp:Image ID="menuImage" runat="server" ImageUrl='<%# Eval("ImageUrl") %>'
                                                class="attachment-sticky size-sticky" alt=""
                                                Width="302" Height="302" />
                            </asp:HyperLink>
  		                </span>

                        <div class="inner">
                            <h3 class="entry-title">
                                <asp:HyperLink ID="HyperLink1" Text=<%# Eval("Title") %> 
                                                runat="server" NavigateUrl='<%# Eval("Link") %>'>
                                </asp:HyperLink>
                            </h3>

                            <ul class="meta top">
                                <li class="time">
                                     <asp:HyperLink ID="HyperLink2" 
                                                runat="server" NavigateUrl='<%# Eval("Link") %>'>
                                            <%# Eval("Descripcion") %>'
                                    </asp:HyperLink>
                                </li>
                            </ul>
                        </div>
                    </aside>

                </ItemTemplate>

            </asp:ListView>
        </div>

    </div>
   
</asp:Content>


