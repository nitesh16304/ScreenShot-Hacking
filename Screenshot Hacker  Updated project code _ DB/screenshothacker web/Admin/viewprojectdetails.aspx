<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="viewprojectdetails.aspx.cs" Inherits="Admin_viewprojectdetails" Title="Untitled Page" %>

   
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 323px;
        }
        .style4
        {
            width: 197px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" ForeColor="#0033CC" Text="Project ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpid" runat="server" Enabled="False" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Project Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpname" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Project Type"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtptype" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Duration"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtduration" runat="server" Enabled="False" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label5" runat="server" ForeColor="Blue" Text="Discription"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdesc" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text="Technology"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttech" runat="server" Enabled="False" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label7" runat="server" ForeColor="Blue" 
                        Text="No of persons working"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnoofpersons" runat="server" Enabled="False" 
                        AutoPostBack="True"></asp:TextBox>
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
                    <asp:Button ID="BtnEdit" runat="server" Font-Bold="True" ForeColor="Red" 
                        onclick="BtnEdit_Click" Text="EDIT" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btnupdate" runat="server" Font-Bold="True" ForeColor="Red" 
                         Text="Update" onclick="Btnupdate_Click" />
                </td>
                <td>
                    <asp:Button ID="BtnCancel" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="Cancel" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnBack" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="BACK" onclick="BtnBack_Click" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Larger" ForeColor="Green" Text="Label" Visible="False"></asp:Label>
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

