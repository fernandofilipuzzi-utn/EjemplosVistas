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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
        }

        protected void Page_Init(object sender, EventArgs e)
        {
           
        }

        void Informe(ProcesoEncuestas proceso)
        {
            ltbInforme.Items.Add("");
            ltbInforme.Items.Add("\t\t Informe de resultados");
            ltbInforme.Items.Add("");
            ltbInforme.Items.Add("Modo de transporte habitual");
            ltbInforme.Items.Add($"\t{"Bicicleta:",-20}  {proceso.PorcBicleta,10:f2}%");
            ltbInforme.Items.Add($"\t{"Automóvil:",-20}  {proceso.PorcAuto,10:f2}%");
            ltbInforme.Items.Add($"\t{"Transporte público:",-20}  {proceso.PorcTranspPublico,10:f2}%");
        }

        void ListadoContactables(ProcesoEncuestas proceso)
        {
            ltbInforme.Items.Add("\t\t Informe de encuestados contactables \n");

            proceso.OrdernarEncuestables();

            ltbInforme.Items.Add($"\t{"Email",-30} {"Distancia",-10}");
            for (int n = 0; n < proceso.CantContactables; n++)
            {
                ltbInforme.Items.Add($"\t{proceso.VerContactable(n).Email,-30} {proceso.VerContactable(n).DistanciaASuDestino,10:f2}");
            }
        }
    }
}