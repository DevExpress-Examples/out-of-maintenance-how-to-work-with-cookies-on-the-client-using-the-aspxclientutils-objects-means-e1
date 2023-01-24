<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="CookieRoutinesSample" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" Namespace="DevExpress.Web"
    TagPrefix="dxe" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>

    <script type="text/javascript">
        function OnSelectedColorChanged(s, e) {
            var color = s.GetSelectedItem().value;
            document.body.style.backgroundColor = color;
            ASPxClientUtils.SetCookie("backgroundColor", color);
        }
        function OnColorComboBoxInit(s, e) {
            var color = ASPxClientUtils.GetCookie("backgroundColor");
            document.body.style.backgroundColor = color;
            if(color != null)
                s.SetValue(color);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select background color
            <dxe:ASPxComboBox id="cbColor" runat="server" SelectedIndex="0" ValueType="System.String">
                <items>
                <dxe:ListEditItem Text="None" Value="" />
                <dxe:ListEditItem Text="Lavender" Value="Lavender" />
                <dxe:ListEditItem Text="Light Yellow" Value="LightYellow" />
                <dxe:ListEditItem Text="Light Green" Value="LightGreen" />
            </items>
                <clientsideevents init="OnColorComboBoxInit" selectedindexchanged="OnSelectedColorChanged" />
            </dxe:ASPxComboBox>
            <br />
            Specify the page's background color by selecting an item within the combo box. Copy
            the page's URL, close the page, and then open it within the browser again, using
            the copied path. Note that the selected background color is preserved for the page.
        </div>
    </form>
</body>
</html>