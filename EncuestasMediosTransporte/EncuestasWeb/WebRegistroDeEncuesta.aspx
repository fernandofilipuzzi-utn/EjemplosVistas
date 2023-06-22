<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="WebRegistroDeEncuesta.aspx.cs" 
    Inherits="EncuestasWeb.WebFormRegistroDeEncuesta" %>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>
        function handleKeyPress(event) {
            var charCode = event.charCode;

            // Permitir solo números (del 0 al 9) y la coma (código ASCII 44)
            if ((charCode < 48 || charCode > 57) && charCode !== 44) {
                return false;
            }
        }
    </script>

    <div>
           
        <asp:Panel runat="server" CssClass="group-box">
            <h3>Modo de transporte habitual</h3>
            
            <div class="form-group">
                <asp:CheckBox ID="chkUsaBicleta" 
                                Text="¿Usa Bicicleta?" 
                                runat="server" /><br/>
                <asp:CheckBox ID="chkUsaAuto" 
                                Text="¿Usa automóvil?" 
                                runat="server" /><br/>
                <asp:CheckBox ID="chkUsaTranspPub" 
                                Text="¿Usa transporte público?" 
                                runat="server" />     
            </div>
        </asp:Panel>
        
        <br/>

        <asp:Panel runat="server" CssClass="group-box">
            <h3>Sobre el destino al trabajo/estudio</h3>
    
            <div class="form-group">
                <asp:Label runat="server">Distancia en (km)</asp:Label>
                <asp:TextBox ID="tbDistanciaASuDestino"
                    onkeypress="return handleKeyPress(event)"
                   runat="server"></asp:TextBox>
            </div>
        </asp:Panel>

        <br/>

        <asp:Panel runat="server" CssClass="group-box">
            <h3>Contacto</h3>
            
            <div class="form-group">
                <asp:CheckBox ID="chkPuedeSerContactado" 
                                Text="¿Puede ser contactado?" 
                                runat="server" />
            </div>
            <div class="form-group">
                <asp:Label runat="server">Email</asp:Label>
                <asp:TextBox ID="tbEmail"  runat="server"></asp:TextBox>
            </div>
        </asp:Panel>

         <br/>

        <asp:Panel runat="server" CssClass="group-box">
            <asp:Button ID="btnIngresarEncuesta" runat="server"
                        OnClick="btnIngresarEncuesta_Click"
                        Text="Ingresar"></asp:Button>
            <asp:Button ID="btnCancelar" runat="server"
                        OnClick="btnCancelar_Click"
                        Text="Cancelar"></asp:Button>            
        </asp:Panel>
    </div>        

</asp:Content>
