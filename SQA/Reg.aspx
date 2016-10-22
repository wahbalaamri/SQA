<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="SQA.Cond" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>التسجيل</title>

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

  <%--  <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <span class="navbar-brand">جائزة السلطان قابوس للثقافة والفنون والآداب
                </span>
            </div>
        </div>
    </nav>--%>
    <div class="container">
        <div class="row">
            <div class="col-xs-7 col-xs-offset-5">
                <img src="bootstrap/images/logo.png" width="200" height="450" class="img-responsive" />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-11 col-xs-offset-1">
                <div class="well well-lg">
                    <form class="form-inline" id="from1" dir="rtl" runat="server">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:ValidationSummary ID="RegValidationSummary" CssClass="control-label" ForeColor="Red" runat="server" ValidationGroup="Reg" />
                        <div class="row">
                            <div class="alert text-center col-xs-8 col-xs-offset-2"><h4 class="h1">البيانات الشخصية للمترشح</h4></div>
                        </div>
                        <div class="row" dir="rtl">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="الجنسية: " ID="lblNationality" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-3 pull-right">
                                <asp:DropDownList ID="ddlNationality" CssClass="dropdown-toggle dl-horizontal" runat="server">
                                    <asp:ListItem>test</asp:ListItem>
                                    <asp:ListItem>test</asp:ListItem>
                                    <asp:ListItem>test</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvNationality" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال اسم المستخدم" ControlToValidate="ddlNationality" InitialValue="0" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="الهوية: " ID="lblUserID" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-3 pull-right">
                                <asp:TextBox ID="txtUserID" CssClass="form-control" runat="server" placeholder="الهوية: رقم البطاقة الشخصية للعمانيين ورقم جواز السفر لغيرهم"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUserID" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الهوية" ControlToValidate="txtUserID" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-xs-offset-2 pull-left">
                                <label class="label-info">الهوية: رقم البطاقة الشخصية للعمانيين ورقم جواز السفر لغيرهم</label>
                            </div>
                        </div>
                        <div class="row" dir="rtl">
                            <div class="col-xs-2 pull-right" dir="rtl">
                                <asp:Label runat="server" Text="الاسم الاول: " ID="lblUserFirstName" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:TextBox ID="txtUserFirstName" CssClass="form-control right" runat="server" placeholder="الاسم الاول"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUserFirstName" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الاول" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>

                            <div class="col-xs-2 pull-right" dir="rtl">
                                <asp:Label runat="server" Text="الاسم الثاني: " ID="Label1" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="الاسم الثاني"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الثاني" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row" dir="rtl">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="الاسم الثالث: " ID="Label2" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="الاسم الثالث"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الثالث" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="اسم العائلة أو القبيلة: " ID="Label3" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="العائلة أو القبيلة"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="تاريخ الميلاد: " ID="Label4" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="تاريخ الميلاد"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="يجب تاريخ الميلاد" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>

                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="الجنس: " ID="Label5" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:RadioButtonList ID="RadioButtonList1" CssClass="radio radio-inline h3" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Text="ذكر" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="أنثى" Value="1"></asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الاول" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="مكان الميلاد الدولة: " ID="Label6" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <ajaxToolkit:ComboBox ID="ComboBox1"  runat="server" AutoCompleteMode="SuggestAppend" AutoPostBack="true">
                                    <asp:ListItem Text="أختر" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="عمان" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="مصر" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="مسقط" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="البحرين" Value="0"></asp:ListItem>

                                </ajaxToolkit:ComboBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الاول" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>

                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="مكان الميلاد المدينة: " ID="Label7" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                 <ajaxToolkit:ComboBox ID="ComboBox2"  runat="server">
                                    <asp:ListItem Text="أختر" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="عمان" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="مصر" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="مسقط" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="البحرين" Value="0"></asp:ListItem>

                                </ajaxToolkit:ComboBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الاول" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="alert text-center col-xs-8 col-xs-offset-2"><h4 class="h1">بيانات الاتصال</h4></div>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="مكان الاقامة الدولة: " ID="Label8" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                 <ajaxToolkit:ComboBox ID="ComboBox3"  runat="server">
                                    <asp:ListItem Text="أختر" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="عمان" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="مصر" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="مسقط" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="البحرين" Value="0"></asp:ListItem>

                                </ajaxToolkit:ComboBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الاول" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="مكان الاقامة المدينة: " ID="Label9" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                 <ajaxToolkit:ComboBox ID="ComboBox4"  runat="server">
                                    <asp:ListItem Text="أختر" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="عمان" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="مصر" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="مسقط" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="البحرين" Value="0"></asp:ListItem>

                                </ajaxToolkit:ComboBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الاول" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="رقم الجوال: " ID="Label10" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="رقم الجوال"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال رقم الجوال" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="رقم أخر: " ID="Label11" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" placeholder="رقم أخر"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="البريد الإلكتروني: " ID="Label12" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-10">
                                <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" placeholder="البريد الإلكتروني"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال البريد الإلكتروني" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="العنوان البريدي: " ID="Label13" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-10 pull-right">
                                <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server" placeholder="العنوان البريدي"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال العنوان البريدي" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="alert text-center col-xs-8 col-xs-offset-2"><h4 class="h1">البيانات المهنية</h4></div>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="المؤهل الدراسي: " ID="Label14" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="--أختر واحدة" Value="0" ></asp:ListItem>
                                    <asp:ListItem Text="دكتوراة" Value="1" ></asp:ListItem>
                                    <asp:ListItem Text="ماجستير" Value="2" ></asp:ListItem>
                                    <asp:ListItem Text="بكالوريوس" Value="3" ></asp:ListItem>
                                    <asp:ListItem Text="دبلوم" Value="4" ></asp:ListItem>
                                    <asp:ListItem Text="دبلوم عام" Value="5" ></asp:ListItem>
                                    <asp:ListItem Text="أفضل عدم توضيح ذلك" Value="6" ></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="الحالة العملية: " ID="Label15" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                 <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Text="--أختر واحدة" Value="0" ></asp:ListItem>
                                     <asp:ListItem Text="طالب" Value="1" ></asp:ListItem>
                                    <asp:ListItem Text="يعمل" Value="2" ></asp:ListItem>
                                    <asp:ListItem Text="لا يعمل" Value="3" ></asp:ListItem>
                                     <asp:ListItem Text="عمل حر" Value="4" ></asp:ListItem>
                                    <asp:ListItem Text="متقاعد" Value="5" ></asp:ListItem>
                                   <asp:ListItem Text="أفضل عدم توضيح ذلك" Value="6" ></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="الوظيفة: " ID="Label16" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:TextBox ID="TextBox16" CssClass="form-control" runat="server" placeholder="الوظيفة"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الاول" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="مكان العمل: " ID="Label17" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-4 pull-right">
                                <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server" placeholder="مكان العمل"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الاول" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 pull-right">
                                <asp:Label runat="server" Text="رقم هاتف العمل: " ID="Label18" CssClass="control-label right"></asp:Label>
                            </div>
                            <div class="col-xs-2 pull-right">
                                <asp:TextBox ID="TextBox18" CssClass="form-control" runat="server" placeholder="رقم هاتف العمل"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ForeColor="Red" ErrorMessage="يجب إدخال الاسم الاول" ControlToValidate="txtUserFirstName" ValidationGroup="Reg">*</asp:RequiredFieldValidator>
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
