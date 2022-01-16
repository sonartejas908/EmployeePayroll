<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="EmployeePayroll.WebForms.Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../CSS/Form.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            float: left;
            height: 466px;
        }
        .auto-style2 {
            width: 230px;
        }
        .auto-style3 {
            width: 230px;
            height: 58px;
        }
        .auto-style4 {
            height: 58px;
        }
        .auto-style5 {
            width: 230px;
            height: 53px;
        }
        .auto-style6 {
            height: 53px;
        }
        .auto-style7 {
            width: 230px;
            height: 37px;
        }
        .auto-style8 {
            height: 37px;
        }
        .auto-style9 {
            width: 230px;
            height: 60px;
        }
        .auto-style10 {
            height: 60px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <div class="total">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Employee Payroll Form</h5>
                    <table align="left" class="auto-style1">
                    <tr>
                        <td class="auto-style3">Name</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server" Width="497px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Profile Image</td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/Images/lady1.png" Width="43px" />
                            <asp:RadioButton ID="RadioButton1" runat="server" />
                            <asp:Image ID="Image2" runat="server" Height="39px" ImageUrl="~/Images/men1.png" Width="37px" />
                            <asp:RadioButton ID="RadioButton2" runat="server" />
                            <asp:Image ID="Image3" runat="server" Height="36px" ImageUrl="~/Images/lady2.png" Width="40px" />
                            <asp:RadioButton ID="RadioButton3" runat="server" />
                            <asp:Image ID="Image4" runat="server" Height="44px" ImageUrl="~/Images/men2.png" Width="30px" />
                            <asp:RadioButton ID="RadioButton4" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <br />
                            Gender</td>
                        <td class="auto-style10">
                            <asp:RadioButton ID="Male" runat="server" />Male
                            <asp:RadioButton ID="Female" runat="server" />Female
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Department</td>
                        <td>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            Hr<asp:CheckBox ID="CheckBox2" runat="server" />
                            Sales<asp:CheckBox ID="CheckBox3" runat="server" />
                            Finance<asp:CheckBox ID="CheckBox4" runat="server" />
                            Engineer<asp:CheckBox ID="CheckBox5" runat="server" />
                            Others</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Salary</td>
                        <td class="auto-style8"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Start Date</td>
                        <td class="auto-style6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Notes</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="mt-0" Height="77px" Width="432px"></asp:TextBox>
                        </td>
                    </tr>
                    </table>
                


            </div>
        </div>
    </div>

</asp:Content>
