<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AssignEmp.aspx.cs" Inherits="Admin_AssignEmp" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 441px;
        }
        .style4
        {
            width: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="Employ Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="Manager"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#3333CC" 
                    onclick="Button1_Click" Text="Assign" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#3333CC" 
                    Text="Cancle" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="Manager" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

