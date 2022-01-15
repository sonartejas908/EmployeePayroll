<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayroll.WebForms.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../CSS/Login.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="total">
        <div class="card">

            <div class="logo">
                <img src="https://cdn-icons-png.flaticon.com/512/149/149071.png" alt="UserLogo" width="80" height="80">
            </div>
            <div class="header">
                <h4>User Login</h4>
            </div>
            <div class="inputsfield">
                <div class="MyName">
                    <h6>Email:</h6>
                    <div class="sample">
                        <asp:TextBox ID="TextBox1" placeholder="Enter Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="MyName">
                    <h6>Password:</h6>
                    <div class="sample">
                        <asp:TextBox ID="TextBox2" placeholder="Enter Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="Login">
                <a href="/WebForms/Register" class="link-dark">New User?</a>
            </div>
            <div class="checkboxandnext">
                <div class="checkbox">
                    <input type="checkbox" onclick="myFunction()">Show Password
                <script>
                    function myFunction() {
                        var x = document.getElementById("myInput");
                        if (x.type === "password") {
                            x.type = "text";
                        }
                        else {
                            x.type = "password";
                        }
                    }
                </script>
                </div>
                <div class="nextbutton">
                    <%--<button type="button" class="btn btn-secondary">Login</button>--%>
                    <asp:Button ID="Button1" runat="server" Text="Login" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
