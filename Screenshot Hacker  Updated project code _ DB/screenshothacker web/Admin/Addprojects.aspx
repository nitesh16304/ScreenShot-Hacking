<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Addprojects.aspx.cs" Inherits="Admin_Addprojects" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 29px;
        }
        .style4
        {
            height: 11px;
        }
        .style5
        {
            width: 447px;
        }
        .style6
        {
            height: 29px;
            width: 447px;
        }
        .style7
        {
            height: 11px;
            width: 447px;
        }
        .style8
        {
            height: 56px;
            width: 447px;
        }
        .style9
        {
            height: 56px;
        }
        .style10
        {
            width: 173px;
        }
        .style11
        {
            height: 29px;
            width: 173px;
        }
        .style12
        {
            height: 11px;
            width: 173px;
        }
        .style13
        {
            height: 56px;
            width: 173px;
        }
        .style14
        {
            height: 6px;
            width: 447px;
        }
        .style15
        {
            height: 6px;
            width: 173px;
        }
        .style16
        {
            height: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                </td>
                <td class="style11">
                </td>
                <td class="style3">
                </td>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="style5">
                </td>
                <td class="style10">
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style14">
                </td>
                <td class="style15">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="ProjectID"></asp:Label>
                </td>
                <td class="style16">
                    <asp:TextBox ID="txtpid" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="ProjectName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="ProjectType"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtptype" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10" style="margin-left: 40px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="ProjectDuration"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpduration" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10" style="margin-left: 40px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10" style="margin-left: 40px">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Technology"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttech" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                </td>
                <td class="style12" style="margin-left: 40px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="NoOfWorking"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtpersons" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                </td>
            </tr>
            <tr>
                <td class="style8">
                </td>
                <td class="style13" style="margin-left: 40px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Red" 
                        Height="28px" Text="Add" Width="77px" onclick="Button1_Click" />
                    &nbsp;</td>
                <td class="style9">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="Red" 
                        Height="30px" Text="Clear" Width="78px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="style9">
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
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

