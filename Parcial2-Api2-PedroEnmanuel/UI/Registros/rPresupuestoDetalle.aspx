<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rPresupuestoDetalle.aspx.cs" Inherits="Parcial2_Api2_PedroEnmanuel.UI.Registros.rPresupuestoDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Container-fluid">

            <div class="col-12">
                <h2><strong>Registro de Presupuestos Detalle</strong></h2>
                <div>

                </div>
               <div>
                   <table>
                       <tr>
                           <td>
                               <strong><asp:Label ID="Label1" runat="server" Text="Id:"></asp:Label></strong>
                           </td>
                           <td>
                               <asp:TextBox ID="IdTextBox" runat="server" class="form-control" Height="30"  Width="100"></asp:TextBox>
                           </td>
                           <td>
                               &nbsp&nbsp<asp:Button ID="Button1" runat="server" class="btn btn-dark" Text="Buscar" OnClick="Button1_Click" />
                           </td>
                       </tr>

                   </table>                
               </div> 
                <div>
                    <strong><asp:Label ID="Label3" runat="server" Text="Meta:"></asp:Label></strong>
                    <asp:TextBox ID="MetaTextBox" runat="server" class="form-control" Height="30"  Width="300"></asp:TextBox>
               </div> 
                <div>
                    <strong><asp:Label ID="Label4" runat="server" Text="Logrado:"></asp:Label></strong>
                    <asp:TextBox ID="LogradoTextBox" runat="server" class="form-control" Height="30"  Width="300"></asp:TextBox>
               </div>
                <div>
                    <table>
                        <tr>
                            <td>
                                <strong><asp:Label ID="Label2" runat="server" Text="PresupuestoId:"></asp:Label></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="PresupuestoIdTextBox" runat="server" class="form-control" Height="30"  Width="95"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp<asp:Button ID="Button5" runat="server" class="btn btn-dark" Text="Agregar" />
                            </td>
                        </tr>
                    </table>
               </div> 
                <div>
                    <strong><asp:Label ID="Label5" runat="server" Text="Descripcion:"></asp:Label></strong>
                    <asp:TextBox ID="DescripcionTextBox" runat="server" class="form-control" Height="30"  Width="300"></asp:TextBox>
               </div>
                <div>
                    <asp:GridView ID="DetalleGridView" runat="server"></asp:GridView>
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
