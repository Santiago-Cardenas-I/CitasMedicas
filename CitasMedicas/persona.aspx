<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="persona.aspx.cs" Inherits="CitasMedicas.persona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/style.css" rel="stylesheet" />

    <main> 
        <div> 
            <h1>DATOS CLASS O PADRE</h1>
            <h3>Ingresar datos</h3>
            <div class="col-md-1">
                <asp:Label ID="Label1" Class="form-label" runat="server" Text="Label">Identificacion</asp:Label>
                <asp:TextBox ID="txtID" Class="form-Control" Type="numero" runat="server"></asp:TextBox>

            </div>
            <div class="col-md-1">
                <asp:Label ID="Label2" Class="form-label" runat="server" Text="Label">Apellido</asp:Label>
                <asp:TextBox ID="txtApellido" Class="form-Control" runat="server"></asp:TextBox>

            </div>
            <div class="col-md-1">
                  <asp:Label ID="Label3"  Class="form-label" runat="server" Text="Label">Nombre</asp:Label>
                  <asp:TextBox ID="txtNombre" Class="form-Control" runat="server"></asp:TextBox>

           </div>

            <div class="col-md-1">
                     <asp:Label ID="Label4" Class="form-label" runat="server" Text="Label">Celular</asp:Label>
                     <asp:TextBox ID="txtCelular" Class="form-Control" Type="numero" runat="server"></asp:TextBox>

           </div>
             <div class="col-md-1">
                    <asp:Label ID="Label5" Class="form-label" runat="server" Text="Label">Correo</asp:Label>
                     <asp:TextBox ID="txtCorreo" Class="form-Control" runat="server"></asp:TextBox>
           </div>
            <br />
            <div>
                <asp:Button ID="btnGuardar" runat="server" Text="Gurdar" OnClick="btnGuardar_Click" />
                <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" />
                <asp:Button ID="btnLimpiar" Class="" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />

            </div>

            

        </div>

        <div class="containerDetalles col">
            <asp:GridView ID="GridViewPersonas" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Identificación" SortExpression="Id" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="celular" HeaderText="Celular" SortExpression="Celular " />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                </Columns>
            </asp:GridView>


        </div>
    </main>

</asp:Content>
