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

    <div class="jumbotron">
        <h2>Formulario de Carga de la encuesta</h2>
        <p class="lead">Registre los datos sobre el uso diario del transporte en su movilidad de uso personal.</p>
    </div>
         
    <div class="container body-content">

        <div class="col">
            <h3>Modo de transporte habitual</h3>
            
            <div class="form-group">
                <asp:CheckBox ID="chkUsaBicleta" Text="¿Usa Bicicleta?" CssClass="form-control" runat="server" /><br/>
                <asp:CheckBox ID="chkUsaAuto" Text="¿Usa automóvil?" CssClass="form-control" runat="server" /><br/>
                <asp:CheckBox ID="chkUsaTranspPub" Text="¿Usa transporte público?" CssClass="form-control" runat="server" />     
            </div>
        </div>
        
        <br/>

        <div class="col">

            <h3>Sobre el destino al trabajo/estudio</h3>
    
            <div class="form-inline">
                <label>Distancia en (km)</label>
                <asp:TextBox ID="tbDistanciaASuDestino" TextMode="Number" placeholder="distancia en km" onkeypress="return handleKeyPress(event)"
                    CssClass="form-control" runat="server"/>
            </div>
        </div>

        <br/>

        <div class="col">
            <h3>Contacto</h3>
            
            <div class="col">
                <div class="form-group">
                    <asp:CheckBox ID="chkPuedeSerContactado" Text="¿Puede ser contactado?" runat="server" />
                </div>

                <div class="form-inline">
                    <asp:Label runat="server">Email</asp:Label>
                    <asp:TextBox ID="tbEmail" TextMode="Email" placeholder="email" runat="server"/>
                </div>
              </div>
        </div>

         <br/>

        <div class="form-group text-center">
            <asp:Button ID="btnIngresarEncuesta" CssClass="btn btn-sm btn-primary" Text="Ingresar" OnClick="btnIngresarEncuesta_Click" runat="server"/>
            <asp:Button ID="btnCancelar" CssClass="btn btn-sm btn-primary"  Text="Cancelar" OnClick="btnCancelar_Click" runat="server"/>
        </div>
    </div>        

</asp:Content>
