using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EncuestasLib;
using EncuestasWeb.App_Start;

namespace EncuestasWeb
{
    public partial class WebInforme : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            string tipo = Request.QueryString["tipo"];

            if (!string.IsNullOrEmpty(tipo))
            {
                if (tipo == "contactables")
                {
                    ListadoContactables(Manager.proceso);
                }
                else if (tipo == "general")
                {
                    Informe(Manager.proceso);
                }
            }
        }

        void Informe(ProcesoEncuestas proceso)
        {
            ddlInforme.Items.Add("");
            ddlInforme.Items.Add("\t\t Informe de resultados");
            ddlInforme.Items.Add("");
            ddlInforme.Items.Add("Modo de transporte habitual");
            ddlInforme.Items.Add($"\t{"Bicicleta:",-20}  {proceso.PorcBicleta,10:f2}%");
            ddlInforme.Items.Add($"\t{"Automóvil:",-20}  {proceso.PorcAuto,10:f2}%");
            ddlInforme.Items.Add($"\t{"Transporte público:",-20}  {proceso.PorcTranspPublico,10:f2}%");
        }

        void ListadoContactables(ProcesoEncuestas proceso)
        {
            ddlInforme.Items.Add("\t\t Informe de encuestados contactables \n");

            proceso.OrdernarEncuestables();
            ddlInforme.Items.Add($"\t{"Email",-30} {"Distancia",10}");
            for (int n = 0; n < proceso.CantContactables; n++)
            {
                ddlInforme.Items.Add($"\t{proceso.VerContactable(n).Email,-30} {proceso.VerContactable(n).DistanciaASuDestino,10:f2}");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }
    }
}