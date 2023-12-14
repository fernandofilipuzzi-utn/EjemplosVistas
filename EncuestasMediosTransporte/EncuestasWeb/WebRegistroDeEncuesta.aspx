<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="WebRegistroDeEncuesta.aspx.cs"
    Inherits="EncuestasWeb.WebFormRegistroDeEncuesta" %>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" style="background-color: #eaedef;">

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

        <div class="col m-3 p-2" style="background-color: #d6e1ed;">
            <h3>Modo de transporte habitual</h3>

            <div class="form-check" >
                <asp:CheckBox ID="chkUsaBicleta" Style="background-color: #d6e1ed;" CssClass="form-check-input" runat="server" />
                <label class="form-check-label" for="chkUsaBicleta"><i class="fa fa-bicycle" aria-hidden="true"></i>¿Usa Bicicleta?</label>
            </div>

            <div class="form-check">
                <asp:CheckBox ID="chkUsaAuto" Style="background-color: #d6e1ed;" CssClass="form-check-input" runat="server" />
                <label class="form-check-label" for="chkUsaAuto"><i class="fa fa-car" aria-hidden="true"></i>¿Usa automóvil?</label>
            </div>

            <div class="form-check">
                <asp:CheckBox ID="chkUsaTranspPub" Style="background-color: #d6e1ed;" CssClass="form-check-input" runat="server" />
                <label class="form-check-label" for="chkUsaTranspPub"><i class="fa fa-bus" aria-hidden="true"></i>¿Usa transporte público?</label>
            </div>
        </div>
    </div>

    <div class="col m-3 p-2" style="background-color: #d6e1ed;">

        <h3>Sobre el destino al trabajo/estudio</h3>

        <div class="form-inline">
            <label class="col-3" for="tbDistanciaASuDestino">Distancia en (km)</label>
            <asp:TextBox class="form-control col-5" ID="tbDistanciaASuDestino" TextMode="Number" placeholder="distancia en km" onkeypress="return handleKeyPress(event)" runat="server" />
        </div>
    </div>

    <div class="col m-3 p-2" style="background-color: #d6e1ed;">
        <h3>Contacto</h3>

        <div class="col">
            <div class="form-group">
                <asp:CheckBox ID="chkPuedeSerContactado" Text="¿Puede ser contactado?" runat="server" />
            </div>

            <div class="form-inline">
                <label class="col-3" for="tbEmail">Email</label>
                <asp:TextBox ID="tbEmail" class="form-control col-5" TextMode="Email" placeholder="email" runat="server" />
            </div>
        </div>
    </div>

    <div class="col m-3 p-2" style="background-color: #d6e1ed;">
        <h3>Otras opciones</h3>

        <div class="container">
            <div class="form-check col">
                <asp:RadioButton ID="rbOpcion1" class="form-check-input" runat="server" />
                <label class="form-check-label" for="rbOpcion1">Opción 1</label>
            </div>

            <div class="form-check col">
                <asp:RadioButton ID="rbOpcion2" class="form-check-input" runat="server" />
                <label class="form-check-label" for="rbOpcion1">Opción 2</label>
            </div>
        </div>
    </div>

    <div class="form-group text-center m-2 p-2">
        <asp:Button ID="btnIngresarEncuesta" CssClass="btn btn-sm btn-primary" Text="Ingresar" OnClick="btnIngresarEncuesta_Click" runat="server" />
        <asp:Button ID="btnCancelar" CssClass="btn btn-sm btn-primary" Text="Cancelar" OnClick="btnCancelar_Click" runat="server" />
    </div>
    </div>        

</asp:Content>
