<%@ Page Language="C#" MasterPageFile="~/First.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 1130px; height: 189px; background-color:White; background-image: url('main-wrapper-bg.png');" 
    bgcolor="#CCCCFF">
      <tr>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style14" style="width: 111px; color: #FFFF00;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Yellow" 
                    Text="UserName" CssClass="style20" Font-Size="Large"></asp:Label>
            </td>
            <td class="style15" style="background-image: url('main-wrapper-bg.png')">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please enter username"></asp:RequiredFieldValidator>
            </td>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style8" style="width: 111px; color: #FFFF00;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Yellow" 
                    Text="Password" CssClass="style20" Font-Size="Large"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style3" style="width: 111px; color: #FFFF00;">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Yellow" 
                    Text="Role Name" CssClass="style20" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DDroleid" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">Admin</asp:ListItem>
                    <asp:ListItem Value="2">Manager</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" style="width: 111px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="Button2" 
                    runat="server" Font-Bold="True" ForeColor="Black" 
                    onclick="Button2_Click" Text="Login" />
            </td>
            <td>
                &nbsp;<asp:Button ID="Button1" runat="server" Height="27px" Text="Clear" 
                    Width="65px" Font-Bold="True" ForeColor="Black" onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#0066FF" 
                    Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
</table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style20
        {
            color: #FFFF00;
        }
        .style21
        {
            height: 23px;
            color: #FFFF00;
        }
    </style>
</asp:Content>


