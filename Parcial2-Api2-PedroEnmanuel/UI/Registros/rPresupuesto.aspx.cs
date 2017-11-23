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
	public partial class rPresupuesto : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{



		}

		private Presupuestos Llenar()
		{
			Presupuestos presupuesto = new Presupuestos();
			presupuesto.PresupuestoId = Utilidades.TOINT(PresupuestoIdTextBox.Text);
			presupuesto.Descripcion = DescripcionTextBox.Text;
			presupuesto.Fecha = Convert.ToDateTime(FechaTextBox.Text);
			presupuesto.Monto = Utilidades.TOINT(MontoTextBox.Text);
			return presupuesto;
		}

		private void Limpiar()
		{
			PresupuestoIdTextBox.Text = "";
			DescripcionTextBox.Text = "";
			FechaTextBox.Text = "";
			MontoTextBox.Text = "";
		}



		protected void Button3_Click(object sender, EventArgs e)
		{
			Presupuestos presupuesto = new Presupuestos();
			int id = 0;
			presupuesto = Llenar();
			if (id != presupuesto.PresupuestoId)
			{
				PresupuestoBLL.Modificar(presupuesto);
			}
			else
			{
				PresupuestoBLL.Guardar(presupuesto);
				
			}
			Limpiar();
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Limpiar();
		}

		protected void Button4_Click(object sender, EventArgs e)
		{
			int id = Utilidades.TOINT(PresupuestoIdTextBox.Text);

			if (PresupuestoBLL.Eliminar(PresupuestoBLL.Buscar(p => p.PresupuestoId == id)))
			{
				Limpiar();
			}
			else
			{
			}
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			int id = Utilidades.TOINT(PresupuestoIdTextBox.Text);
			var presupuesto = new Presupuestos();

			presupuesto = PresupuestoBLL.Buscar(p => p.PresupuestoId == id);

			if (presupuesto != null)
			{
				DescripcionTextBox.Text = presupuesto.Descripcion;
				MontoTextBox.Text = presupuesto.Monto.ToString();
				FechaTextBox.Text = presupuesto.Fecha.ToString();
			}
			else
			{
				Limpiar();
			}
		}
	}
}