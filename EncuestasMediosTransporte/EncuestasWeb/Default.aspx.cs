using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestasWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<MenuOption> menuOptions = new List<MenuOption>
                {
                    new MenuOption { Title = "Registrar Encuesta", 
                                     Description = "Regitre la encuesta al interesado",
                                     Link = "WebRegistroDeEncuesta.aspx" },
                    new MenuOption { Title = "Informe General",
                                     Description = "Informe de pocentajes de uso de tipos de transporte público",
                                      Link = "WebInforme.aspx?tipo=general" },
                    new MenuOption { Title = "Informe de Encuestados contactables",
                                     Description = "Informe de los contactables",
                                     Link = "WebInforme.aspx?tipo=contactables" }
                };

                menuListView.DataSource = menuOptions;
                menuListView.DataBind();
            }
        }

        public class MenuOption
        {
            public string Title { get; set; }
            public string Description { get; set; }
            public string Link { get; set; }
        }

    }
}