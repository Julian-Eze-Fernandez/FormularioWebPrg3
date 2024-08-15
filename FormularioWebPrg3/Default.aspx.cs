using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormularioWebPrg3
{
	public partial class _Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			if (!IsPostBack)
			{
				lblMensaje.Text = "Hola Mundo - Es la primera vez que se ha cargado la página";

				Session["Recargas"] = 0;
			}
			else
			{
				lblMensaje.Text = "Esta página ya ha sido visitada";

				Session["Recargas"] = (int)Session["Recargas"] + 1;
			}

			lblContadorUsuarios.Text = "Cantidad de usuarios que accedieron a la app: " + Application["UserCount"].ToString();

			lblContadorRecargas.Text = "Veces que has recargado la página: " + Session["Recargas"].ToString();
		}

		protected void btnRecargar_Click(object sender, EventArgs e)
		{

			Response.Redirect(Request.RawUrl);

		}
	}
}