<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EmployeePayroll.WebForms.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="../CSS/Register.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="total">
        <div class="card">

            <div class="logo">
                <img src="https://cdn-icons-png.flaticon.com/512/149/149071.png" alt="UserLogo" width="80" height="80">
            </div>
            <div class="header">
                <h4>User Registration</h4>
            </div>
            <div class="inputsfield">
                <div class="MyName">
                    <h6>Name:</h6>
                    <input type="text" placeholder="user name" />

                </div>
                <div class="MyName">
                    <h6>Email:</h6>
                    <input type="email" placeholder="email" />
                </div>
                <div class="MyName">
                    <h6>Mobile:</h6>
                    <input type="tel" placeholder="mobile" />
                </div>
                <div class="MyName">
                    <h6>Password:</h6>
                    <input type="password" placeholder="password" id="myInput" />
                </div>
            </div>
            <div class="signin">
                <a href="#" class="link-dark">Sign In</a>
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
                    <button type="button" class="btn btn-secondary">Next</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
