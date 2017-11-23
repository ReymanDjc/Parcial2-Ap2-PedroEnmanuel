<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cPresupuesto.aspx.cs" Inherits="Parcial2_Api2_PedroEnmanuel.UI.Consultas.cPresupuesto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="Container-fluid">
            <div class="col-12">
                <h1><strong>Consulta de Presupuestos</strong></h1>
                <div>
                    <table>
                        <tr>
                            <td>
                                <asp:DropDownList ID="PresupuestoDropDownList" runat="server">
                                    <asp:ListItem>Todo</asp:ListItem>
                                    <asp:ListItem>Fecha</asp:ListItem>
                                    <asp:ListItem>Descripcion</asp:ListItem>
                                    <asp:ListItem>Id</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="FiltrarTextBox" runat="server" class="form-control" Height="30"  Width="150"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp&nbsp<asp:Button ID="Button1" runat="server" class="btn btn-dark" Text="Filtrar" OnClick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" class="btn btn-dark" Text="Imprimir" OnClick="Button2_Click" />
                            </td>
                        </tr>

                    </table>  
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="FechaunoTextBox" TextMode="Date" runat="server" class="form-control" Height="25"  Width="175"></asp:TextBox> 
                                </td>
                                <td>
                                    &nbsp<strong><asp:Label ID="Label1" runat="server" Text="-">  </asp:Label></strong>&nbsp
                                </td>
                                <td>
                                    <asp:TextBox ID="FechadosTextBox" TextMode="Date" runat="server" class="form-control" Height="25"  Width="175"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                         
                    </div>
                </div>

                <div>
                    <asp:GridView ID="PresupuestoGridView" runat="server"></asp:GridView>
                </div>

            </div>

        </div>

</asp:Content>
