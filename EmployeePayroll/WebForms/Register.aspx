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
                    <div>
                        <h6>Name:</h6>
                    </div>
                    <div class="sample">
                        <asp:TextBox ID="TextBox1" placeholder="Enter Full Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="MyName">
                    <div>
                        <h6>Email:</h6>
                    </div>
                    <div class="sample">
                        <asp:TextBox ID="TextBox2" placeholder="Enter Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="MyName">
                    <div>
                        <h6>Mobile:</h6>
                    </div>
                    <div class="sample">
                        <asp:TextBox ID="TextBox3" placeholder="Enter mobile" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile cannot be blank" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="MyName">
                    <div>
                    <h6>Password:</h6>
                        </div>
                    <div class="sample">
                        <asp:TextBox ID="TextBox4" type="password" placeholder="Enter Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="signin">
                <a href="/WebForms/Login" class="link-dark">Already have an Account ?</a>
            
            </div>
            <div class="checkboxandnext">
                <div class="checkbox">
                    <%--<input type="checkbox" runat="server" onclick="myFunction()">Show Password--%>
                    <asp:CheckBox ID="CheckBox1"  runat="server" onclick="myFunction()"/> Show Password

                <script>
                    function myFunction() {
                        var x = document.getElementById("TextBox4");
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
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
