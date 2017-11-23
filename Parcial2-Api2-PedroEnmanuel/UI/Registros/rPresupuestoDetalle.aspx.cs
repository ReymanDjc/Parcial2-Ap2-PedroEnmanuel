using BLL;
using Entidades;
using Presupuesto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2_Api2_PedroEnmanuel.UI.Registros
{
	public partial class rPresupuestoDetalle : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			DetalleGridView.DataBind();
		}

		private PresupuestoDetalle Llenar()
		{
			PresupuestoDetalle presupuesto = new PresupuestoDetalle();
			presupuesto.Id = Utilidades.TOINT(IdTextBox.Text);
			
			presupuesto.Meta = Utilidades.TOINT(MetaTextBox.Text);
			presupuesto.Logrado = Utilidades.TOINT(LogradoTextBox.Text);
			/*presupuesto.PresupuestoId = Utilidades.TOINT(PresupuestoIdTextBox.Text);
			presupuesto.Descripcion = DescripcionTextBox.Text;*/
			return presupuesto;
		}

		private void Limpiar()
		{
			IdTextBox.Text = "";
			MetaTextBox.Text = "";
			LogradoTextBox.Text = "";
			PresupuestoIdTextBox.Text = "";
			DescripcionTextBox.Text = "";
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Limpiar();
		}

		protected void Button4_Click(object sender, EventArgs e)
		{
			int id = Utilidades.TOINT(IdTextBox.Text);

			if (PresupuestoDetalleBLL.Eliminar(PresupuestoDetalleBLL.Buscar(p => p.PresupuestoId == id)))
			{
				Limpiar();
			}
			else
			{
			}
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			int id = Utilidades.TOINT(IdTextBox.Text);
			var presupuesto = new PresupuestoDetalle();

			presupuesto = PresupuestoDetalleBLL.Buscar(p => p.Id == id);

			if (presupuesto != null)
			{
				MetaTextBox.Text = presupuesto.Meta.ToString();
				LogradoTextBox.Text = presupuesto.Logrado.ToString();
				/* PresupuestoIdTexBox.Text = presupuesto.PresupuestoId;
				   DescripcionTextBox.Text = presupuesto.Descripcion;
				 */
			}
			else
			{
				Limpiar();
			}
		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			PresupuestoDetalle presupuesto = new PresupuestoDetalle();
			int id = 0;
			presupuesto = Llenar();
			if (id != presupuesto.PresupuestoId)
			{
				PresupuestoDetalleBLL.Modificar(presupuesto);
			}
			else
			{
				PresupuestoDetalleBLL.Guardar(presupuesto);

			}
			Limpiar();
		}
	}



}