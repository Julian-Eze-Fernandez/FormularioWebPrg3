<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormularioWebPrg3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
        </section>

        <asp:Label ID="lblMensaje" runat="server" Text="Hola Mundo - Es la primera vez que se ha cargado la página"></asp:Label>
        <br />

        <asp:Label ID="lblContadorUsuarios" runat="server" Text="Cantidad de Usuarios ingresados:" ></asp:Label>
        <br />
       
        <asp:Label ID="lblContadorRecargas" runat="server" Text="La pagina se recargo x veces"></asp:Label>
        <br />
       
        <Button ID="btnRecargar" runat="server" Text="Recargar página" OnClick="btnRecargar_Click">Recargar pagina</Button>


    </main>

</asp:Content>


