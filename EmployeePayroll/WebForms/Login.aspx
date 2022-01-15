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
                    <input type="email" placeholder="email" />
                </div>
                <div class="MyName">
                    <h6>Password:</h6>
                    <input type="password" placeholder="password" id="myInput" />
                </div>
            </div>
            <div class="Login">
                <a href="#" class="link-dark">Login</a>
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
                    <button type="button" class="btn btn-secondary">Login</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
