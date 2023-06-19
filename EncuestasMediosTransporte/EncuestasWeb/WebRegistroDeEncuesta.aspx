<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="WebRegistroDeEncuesta.aspx.cs" 
    Inherits="EncuestasWeb.WebFormRegistroDeEncuesta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    <div>
           
        <fieldset class="checkbox-group">
            <legend>Modo de transporte habitual</legend>
            <asp:CheckBox ID="chkUsaBicleta" 
                            Text="¿Usa Bicicleta?" 
                            runat="server" /><br/>
            <asp:CheckBox ID="chkUsaAuto" 
                            Text="¿Usa automóvil?" 
                            runat="server" /><br/>
            <asp:CheckBox ID="chkUsaTranspPub" 
                            Text="¿Usa transporte público?" 
                            runat="server" />            
        </fieldset>
        
        <br/>

        <fieldset class="group">
            <legend>Sobre el destino al trabajo/estudio</legend>
            <div class="form-group">
                <asp:Label runat="server">Distancia en (km)</asp:Label>
                <asp:TextBox ID="tbDistanciaASuDestino"
                   runat="server"></asp:TextBox>
            </div>
        </fieldset>

        <br/>

        <fieldset class="checkbox-group">
            <legend>Contacto</legend>
            <div class="form-group">
                <asp:CheckBox ID="chkPuedeSerContactado" 
                                Text="¿Puede ser contactado?" 
                                runat="server" />
            </div>
            <div class="form-group">
                <asp:Label runat="server">Email</asp:Label>
                <asp:TextBox ID="tbEmail"  runat="server"></asp:TextBox>
            </div>
        </fieldset>

        <div>
            <asp:Button ID="btnIngresarEncuesta" runat="server"
                        OnClick="btnIngresarEncuesta_Click"
                        Text="Ingresar"></asp:Button>
            <asp:Button ID="btnCancelar" runat="server"
                        OnClick="btnCancelar_Click"
                        Text="Cancelar"></asp:Button>            
        </div>
    </div>        

</asp:Content>
