<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SQA.Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>الرئيسة</title>

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <span class="navbar-brand">جائزة السلطان قابوس للثقافة والفنون والآداب
                </span>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
          <div class="col-xs-5 col-xs-offset-5">
              <img src="bootstrap/images/logo.png" width="200" height="450" class="img-responsive" />
          </div>
      </div>
        <br />
        <div class="row">
            <div class="col-xs-10 col-xs-offset-1">
                <div class="well well-lg">
                    <form class="form-horizontal" id="from1" dir="rtl" runat="server">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                        <asp:ValidationSummary ID="LoginValidationSummary" CssClass="control-label" ForeColor="Red" runat="server" ValidationGroup="Login" />

                        <div class="form-group right" dir="rtl">
                            <asp:Label runat="server" Text="اسم المستخدم: " ID="lblUserLogin" CssClass="control-label col-xs-2 right col-xs-offset-8"></asp:Label>
                            <div class="col-xs-8 col-xs-offset-2">
                                <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" placeholder="اسم المستخدم"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال اسم المستخدم" ControlToValidate="txtUserName" ValidationGroup="Login">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group right" dir="rtl">
                            <asp:Label runat="server" Text="كلمة المرور: " ID="lblUserPass" CssClass="control-label col-xs-2 right col-xs-offset-8"></asp:Label>
                            <div class="col-xs-8 col-xs-offset-2">
                                <asp:TextBox ID="txtUserPass" TextMode="Password" CssClass="form-control" runat="server" placeholder="كلمة المرور"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUserPass" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال كلمة المرور" ControlToValidate="txtUserPass" ValidationGroup="Login">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group right" dir="rtl">


                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <asp:Button ID="btnLogin" runat="server" Text="تسجيل الدخول" ValidationGroup="Login" CssClass="btn btn-default col-xs-2" />
                                </div>
                                <div class="btn-group" role="group">
                                    <asp:Button ID="btnNewReg" runat="server" Text="تسجيل جديد" CssClass="btn btn-default col-xs-2" OnClick="btnNewReg_Click" />
                                </div>
                            </div>
                        </div>
                        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                        <!-- Include all compiled plugins (below), or include individual files as needed -->
                        <script src="bootstrap/js/bootstrap.min.js"></script>
                    </form>
                </div>
            </div>
        </div>

    </div>





</body>
</html>
