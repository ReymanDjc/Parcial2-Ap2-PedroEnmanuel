﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2_Api2_PedroEnmanuel.UI.Reportes
{
	public partial class rPresupuestos : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			this.ReportViewer1.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
			this.ReportViewer1.Reset();


			this.ReportViewer1.LocalReport.ReportPath = @"C:\Users\Reyman Djc\Desktop\Parcial Aplicada 1\Presupuesto\Presupuesto\UI\Reportes\Report1.rdlc";
			this.ReportViewer1.LocalReport.DataSources.Clear();



			//this.ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSet", Consultas.cPresupuestos.Lista));

			this.ReportViewer1.LocalReport.Refresh();

		}
	}
}