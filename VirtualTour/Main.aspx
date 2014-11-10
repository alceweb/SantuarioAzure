<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="VirtualTour_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .ImgNews {
            height:300px;
            text-align: center;
            vertical-align: bottom;
            border-radius:4px;
            -webkit-box-shadow: 4px 4px 5px rgba(50, 50, 50, 0.75);
            -moz-box-shadow:    4px 4px 5px rgba(50, 50, 50, 0.75);
            box-shadow:         4px 4px 5px rgba(50, 50, 50, 0.75);

        }
        .Titolo {
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            color: #3D2614;
            text-transform: uppercase;
            text-shadow:2px 2px 5px #FFFFFF;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <h2>Tour virtuale del Santuario</h2>
                    <table celpadding="25px" cellspacing="25px" style="width: 650px; margin-right: auto; margin-left: auto;">
                    <thead>
                    </thead>
                    <tr>
                        <td class="Titolo">Dall'altare
                        <div id="dmd_pano_dIxWmE" ></div>
                            <script type="text/javascript">
                                var dmdEmbeds = dmdEmbeds || [], dIxWmE_w = '400', dIxWmE_h = '200';
                                (function () { dmdEmbeds.push('dIxWmE'); })();
                            </script>
                            <script type="text/javascript" src="http://static.dermandar.com/js/embed.js.php?v=88.78.59"></script>
                        </td>
                        <td class="Titolo">
                            Dal Sacro Speco
                            <div id="dmd_pano_bJnMGk"></div>
                            <script type="text/javascript">
                                var dmdEmbeds = dmdEmbeds || [], bJnMGk_w = '400', bJnMGk_h = '200';
                                (function () { dmdEmbeds.push('bJnMGk'); })();
                            </script>
                            <script type="text/javascript" src="http://static.dermandar.com/js/embed.js.php?v=88.78.59"></script>            </td>
                    </tr>
                    <tr>
                        <td class="Titolo">
                            Dall'altare esterno
                            <div id="dmd_pano_bQyDrt"></div>
                            <script type="text/javascript">
                                var dmdEmbeds = dmdEmbeds || [], bQyDrt_w = '400', bQyDrt_h = '200';
                                (function () { dmdEmbeds.push('bQyDrt'); })();
                            </script>
                            <script type="text/javascript" src="http://static.dermandar.com/js/embed.js.php?v=88.78.59"></script>
                        </td>
                        <td class="Titolo">
                            Dalla fontana
                            <div id="dmd_pano_dQahzq" ></div>
                            <script type="text/javascript">
                                var dmdEmbeds = dmdEmbeds || [], dQahzq_w = '400', dQahzq_h = '200';
                                (function () { dmdEmbeds.push('dQahzq'); })();
                            </script>
                            <script type="text/javascript" src="http://static.dermandar.com/js/embed.js.php?v=88.78.59"></script>
                        </td>
                    </tr>
                </table>
</asp:Content>

