<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="login1.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Çontent-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link href="Recursos/CSS/style.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body class="'bg-light">
    <div class="wrapper">
        <div class="formcontent">
            <form id="form_login" runat="server">
                <div class="form-control">
                    <div class="col-mb-6 text-center mb-5">
                        <asp:Label class="h3" ID="lblBienvenida" runat="server" Text="Welcome to FallOut 01"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                        <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="tbPassword" CssClass="form-control" runat="server" placeholder="Password"></asp:TextBox>
                    </div>
                    <hr />
                    <div class="row">
                        <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />
                    </div>

                </div>
            </form>

        </div>
    </div>


</body>
</html>
