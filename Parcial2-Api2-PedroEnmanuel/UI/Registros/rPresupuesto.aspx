<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rPresupuesto.aspx.cs" Inherits="Parcial2_Api2_PedroEnmanuel.UI.Registros.rPresupuesto" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Container-fluid">

            <div class="col-12">
                <h2><strong>Registro de Presupuestos</strong></h2>
                <div>

                </div>
               <div>
                   <table>
                       <tr>
                           <td>
                               <strong><asp:Label ID="Label1" runat="server" Text="PresupuestoId:"></asp:Label></strong>
                           </td>
                           <td>
                               <asp:TextBox ID="PresupuestoIdTextBox" runat="server" class="form-control" Height="30"  Width="100"></asp:TextBox>
                           </td>
                           <td>
                               &nbsp&nbsp <asp:Button ID="Button1" runat="server" class="btn btn-dark" Text="Buscar" OnClick="Button1_Click" />
                           </td>
                       </tr>

                   </table>                
               </div> 
                <div>
                    <strong><asp:Label ID="Label2" runat="server" Text="Fecha:"></asp:Label></strong>
                    <asp:TextBox ID="FechaTextBox" TextMode="Date" runat="server" class="form-control" Height="30"  Width="300"></asp:TextBox>
               </div> 
                <div>
                    <strong><asp:Label ID="Label3" runat="server" Text="Descripcion:"></asp:Label></strong>
                    <asp:TextBox ID="DescripcionTextBox" runat="server" class="form-control" Height="30"  Width="300"></asp:TextBox>
               </div> 
                <div>
                    <strong><asp:Label ID="Label4" runat="server" Text="Monto:"></asp:Label></strong>
                    <asp:TextBox ID="MontoTextBox" runat="server" class="form-control" Height="30"  Width="300"></asp:TextBox>
               </div>
                
                <div>
                <br />
                    <asp:Button ID="Button2" runat="server" class="btn btn-dark" Text="Nuevo" OnClick="Button2_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <asp:Button ID="Button3" runat="server" class="btn btn-dark" Text="Guardar" OnClick="Button3_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <asp:Button ID="Button4" runat="server" class="btn btn-dark" Text="Eliminar" OnClick="Button4_Click" />         
                </div>

            </div>
        </div>

</asp:Content>
