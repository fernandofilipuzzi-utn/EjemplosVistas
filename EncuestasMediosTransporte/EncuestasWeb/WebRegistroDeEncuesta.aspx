<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="WebRegistroDeEncuesta.aspx.cs" 
    Inherits="EncuestasWeb.WebFormRegistroDeEncuesta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        <div class="checkbox-group">
            <asp:Label ID="lblGrupo"
                                AssociatedControlID="chkListOpciones" 
                                Text="Modo de transporte habitual" runat="server" />

                <asp:CheckBoxList ID="chkListOpciones" runat="server">

                <asp:ListItem ID="chkUsaBicleta" 
                                Text="¿Usa Bicicleta?" 
                                Value="1"></asp:ListItem>

                <asp:ListItem ID="chkUsaAuto" 
                                Text="¿Usa automóvil?" 
                                Value="2"></asp:ListItem>

                <asp:ListItem ID="chkUsaTranspPub" 
                                Text="¿Usa transporte público?" 
                                Value="3"></asp:ListItem>                

            </asp:CheckBoxList>
        </div>

        <div>
            <asp:Button ID="btnIngresarEncuesta" runat="server"
                        OnClick="btnIngresarEncuesta_Click"
                        Text="Aceptar"></asp:Button>
            <asp:Button ID="btnCancelar" runat="server"
                        OnClick="btnCancelar_Click"
                        Text="Cancelar"></asp:Button>            
        </div>
    </div>        

</asp:Content>
