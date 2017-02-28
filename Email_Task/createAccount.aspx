<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createAccount.aspx.cs" Inherits="Email_Task.createAccount" %>
<% @Import Namespace = "System.Data.SqlClient"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Name:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Address:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        E-mail Address:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Password:
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        Re-enter Password:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    
        <br />
        Security Question:
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        Security Answer:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" />
    
    </div>
        <%
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='C:\\Users\\Administrator\\documents\\visual studio 2015\\Projects\\Email_Task\\Email_Task\\App_Data\\Database1.mdf';Integrated Security=True"); 
            SqlCommand cmd = new SqlCommand();
            SqlDataReader R;
            con.Open();
            cmd.Connection = con;
        %>
    </form>
</body>
</html>
