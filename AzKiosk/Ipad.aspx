<%@ Page Title="iPad Home" Language="C#" MasterPageFile="~/Ipad.Master" AutoEventWireup="true" CodeBehind="Ipad.aspx.cs" Inherits="WaterSimUI._Ipad" %>

<%@ Register Src="UserControls/OutputUserControl.ascx" TagName="OutputUserControl" TagPrefix="Wsmo" %>

<%@ Register Src="UserControls/InputUserControl.ascx" TagName="InputUserControl" TagPrefix="Wsmi" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="GraphControls">
    <%--QUAY EDIT 3/29/16 Begin--%>
    <link href="Content/WSA_Assessment.css" rel="stylesheet" />
    <div id="idAssessment" style="background-color: #e6e6e6; width: 100%; height: 100%; border-radius: 24px; left: 24px; right: 24px; top: 24px/*; bottom: 24px; */">
    </div>

    <%--QUAY EDIT 3/29/16 Begin--%>
    
    <div id="main-input-container">
        <div id="policyPane" class="tab-pane input-pane active" role="tabpanel">
            <div class="chart-controls" id="flow-controls">
                <div id="policy-source-controls">
                    <span class="policy-title">How much...</span>
                </div>

                <div id="policy-consumer-controls">
                    <span class="policy-title">How efficiently will...</span>
                </div>

                <div id="pageslide-button-container" class="easter-egg"></div>
            </div>
        </div>
    </div>

    <div id="main-output-container" style="float: left;">
        <div id="sankey-container">
            <span class="sankey-title">How balanced is your system in 2050...</span>
            <div id="sankey-div" class="chart">
                <Wsmo:OutputUserControl runat="server" ID="OutputUserControl3" Type="WSASK" FieldName="GW_P,REC_P,SUR_P,SURL_P,SAL_P,UD_P,AD_P,ID_P,PD_P,UDN_P,ADN_P,IDN_P,PDN_P,SUR_UD_P,SUR_AD_P,SUR_ID_P,SUR_PD_P,SURL_UD_P,SURL_AD_P,SURL_ID_P,SURL_PD_P,GW_UD_P,GW_AD_P,GW_ID_P,GW_PD_P,SAL_UD_P,SAL_AD_P,SAL_ID_P,SAL_PD_P,REC_UD_P,REC_AD_P,REC_ID_P,REC_PD_P" Title="Sandkey" SeriesColors="5" />
            </div>
        </div>

        <div class="indicators-container">
            <div class="indicators-sustainability">
                <span class="indicators-title">How healthy is your...</span>
                <div class="indicators-content">
                </div>
            </div>

            <div class="indicators-efficiency">
                <span class="indicators-title">How efficient are...</span>
                <div class="indicators-content">
                </div>
            </div>
        </div>

        <div style="clear: both;"></div>
    </div>

    <div style="clear: both;"></div>

</asp:Content>


