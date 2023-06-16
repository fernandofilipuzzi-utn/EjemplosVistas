using EncuestasLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using EncuestasWeb.App_Start;

namespace EncuestasWeb
{
    public partial class WebFormRegistroDeEncuesta : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }           
        }

        protected void btnIngresarEncuesta_Click(object sender, EventArgs e)
        {
            Encuesta nuevo = new Encuesta();

            nuevo.UsaBicicleta = chkUsaBicleta.Selected;
            nuevo.UsaAuto= chkUsaAuto.Selected;
            nuevo.UsaTransportePublico = chkUsaTranspPub.Selected;

            Manager.proceso.RegistrarEncuesta(nuevo, true);
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}