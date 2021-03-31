<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewEmployees.aspx.cs" Inherits="Admin_ViewEmployees" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 23px;
        }
        .style4
        {
            width: 99px;
        }
        .style5
        {
            height: 23px;
            }
        .style6
        {
            width: 369px;
        }
        .style7
        {
            height: 23px;
            width: 369px;
        }
        .style8
        {
            height: 23px;
            width: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="Emp ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txteid" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                </td>
                <td class="style8">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtename" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="UserName"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtuid" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="Password"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtpwd" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="Phone No"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtphone" runat="server" Enabled="False" Width="128px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="Address"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtaddress" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="Email"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtemail" runat="server" Enabled="False" style="height: 22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="Experience"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtexp" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="Qualification"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtqual" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="Manager"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtmanager" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="Blue" Text="RoleID"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtroleid" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style5" colspan="2">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Red" 
                        onclick="Button1_Click" Text="Edit" Width="65px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="Update" onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="Cancle" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="Back" Width="56px" onclick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="14pt" 
                        ForeColor="Green" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

