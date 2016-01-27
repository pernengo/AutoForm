﻿using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Reportes
{
    public partial class F31A_Dorso : Form
    {

        string _dfotocopiatitulo;
        string _dfotocopiafactura;
        string _dfotocopiacertificado;
        string _dfotocopiadespacho;
        string _dfotocopiabaja;
        string _dfotocopiacomprobante;
        string _dfotocopiaotros;
        string _observaciones;

        public F31A_Dorso(

           string p_dfotocopiatitulo,
string p_dfotocopiafactura,
string p_dfotocopiacertificado,
string p_dfotocopiadespacho,
string p_dfotocopiabaja,
string p_dfotocopiacomprobante,
string p_dfotocopiaotros,
string p_observaciones

            )
        {
            _dfotocopiatitulo = p_dfotocopiatitulo;
            _dfotocopiafactura = p_dfotocopiafactura;
            _dfotocopiacertificado = p_dfotocopiacertificado;
            _dfotocopiadespacho = p_dfotocopiadespacho;
            _dfotocopiabaja = p_dfotocopiabaja;
            _dfotocopiacomprobante = p_dfotocopiacomprobante;
            _dfotocopiaotros = p_dfotocopiaotros;
            _observaciones = p_observaciones;


            InitializeComponent();
            EstablecerHandlers();
        }
        private void EstablecerHandlers()
        {
          

        }



        private void reportViewer1_RenderingComplete(object sender, RenderingCompleteEventArgs e)
        {

          



        }

        private void F31_Dorso_Load(object sender, EventArgs e)
        {

            reportViewer1.LocalReport.SetParameters(new ReportParameter("p_dfotocopiatitulo", _dfotocopiatitulo));
            reportViewer1.LocalReport.SetParameters(new ReportParameter("p_dfotocopiafactura", _dfotocopiafactura));
            reportViewer1.LocalReport.SetParameters(new ReportParameter("p_dfotocopiacertificado", _dfotocopiacertificado));
            reportViewer1.LocalReport.SetParameters(new ReportParameter("p_dfotocopiadespacho", _dfotocopiadespacho));
            reportViewer1.LocalReport.SetParameters(new ReportParameter("p_dfotocopiabaja", _dfotocopiabaja));
            reportViewer1.LocalReport.SetParameters(new ReportParameter("p_dfotocopiacomprobante", _dfotocopiacomprobante));
            reportViewer1.LocalReport.SetParameters(new ReportParameter("p_dfotocopiaotros", _dfotocopiaotros));
            reportViewer1.LocalReport.SetParameters(new ReportParameter("p_observaciones", _observaciones));

            new Class.ReportingCalibration(reportViewer1);
        }
    }
}
