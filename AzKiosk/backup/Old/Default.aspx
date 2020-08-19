<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WaterSimUI._Default" %>

<%@ Register src="UserControls/OutputUserControl.ascx" tagname="OutputUserControl" tagprefix="Wsmo" %>

<%@ Register src="UserControls/InputUserControl.ascx" tagname="InputUserControl" tagprefix="Wsmi" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="GraphControls">
  
    <%--QUAY EDIT 3/29/16 Begin--%>
    <link href="Content/WSA_Assessment.css" rel="stylesheet" />
    <div id="idAssessment" style="background-color: #e6e6e6; width: 100%; height: 100%; border-radius: 24px; left: 24px; right: 24px; top: 24px/*; bottom: 24px; */">
    </div>

    <%--QUAY EDIT 3/29/16 Begin--%>

    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:300,400,600,700&amp;lang=en" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <div style="float: left;"></div>
    <div style="float: left;"></div>

    <!-- Nav tabs -->
    <ul id="newTab" class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link custom-nav-link active" data-toggle="tab" id="flowDiagram-tab" name="#flowDiagram" role="tab">Flow Diagram</a>
        </li>
        <li class="nav-item">
            <a class="nav-link custom-nav-link" data-toggle="tab" id="barCharts-tab" name="#barCharts" role="tab">Bar Charts</a>
        </li>
        <li class="nav-item">
            <a class="nav-link custom-nav-link" data-toggle="tab" id="lineCharts-tab" name="#lineCharts" role="tab">Line Charts</a>
        </li>
        <li class="nav-item">
            <a class="nav-link custom-nav-link" data-toggle="tab" id="inputsPane-tab" name="#inputsPane" role="tab">Inputs</a>
        </li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content" style="float: left;">
        <div class="tab-pane active" id="flowDiagram" role="tabpanel" style="position: relative;">
            <div class="chart-controls" id="flow-controls" style="float:left; margin-right: 20px;">
                <span class="policy-title">Water Distribution Options</span>
            </div>
            <div class="chart" style="display: inline-block; height: 500px; margin-top: 10px;">
                <Wsmo:OutputUserControl runat="server" ID="OutputUserControl3" Type="WSASK" FieldName="" Title="Sandkey" SeriesColors="5" />
            </div>
            <%--<div id="left-controls" style="display: inline-block; height: 500px;">
                
            </div>
            <div class="chart" style="display: inline-block; height: 500px;">
                <Wsmo:OutputUserControl runat="server" ID="OutputUserControl3" Type="WSASK" FieldName="" Title="Sandkey" SeriesColors="5" />
            </div>
            <div id="right-controls" style="display: inline-block; height: 500px;">
                
            </div>--%>
            <div style="clear: both;"></div>
        </div>
        <div class="tab-pane realclearfix" id="barCharts" role="tabpanel">
            <div class="chart-controls" id="chart-controls" style="float:left; margin-right: 20px;">
                <span class="policy-title">Water Distribution Options</span>
            </div>
            <div id="barChart-container" style="float:left;">
                <div class="chart" style="display: inline-block; margin-right: 5px; margin-top: 10px;">
                    <Wsmo:OutputUserControl runat="server" ID="OutputUserControl5" Type="WSASC" FieldName="UD_P,AD_P,ID_P,PD_P,UDN_P,ADN_P,IDN_P,PDN_P" Title="Consumers Total Demand" SeriesColors="5" />
                </div>
                <div class="chart" style="display: inline-block; margin-top: 10px;">
                    <Wsmo:OutputUserControl runat="server" ID="OutputUserControl6" Type="WSASF" FieldName="SUR_UD_P,SUR_AD_P,SUR_ID_P,SUR_PD_P,SURL_UD_P,SURL_AD_P,SURL_ID_P,SURL_PD_P,GW_UD_P,GW_AD_P,GW_ID_P,GW_PD_P,SAL_UD_P,SAL_AD_P,SAL_ID_P,SAL_PD_P,REC_UD_P,REC_AD_P,REC_ID_P,REC_PD_P" Title="Consumers" SeriesColors="5" />
                </div>
            </div>
            <div style="clear: both;"></div>
        </div>
        <div class="tab-pane realclearfix" id="lineCharts" role="tabpanel">
            <div class="chart-controls" id="line-chart-controls" style="float:left; margin-right: 20px;">
                <span class="policy-title">Water Distribution Options</span>
            </div>
            <div id="lineChart-container" style="float:left;">
                <div class="chart" style="display: inline-block; margin-right: 5px; margin-top: 10px;">
                    <Wsmo:OutputUserControl runat="server" ID="OutputUserControl7" Type="WSASL" FieldName="UD_P,AD_P,ID_P,PD_P,UDN_P,ADN_P,IDN_P,PDN_P" Title="Consumers Total Demand" SeriesColors="5" />
                </div>
                <%--<div class="item transition total"><div class="chart">
                    <Wsmo:OutputUserControl runat="server" ID="OutputControl7" Type="OFMP" FieldName="TOTDEM" Title="Total Water Use"  SeriesColors="5"/></div>
                </div>
 			    <div class="item transition population"><div class="chart">
                     <Wsmo:OutputUserControl runat="server" ID="OutputControl8" Type="OFMP" FieldName="POPUSED" Title="Population"  SeriesColors="5"/></div>
 			    </div>--%>
            </div>
            <div style="clear: both;"></div>
        </div>
        <div id="inputsPane" class="tab-pane realclearfix" role="tabpanel" style="margin-bottom: 25px;">
            <div id="inputs-controls" style="float:left; margin-right: 20px;">
                <span class="policy-title">Climate Distribution Options</span>
                <div id="CLIMInputUserControl_controlgroup" class="realclearfix controlgroup" style="display: block;">
                    <span id="CLIMInputUserControl_lblSliderfldName" class="field-name">Drought Impacts on Rivers/Lakes</span>
                    <br />
                    <div id="CLIMInputUserControl_buttonset" class="radio-container-climate" style="float:left;">
                        <input type="radio" id="CLIMInputUserControl_radio_5" name="CLIMInputUserControl_radio" value="5" /><label class="input-button-0" for="CLIMInputUserControl_radio_5">Flood</label>

                        <input type="radio" id="CLIMInputUserControl_radio_0" name="CLIMInputUserControl_radio" value="0" checked="checked"/><label class="input-button-1" for="CLIMInputUserControl_radio_0">No Effect</label>
                        <input type="radio" id="CLIMInputUserControl_radio_1" name="CLIMInputUserControl_radio" value="1"/><label class="input-button-2" for="CLIMInputUserControl_radio_1">Slight</label>
                        <input type="radio" id="CLIMInputUserControl_radio_3" name="CLIMInputUserControl_radio" value="3" /><label class="input-button-3" for="CLIMInputUserControl_radio_3">Moderate</label>
                        <input type="radio" id="CLIMInputUserControl_radio_4" name="CLIMInputUserControl_radio" value="4" /><label class="input-button-4" for="CLIMInputUserControl_radio_4">Severe</label>
                    </div>
                </div>
                <div id="DCInputUserControl_controlgroup" class="realclearfix controlgroup" style="display: block;">
                    <span id="DCInputUserControl_lblSliderfldName" class="field-name">Drought Impacts Rate</span>
                    <br />
                    <div id="DCInputUserControl_buttonset" class="radio-container-climate" style="float:left;">
                        <input type="radio" id="DCInputUserControl_radio_5" name="DCInputUserControl_radio" value="5" /><label class="input-button-0" for="DCInputUserControl_radio_5">Flood</label>

                        <input type="radio" id="DCInputUserControl_radio_0" name="DCInputUserControl_radio" value="0" checked="checked"/><label class="input-button-1" for="DCInputUserControl_radio_0">No Effect</label>
                        <input type="radio" id="DCInputUserControl_radio_1" name="DCInputUserControl_radio" value="1"/><label class="input-button-2" for="DCInputUserControl_radio_1">Slight</label>
                        <input type="radio" id="DCInputUserControl_radio_3" name="DCInputUserControl_radio" value="3" /><label class="input-button-3" for="DCInputUserControl_radio_3">Moderate</label>
                        <input type="radio" id="DCInputUserControl_radio_4" name="DCInputUserControl_radio" value="4" /><label class="input-button-4" for="DCInputUserControl_radio_4">Severe</label>
                    </div>
                </div>
                <%--<div id="GraphControls_InputUserControl123_ControlContainer" class="InputControlStyleOnly" data-key="CLIM_P">
                    <span id="GraphControls_InputUserControl123_lblSliderfldName" style="color:#0e7bd4;">Drought Impacts on Rivers/Lakes</span>  <span id="GraphControls_InputUserControl123_lblSliderVal" style="display: none;">0</span>
                    <span id="GraphControls_InputUserControl123_lblunits"></span>
                    <div id="GraphControls_InputUserControl123_containerHelp" class="help">
                        <input id="GraphControls_InputUserControl123_hvHelpURI" value="Content/HELPFILES/" type="hidden"/>
                    </div>
                    <span id="GraphControls_InputUserControl123_lblSliderKeyWord" style="display: none;">CLIM_P</span>
                    <div id="CLIMInputUserControl_buttonset" class="radio-container-flat realclearfix controlgroup">
                        <input type="radio" id="CLIMInputUserControl_radio_5" name="CLIMInputUserControl_radio" value="5" /><label for="CLIMInputUserControl_radio_5">Flood</label>

                        <input type="radio" id="CLIMInputUserControl_radio_0" name="CLIMInputUserControl_radio" value="0" checked="checked"/><label for="CLIMInputUserControl_radio_0">No Effect</label>
                        <input type="radio" id="CLIMInputUserControl_radio_1" name="CLIMInputUserControl_radio" value="1"/><label for="CLIMInputUserControl_radio_1">Slight</label>
                        <input type="radio" id="CLIMInputUserControl_radio_3" name="CLIMInputUserControl_radio" value="3" /><label for="CLIMInputUserControl_radio_3">Moderate</label>
                        <input type="radio" id="CLIMInputUserControl_radio_4" name="CLIMInputUserControl_radio" value="4" /><label for="CLIMInputUserControl_radio_4">Severe</label>
                    </div>
                </div>
                <div id="GraphControls_InputUserControl234_ControlContainer" class="InputControlStyleOnly" data-key="DC_P">
                    <span id="GraphControls_InputUserControl234_lblSliderfldName" style="color:#0e7bd4;">Drought Impacts Control-controls rate</span>  <span id="GraphControls_InputUserControl234_lblSliderVal" style="display: none;">0</span>
                    <span id="GraphControls_InputUserControl234_lblunits"></span>
                    <div id="GraphControls_InputUserControl234_containerHelp" class="help">
                        <input id="GraphControls_InputUserControl234_hvHelpURI" value="Content/HELPFILES/" type="hidden"/>
                    </div>
                    <span id="GraphControls_InputUserControl234_lblSliderKeyWord" style="display: none;">DC_P</span>
                    <div id="DCInputUserControl_buttonset" class="radio-container-flat realclearfix controlgroup">
                        <input type="radio" id="DCInputUserControl_radio_5" name="DCInputUserControl_radio" value="5" /><label for="DCInputUserControl_radio_5">Flood</label>

                        <input type="radio" id="DCInputUserControl_radio_0" name="DCInputUserControl_radio" value="0" checked="checked"/><label for="DCInputUserControl_radio_0">No Effect</label>
                        <input type="radio" id="DCInputUserControl_radio_1" name="DCInputUserControl_radio" value="1"/><label for="DCInputUserControl_radio_1">Slight</label>
                        <input type="radio" id="DCInputUserControl_radio_3" name="DCInputUserControl_radio" value="3" /><label for="DCInputUserControl_radio_3">Moderate</label>
                        <input type="radio" id="DCInputUserControl_radio_4" name="DCInputUserControl_radio" value="4" /><label for="DCInputUserControl_radio_4">Severe</label>
                    </div>
                </div>--%>
            </div>
            <div style="clear: both;"></div>
        </div>
    </div>
    <div class="assessment">
        <div class="assessment-header">
            <div class="assessment-title-space"></div>
            <span class="assessment-title">Assessment: </span><span class="assessment-status indicator-meter-color-color-4">Uh oh!</span>
            <div class="assessment-line-break"></div>
            <span class="assessment-status-info">Water supplies are not sufficient to meet demand resulting in a small deficit.</span>
            <div style="clear:both"></div>
        </div>
        <div class="assessment-indicator">
            <svg viewBox="400 400 40 40">
                <g transform="translate(403 407)">
                    <circle class="indicator-meter-fill-color-4" cx="18.5" cy="18.5" r="18.5" transform="translate(-2.31 -6.042)" />
                    <path class="assessment-white" d="M42.159,188.454l.038.423a19.287,19.287,0,0,0-4.695,8.428,50.833,50.833,0,0,0-.308,6.734s4.887-2.27,6.58-4.31l.423.231s-4.156,4.31-6.734,5.618a29.185,29.185,0,0,0,2.5,6.273l-2.848-.154a25.456,25.456,0,0,1-1.347-12.045,13.166,13.166,0,0,0-3.271-5.041l.231-.269a18.231,18.231,0,0,1,3.425,3.81,19.325,19.325,0,0,1,1.924-5,24.148,24.148,0,0,1-1.77-5.349h.231a15.156,15.156,0,0,0,1.963,4.695A30.844,30.844,0,0,1,42.159,188.454Z" transform="translate(-25.265 -181.412)" />
                    <path class="assessment-white" d="M13.7,185.6s1.231,12.045,8.043,10.275a6.189,6.189,0,0,1-2.463-4.695s4.156.577,4.733,2.54C24.013,193.681,26.822,187.447,13.7,185.6Z" transform="translate(-13.7 -180.059)" />
                    <path class="assessment-white" d="M37.208,171.2s-3.156,5.926.577,7.273c0,0-.423-1.924.346-2.925a3.457,3.457,0,0,1,1.5,2.463S42.827,175.779,37.208,171.2Z" transform="translate(-27.395 -171.2)" />
                    <path class="assessment-white" d="M52.275,181.434s-1.924-5.041,8.466-5.734c0,0-1.886,9.582-6.811,7.5,0,0,1.385-.346,2.155-3.463C56.047,179.741,52.853,179.971,52.275,181.434Z" transform="translate(-37.344 -173.968)" />
                    <path class="assessment-white" d="M50.97,208.451s-2.54-7.927,13.738-8.351c0,0-3.463,14.777-11.237,11.352,0,0,1.809.346,3.617-5.349C57.089,206.065,52.2,206.065,50.97,208.451Z" transform="translate(-36.54 -188.979)" />
                </g>
            </svg>
            <span class="assessment-indicator-prefix">The natural environment</span>
            <span class="assessment-indicator-info">in and along rivers and lakes is no longer viable. Air quality is poor, heat is undesirable, and recreation is limited.</span>
        </div>

        <div class="assessment-indicator">
            <svg viewBox="400 400 40 40">
                <g transform="translate(415 412)">
                    <circle class="indicator-meter-fill-color-4" cx="18.5" cy="18.5" r="18.5" transform="translate(-14.406 -10.689)" />
                    <path class="assessment-white" d="M44.612,37.316a1.363,1.363,0,0,0-.335-1,3.033,3.033,0,0,0-1.115-.706,9.4,9.4,0,0,1-2.862-1.6,3.414,3.414,0,0,1,.074-4.683A4.264,4.264,0,0,1,42.9,28.247V26.5h1.3v1.784a3.792,3.792,0,0,1,2.379,1.227,3.729,3.729,0,0,1,.855,2.6v.037h-2.75a2.218,2.218,0,0,0-.335-1.338,1.128,1.128,0,0,0-.929-.446,1.055,1.055,0,0,0-.892.372,1.541,1.541,0,0,0-.3.929,1.463,1.463,0,0,0,.3.929,3.076,3.076,0,0,0,1.152.706,10.872,10.872,0,0,1,2.825,1.635,3.466,3.466,0,0,1-.037,4.683,4.019,4.019,0,0,1-2.453,1.041v1.673h-1.3V40.661a4.606,4.606,0,0,1-2.676-1.115A3.655,3.655,0,0,1,39,36.684l.037-.037h2.75a2.031,2.031,0,0,0,.446,1.487,1.6,1.6,0,0,0,1.152.446,1.1,1.1,0,0,0,.892-.335A1.3,1.3,0,0,0,44.612,37.316Z" transform="translate(-39 -26.5)" />
                </g>
            </svg>
            <span class="assessment-indicator-prefix">Local businesses</span>
            <span class="assessment-indicator-info">that provide the community jobs and income are no longer viable. Jobs and income have rapidly declined.</span>
        </div>

        <div class="assessment-indicator">
            <svg viewBox="400 400 40 40">
                <g transform="translate(405 408)">
                    <circle class="indicator-meter-fill-color-1" cx="18.5" cy="18.5" r="18.5" transform="translate(-3.849 -6.142)" />
                    <g id="bottom" transform="translate(0 11.352)">
                        <path class="assessment-white" d="M11,365.8l.117,4.471s2.6.622,3.382.311a7.617,7.617,0,0,1,5.987.428c1.322.622,5.248,3.227,8.319,3.654,2.955.428,3.032.7,6.8,0,3.81-.7,2.294-8.825,2.294-8.825H11Z" transform="translate(-10.572 -365.8)" />
                        <path class="assessment-white" d="M9.9,382.106a20.469,20.469,0,0,1,11.157,2.177c4.393,2.216,9.252,4.354,17.261.078a34.034,34.034,0,0,1-8.125,1.011c-3.771-.039-8.4-2.721-12.013-3.849C15.148,380.59,9.9,382.106,9.9,382.106Z" transform="translate(-9.9 -375.225)" />
                        <path class="assessment-white" d="M9.9,388.506a20.469,20.469,0,0,1,11.157,2.177c4.393,2.216,9.252,4.354,17.261.078a34.037,34.037,0,0,1-8.125,1.011c-3.771-.039-8.4-2.721-12.013-3.849C15.148,386.99,9.9,388.506,9.9,388.506Z" transform="translate(-9.9 -379.137)" />
                    </g>
                    <g transform="translate(3.071 3.732)">
                        <rect class="assessment-white" width="6.92" height="3.266" transform="translate(1.127 4.082)" />
                        <path class="assessment-white" d="M22.387,346.2,17.8,349.932h9.214Z" transform="translate(-17.8 -346.2)" />
                    </g>
                    <g transform="translate(15.006 0)">
                        <path class="assessment-white" d="M53.827,353.8s-.117,4.354-1.516,4.471,5.637,0,5.637,0-1.438-.233-1.283-4.471Z" transform="translate(-50.717 -347.113)" />
                        <path class="assessment-white" d="M55.109,338.894V338.7a2.167,2.167,0,0,0-2.216-2.1,2.2,2.2,0,0,0-2.255,2.06v.194a2.1,2.1,0,1,0,.078,4.2h4.121a2.143,2.143,0,0,0,2.216-2.1A2.048,2.048,0,0,0,55.109,338.894Z" transform="translate(-48.5 -336.6)" />
                    </g>
                </g>
            </svg>
            <span class="assessment-indicator-prefix">Local groundwater supplies</span>
            <span class="assessment-indicator-info">are stable. Though drought or rapid demand increase may cause problems.</span>
        </div>

        <div class="assessment-indicator">
            <svg viewBox="400 400 40 40">
                <g transform="translate(382 376)">
                    <circle class="indicator-meter-fill-color-2" cx="18.5" cy="18.5" r="18.5" transform="translate(18.247 25.508)" />
                    <path class="assessment-white" d="M22.069,15.031a.426.426,0,0,0-.47-.417s-5.844,0-5.949-.157a24.009,24.009,0,0,1-.365-3.444.391.391,0,0,0-.365-.313H10.537a.44.44,0,0,0-.365.365c-.052.47-.365,3.5-.626,3.548-.157,0-5.062.052-5.27.052H3.7a9.476,9.476,0,0,0-2.192.209A1.949,1.949,0,0,0,.1,16.231c-.209.678-.052,7.044-.052,7.044a.528.528,0,0,0,.313.47,9.23,9.23,0,0,0,2.818.365,8.872,8.872,0,0,0,2.5-.313A.47.47,0,0,0,6,23.484c.1-.417-.052-2.661.1-2.922,0,0,2.713-.261,3.287-.209a7.549,7.549,0,0,1,1.357.365,5.527,5.527,0,0,0,1.879.47h0a5.188,5.188,0,0,0,1.774-.417,4.821,4.821,0,0,1,1.409-.417c.417-.052,5.531,0,5.844,0a.468.468,0,0,0,.47-.47C22.121,19.258,22.173,15.97,22.069,15.031Z" transform="translate(25.487 25.636)" />
                    <path class="assessment-white" d="M19.053,4.853V3.6c.1-.1.209-.157.313-.261.1-.052.157-.157.261-.209.1,0,.209.052.313.052a10.165,10.165,0,0,1,1.2.313c.1.052.209.052.313.1a5.683,5.683,0,0,0,1.357.261h.313a1.76,1.76,0,0,0,1.565-1.879A1.846,1.846,0,0,0,23.071.209H22.81a5.479,5.479,0,0,0-1.826.417,4.847,4.847,0,0,1-.678.209c-.052,0-.157.052-.209.052a1.936,1.936,0,0,1-.47.1c-.052,0-.157-.1-.209-.209a2.2,2.2,0,0,0-.626-.522A3.042,3.042,0,0,0,17.487,0a3.418,3.418,0,0,0-1.3.261,1.972,1.972,0,0,0-.626.47L15.4.887c-.417-.052-.835-.209-1.3-.313A5.492,5.492,0,0,0,12.217.157H11.9a1.981,1.981,0,0,0-1.461,1.1,1.876,1.876,0,0,0,.052,1.67,1.986,1.986,0,0,0,1.357.939h.365a5.2,5.2,0,0,0,1.826-.417,2.942,2.942,0,0,1,.626-.209c.052,0,.157-.052.209-.052a1.936,1.936,0,0,1,.47-.1h0c.052,0,.1.1.209.209a3.094,3.094,0,0,0,.417.417v1.2Z" transform="translate(20.571 30.752)" />
                    <path class="assessment-white" d="M4.864,41.965c-.313-.417-1.2-1.565-1.252-1.565s-.731,1.148-1.044,1.565a.916.916,0,0,1-.209.261C1.994,42.748.9,44.314,2.1,45.462a2.177,2.177,0,0,0,1.513.574,2.245,2.245,0,0,0,1.618-.626,1.817,1.817,0,0,0,.522-1.461A3.316,3.316,0,0,0,4.864,41.965Z" transform="translate(24.741 11.434)" />
                </g>
            </svg>
            <span class="assessment-indicator-prefix">Community residents and businesses</span>
            <span class="assessment-indicator-info">are using more water than is really needed to maintain the quality of life and economy.</span>
        </div>

        <div class="assessment-indicator">
            <svg viewBox="400 400 40 40">
                <g transform="translate(415 405)">
                    <circle class="indicator-meter-fill-color-0" cx="18.5" cy="18.5" r="18.5" transform="translate(-14.144 -3.407)" />
                    <g>
                        <path class="assessment-white" d="M57.658,60.984A3.039,3.039,0,0,0,61.32,57.5l-1.69.431C56.484,58.948,57.658,60.984,57.658,60.984Z" transform="translate(-52.994 -46.736)" />
                        <path class="assessment-white" d="M61.32,65.4l-1.69.431c-3.145,1.018-1.972,3.053-1.972,3.053A3.039,3.039,0,0,0,61.32,65.4Z" transform="translate(-52.994 -51.544)" />
                        <path class="assessment-white" d="M61.32,73.7l-1.69.431c-3.145,1.018-1.972,3.053-1.972,3.053A3.039,3.039,0,0,0,61.32,73.7Z" transform="translate(-52.994 -56.595)" />
                        <path class="assessment-white" d="M61.32,81.7l-1.69.431c-3.145,1.018-1.972,3.053-1.972,3.053A3.039,3.039,0,0,0,61.32,81.7Z" transform="translate(-52.994 -61.464)" />
                        <path class="assessment-white" d="M51.644,60.923s1.174-2.035-1.972-3.053l-1.69-.47A3.072,3.072,0,0,0,51.644,60.923Z" transform="translate(-47.966 -46.675)" />
                        <path class="assessment-white" d="M51.644,68.884s1.174-2.035-1.972-3.053l-1.69-.431A3.039,3.039,0,0,0,51.644,68.884Z" transform="translate(-47.966 -51.544)" />
                        <path class="assessment-white" d="M51.644,77.184s1.174-2.035-1.972-3.053l-1.69-.431A3.039,3.039,0,0,0,51.644,77.184Z" transform="translate(-47.966 -56.595)" />
                        <path class="assessment-white" d="M51.644,85.184s1.174-2.035-1.972-3.053l-1.69-.431A3.039,3.039,0,0,0,51.644,85.184Z" transform="translate(-47.966 -61.464)" />
                        <path class="assessment-white" d="M55.216,53.148a1.871,1.871,0,0,0,.892-3.014L55.263,49C55.31,48.96,52.212,51.348,55.216,53.148Z" transform="translate(-51.116 -41.562)" />
                        <rect class="assessment-white" width="0.704" height="6.38" transform="translate(5.697 1.448)" />
                        <rect class="assessment-white" width="0.704" height="6.38" transform="translate(7.34 3.679)" />
                        <rect id="base" class="assessment-white" width="0.704" height="7.515" transform="translate(3.772 24.151)" />
                        <rect class="assessment-white" width="0.704" height="6.38" transform="translate(3.772)" />
                        <rect class="assessment-white" width="0.704" height="6.38" transform="translate(1.941 1.448)" />
                        <rect class="assessment-white" width="0.704" height="6.38" transform="translate(0.345 3.679)" />
                    </g>
                </g>
            </svg>
            <span class="assessment-indicator-prefix">Farmers</span>
            <span class="assessment-indicator-info">are using very efficient farmer practices even though the cost to do this is higher.</span>
        </div>

        <div class="assessment-indicator">
            <svg viewBox="400 400 40 40">
                <g transform="translate(407 406)">
                    <circle class="indicator-meter-fill-color-4" cx="18.5" cy="18.5" r="18.5" transform="translate(-5.707 -5.281)" />
                    <path id="building" class="assessment-white" d="M17.235,29.375v3l-8.618-3v3l-2.434-.831-.46-8.088A2.476,2.476,0,0,0,4.342,23.2a2.476,2.476,0,0,0-1.381.253L2.5,30.241,0,29.375V39.16H25.853V32.372Z" transform="translate(0 -14.823)" />
                    <path id="smoke" class="assessment-white" d="M22.248,0c-2.894,0-5.2,1.264-5.2,2.853h0a6.226,6.226,0,0,0-4.539.614,1.906,1.906,0,0,0-.921,1.192,5.287,5.287,0,0,0-3.421.578c-1.25.794-1.053,1.986.395,2.636a5.442,5.442,0,0,0,4.8-.217,2.2,2.2,0,0,0,.724-.758,6.358,6.358,0,0,0,4.539-.578,1.89,1.89,0,0,0,.855-1.047,8.3,8.3,0,0,0,2.763.433c2.894,0,5.2-1.264,5.2-2.853C27.379,1.264,25.076,0,22.248,0Z" transform="translate(-2.513)" />
                    <g id="Windows">
                        <rect class="indicator-meter-fill-color-4" width="5.723" height="1.517" transform="translate(2.96 19.246)" />
                        <rect class="indicator-meter-fill-color-4" width="5.723" height="1.517" transform="translate(10.065 19.246)" />
                        <rect class="indicator-meter-fill-color-4" width="5.723" height="1.517" transform="translate(17.169 19.246)" />
                    </g>
                </g>
            </svg>
            <span class="assessment-indicator-prefix">Large industry such as mining  and material processing</span>
            <span class="assessment-indicator-info">are using more water than is needed to maintain a viable agriculture economy.</span>
        </div>

        <div class="assessment-indicator">
            <svg viewBox="400 400 40 40">
                <g transform="translate(405 403)">
                    <circle class="indicator-meter-fill-color-3" cx="18.5" cy="18.5" r="18.5" transform="translate(-4.111 -0.979)" />
                    <g transform="translate(-1719.953 -116.703)">
                        <path class="assessment-white" d="M19.708,11.081a3.922,3.922,0,0,0-.046-.73h2.6A4.635,4.635,0,0,0,17.793,5.7a6.742,6.742,0,0,0-1.14-1.14l1.824-1.824a4.628,4.628,0,0,0-6.43-.137,5.519,5.519,0,0,0-.866-.046,3.923,3.923,0,0,0-.73.046V0A4.635,4.635,0,0,0,5.8,4.469a6.742,6.742,0,0,0-1.14,1.14L2.836,3.785a4.628,4.628,0,0,0-.137,6.43,5.519,5.519,0,0,0-.046.866,3.923,3.923,0,0,0,.046.73H.1a4.635,4.635,0,0,0,4.469,4.651,6.742,6.742,0,0,0,1.14,1.14L3.885,19.426a4.628,4.628,0,0,0,6.43.137,5.518,5.518,0,0,0,.866.046,3.922,3.922,0,0,0,.73-.046v2.6a4.635,4.635,0,0,0,4.651-4.469,6.742,6.742,0,0,0,1.14-1.14l1.824,1.824a4.628,4.628,0,0,0,.137-6.43C19.662,11.674,19.708,11.4,19.708,11.081Z" transform="translate(1723.27 119.724)" />
                        <path class="indicator-meter-fill-color-3" d="M23.51,14.2H21.138c-.046,0-.046,0-.046.046l-4.788,5.2a.087.087,0,0,0,.046.137h2.006a.087.087,0,0,1,.046.137l-2.417,3.6c-.046.091.046.182.137.091l7.3-6.11c.046-.046.046-.137-.046-.137H21.138c-.091,0-.091-.091-.046-.137l2.508-2.69C23.646,14.291,23.6,14.2,23.51,14.2Z" transform="translate(1714.417 111.999)" />
                        <g transform="translate(1723 142.57)">
                            <path class="assessment-white" d="M0,51.924a13.759,13.759,0,0,1,8.8.41c3.648,1.414,7.706,2.6,13.087-2.234a22.8,22.8,0,0,1-6.019,2.006c-2.873.5-6.794-1.277-9.713-1.824C3.739,49.872,0,51.924,0,51.924Z" transform="translate(0 -50.1)" />
                            <path class="assessment-white" d="M.9,56.824a13.759,13.759,0,0,1,8.8.41c3.648,1.414,7.706,2.6,13.087-2.234a22.8,22.8,0,0,1-6.019,2.006c-2.873.5-6.794-1.277-9.713-1.824C4.594,54.772.9,56.824.9,56.824Z" transform="translate(-0.49 -52.766)" />
                        </g>
                    </g>
                </g>
            </svg>
            <span class="assessment-indicator-prefix">Power Plants</span>
            <span class="assessment-indicator-info">are struggling and price of electricity and brown outs is increasing.</span>
        </div>

        <%--<div class="assessment-indicator">
            <svg viewBox="400 400 40 40">
                <g transform="translate(415 405)">

                </g>
            </svg>
            <span class="assessment-indicator-prefix">REPLACE</span>
            <span class="assessment-indicator-info">REPLACE</span>
        </div>--%>


        
        <%--<svg xmlns="http://www.w3.org/2000/svg" viewBox="3387.282 463 643.718 484.719">
            <defs>
                <style>
                    .cls-1, .cls-4 {
                        fill: #4e4d4d;
                    }

                    .cls-1 {
                        font-size: 13px;
                    }

                    .cls-1, .cls-6 {
                        font-family: Lato-Bold, Lato;
                        font-weight: 700;
                    }

                    .cls-2, .cls-3 {
                        font-family: Lato-Regular, Lato;
                    }

                    .cls-2 {
                        font-weight: 400;
                    }

                    .cls-10, .cls-3, .cls-6 {
                        fill: #e6585d;
                    }

                    .cls-3 {
                        font-size: 30px;
                    }

                    .cls-5 {
                        fill: #000;
                    }

                    .cls-7, .cls-9 {
                        fill: #e88a3c;
                    }

                    .cls-10, .cls-12, .cls-13, .cls-14, .cls-15, .cls-7 {
                        opacity: 0.9;
                    }

                    .cls-8 {
                        fill: #fff;
                    }

                    .cls-11, .cls-15 {
                        fill: #e8686c;
                    }

                    .cls-12 {
                        fill: #60bf7e;
                    }

                    .cls-13 {
                        fill: #f4d13a;
                    }

                    .cls-14 {
                        fill: #92cc81;
                    }
                </style>
            </defs>
            <g id="Assessment" transform="translate(2189 -23)">
                <text id="Local_businesses_that_provide_the_community_jobs_and_income_are_no_longer_viable._Jobs_and_income_have_rapidly_declined." data-name="Local businesses that provide the community jobs and income are no longer viable. Jobs and income 
have rapidly declined."
                    class="cls-1" transform="translate(1249 644)">
                    <tspan x="0" y="0">Local businesses </tspan>
                    <tspan class="cls-2" y="0">that provide the community jobs and income are no longer viable. Jobs and income </tspan>
                    <tspan class="cls-2">
                        <tspan x="0" y="14">have rapidly declined.</tspan>
                    </tspan>
                </text>
                <text id="Large_industry_such_as_mining_and_material_processing_are_using_more_water_than_is_needed_to_maintain_a_viable_agriculture_economy." data-name="Large industry such as mining  and material processing are using more water than is needed to maintain 
a viable agriculture economy."
                    class="cls-1" transform="translate(1249 893)">
                    <tspan x="0" y="0" xml:space="preserve">Large industry such as mining  and material processing </tspan>
                    <tspan class="cls-2" y="0">are using more water than is needed to maintain </tspan>
                    <tspan class="cls-2">
                        <tspan x="0" y="14">a viable agriculture economy.</tspan>
                    </tspan>
                </text>
                <text id="The_natural_environment_in_and_along_rivers_and_lakes_is_no_longer_viable._Air_quality_is_poor_heat_is_undesirable_and_recreation_is_limited._" data-name="The natural environment in and along rivers and lakes is no longer viable. Air quality is poor, heat is 
undesirable, and recreation is limited. "
                    class="cls-1" transform="translate(1251 582)">
                    <tspan x="0" y="0">The natural environment</tspan>
                    <tspan class="cls-2" y="0" xml:space="preserve"> in and along rivers and lakes is no longer viable. Air quality is poor, heat is </tspan>
                    <tspan class="cls-2">
                        <tspan x="0" y="14">undesirable, and recreation is limited. </tspan>
                    </tspan>
                </text>
                <text id="Local_groundwater_supplies_are_stable._Though_drought_or_rapid_demand_increase_may_cause_problems." data-name="Local groundwater supplies are stable. Though drought or rapid demand increase may cause problems." class="cls-1" transform="translate(1249 709)">
                    <tspan x="0" y="0">Local groundwater supplies </tspan>
                    <tspan class="cls-2" y="0">are stable. Though drought or rapid demand increase may cause problems.</tspan>
                </text>
                <text id="Community_residents_and_businesses_are_using_more_water_than_is_really_needed_to_maintain_the_quality_of_life_and_economy." data-name="Community residents and businesses are using more water than is really needed to maintain the quality 
of life and economy."
                    class="cls-1" transform="translate(1249 761)">
                    <tspan x="0" y="0">Community residents and businesses </tspan>
                    <tspan class="cls-2" y="0">are using more water than is really needed to maintain the quality </tspan>
                    <tspan class="cls-2">
                        <tspan x="0" y="14">of life and economy.</tspan>
                    </tspan>
                </text>
                <text id="Farmers_are_using_very_efficient_farmer_practices_even_though_the_cost_to_do_this_is_higher." data-name="Farmers are using very efficient farmer practices even though the cost to do this is higher." class="cls-1" transform="translate(1249 832)">
                    <tspan x="0" y="0">Farmers </tspan>
                    <tspan class="cls-2" y="0">are using very efficient farmer practices even though the cost to do this is higher.</tspan>
                </text>
                <text id="Assessment:_Uh_oh_" data-name="Assessment: Uh oh!" class="cls-3" transform="translate(1246 516)">
                    <tspan class="cls-4" x="0" y="0">Assessment:</tspan>
                    <tspan class="cls-5" y="0"></tspan>
                    <tspan class="cls-6" y="0">Uh oh!</tspan>
                </text>
                <text id="Power_Plants_are_struggling_and_price_of_electricity_and_brown_outs_is_increasing." data-name="Power Plants are struggling and price of electricity and brown outs is increasing." class="cls-1" transform="translate(1249 955)">
                    <tspan x="0" y="0">Power Plants </tspan>
                    <tspan class="cls-2" y="0">are struggling and price of electricity and brown outs is increasing.</tspan>
                </text>
                <text id="Water_supplies_are_not_sufficient_to_meet_demand_resulting_in_a_small_deficit." data-name="Water supplies are not sufficient to meet demand resulting in a small deficit." class="cls-1" transform="translate(1247 538)">
                    <tspan x="0" y="0">Water supplies are not sufficient to meet demand resulting in a small deficit.</tspan>
                </text>
                <g id="Power" transform="translate(1202.393 934.699)">
                    <circle id="Ellipse_32" data-name="Ellipse 32" class="cls-7" cx="18.5" cy="18.5" r="18.5" transform="translate(-4.111 -0.979)" />
                    <g id="Group_207" data-name="Group 207" transform="translate(-1719.953 -116.703)">
                        <path id="gear" class="cls-8" d="M19.708,11.081a3.922,3.922,0,0,0-.046-.73h2.6A4.635,4.635,0,0,0,17.793,5.7a6.742,6.742,0,0,0-1.14-1.14l1.824-1.824a4.628,4.628,0,0,0-6.43-.137,5.519,5.519,0,0,0-.866-.046,3.923,3.923,0,0,0-.73.046V0A4.635,4.635,0,0,0,5.8,4.469a6.742,6.742,0,0,0-1.14,1.14L2.836,3.785a4.628,4.628,0,0,0-.137,6.43,5.519,5.519,0,0,0-.046.866,3.923,3.923,0,0,0,.046.73H.1a4.635,4.635,0,0,0,4.469,4.651,6.742,6.742,0,0,0,1.14,1.14L3.885,19.426a4.628,4.628,0,0,0,6.43.137,5.518,5.518,0,0,0,.866.046,3.922,3.922,0,0,0,.73-.046v2.6a4.635,4.635,0,0,0,4.651-4.469,6.742,6.742,0,0,0,1.14-1.14l1.824,1.824a4.628,4.628,0,0,0,.137-6.43C19.662,11.674,19.708,11.4,19.708,11.081Z" transform="translate(1723.27 119.724)" />
                        <path id="lightning" class="cls-9" d="M23.51,14.2H21.138c-.046,0-.046,0-.046.046l-4.788,5.2a.087.087,0,0,0,.046.137h2.006a.087.087,0,0,1,.046.137l-2.417,3.6c-.046.091.046.182.137.091l7.3-6.11c.046-.046.046-.137-.046-.137H21.138c-.091,0-.091-.091-.046-.137l2.508-2.69C23.646,14.291,23.6,14.2,23.51,14.2Z" transform="translate(1714.417 111.999)" />
                        <g id="waves" transform="translate(1723 142.57)">
                            <path id="Path_80" data-name="Path 80" class="cls-8" d="M0,51.924a13.759,13.759,0,0,1,8.8.41c3.648,1.414,7.706,2.6,13.087-2.234a22.8,22.8,0,0,1-6.019,2.006c-2.873.5-6.794-1.277-9.713-1.824C3.739,49.872,0,51.924,0,51.924Z" transform="translate(0 -50.1)" />
                            <path id="Path_81" data-name="Path 81" class="cls-8" d="M.9,56.824a13.759,13.759,0,0,1,8.8.41c3.648,1.414,7.706,2.6,13.087-2.234a22.8,22.8,0,0,1-6.019,2.006c-2.873.5-6.794-1.277-9.713-1.824C4.594,54.772.9,56.824.9,56.824Z" transform="translate(-0.49 -52.766)" />
                        </g>
                    </g>
                </g>
                <g id="Indu" transform="translate(1203.988 882)">
                    <circle id="Ellipse_29" data-name="Ellipse 29" class="cls-10" cx="18.5" cy="18.5" r="18.5" transform="translate(-5.707 -5.281)" />
                    <path id="building" class="cls-8" d="M17.235,29.375v3l-8.618-3v3l-2.434-.831-.46-8.088A2.476,2.476,0,0,0,4.342,23.2a2.476,2.476,0,0,0-1.381.253L2.5,30.241,0,29.375V39.16H25.853V32.372Z" transform="translate(0 -14.823)" />
                    <path id="smoke" class="cls-8" d="M22.248,0c-2.894,0-5.2,1.264-5.2,2.853h0a6.226,6.226,0,0,0-4.539.614,1.906,1.906,0,0,0-.921,1.192,5.287,5.287,0,0,0-3.421.578c-1.25.794-1.053,1.986.395,2.636a5.442,5.442,0,0,0,4.8-.217,2.2,2.2,0,0,0,.724-.758,6.358,6.358,0,0,0,4.539-.578,1.89,1.89,0,0,0,.855-1.047,8.3,8.3,0,0,0,2.763.433c2.894,0,5.2-1.264,5.2-2.853C27.379,1.264,25.076,0,22.248,0Z" transform="translate(-2.513)" />
                    <g id="Windows">
                        <rect id="Rectangle_44" data-name="Rectangle 44" class="cls-11" width="5.723" height="1.517" transform="translate(2.96 19.246)" />
                        <rect id="Rectangle_45" data-name="Rectangle 45" class="cls-11" width="5.723" height="1.517" transform="translate(10.065 19.246)" />
                        <rect id="Rectangle_46" data-name="Rectangle 46" class="cls-11" width="5.723" height="1.517" transform="translate(17.169 19.246)" />
                    </g>
                </g>
                <g id="Agri" transform="translate(1212.688 814.964)">
                    <circle id="Ellipse_30" data-name="Ellipse 30" class="cls-12" cx="18.5" cy="18.5" r="18.5" transform="translate(-14.144 -3.407)" />
                    <g id="Group_55" data-name="Group 55">
                        <path id="Path_91" data-name="Path 91" class="cls-8" d="M57.658,60.984A3.039,3.039,0,0,0,61.32,57.5l-1.69.431C56.484,58.948,57.658,60.984,57.658,60.984Z" transform="translate(-52.994 -46.736)" />
                        <path id="Path_92" data-name="Path 92" class="cls-8" d="M61.32,65.4l-1.69.431c-3.145,1.018-1.972,3.053-1.972,3.053A3.039,3.039,0,0,0,61.32,65.4Z" transform="translate(-52.994 -51.544)" />
                        <path id="Path_93" data-name="Path 93" class="cls-8" d="M61.32,73.7l-1.69.431c-3.145,1.018-1.972,3.053-1.972,3.053A3.039,3.039,0,0,0,61.32,73.7Z" transform="translate(-52.994 -56.595)" />
                        <path id="Path_94" data-name="Path 94" class="cls-8" d="M61.32,81.7l-1.69.431c-3.145,1.018-1.972,3.053-1.972,3.053A3.039,3.039,0,0,0,61.32,81.7Z" transform="translate(-52.994 -61.464)" />
                        <path id="Path_95" data-name="Path 95" class="cls-8" d="M51.644,60.923s1.174-2.035-1.972-3.053l-1.69-.47A3.072,3.072,0,0,0,51.644,60.923Z" transform="translate(-47.966 -46.675)" />
                        <path id="Path_96" data-name="Path 96" class="cls-8" d="M51.644,68.884s1.174-2.035-1.972-3.053l-1.69-.431A3.039,3.039,0,0,0,51.644,68.884Z" transform="translate(-47.966 -51.544)" />
                        <path id="Path_97" data-name="Path 97" class="cls-8" d="M51.644,77.184s1.174-2.035-1.972-3.053l-1.69-.431A3.039,3.039,0,0,0,51.644,77.184Z" transform="translate(-47.966 -56.595)" />
                        <path id="Path_98" data-name="Path 98" class="cls-8" d="M51.644,85.184s1.174-2.035-1.972-3.053l-1.69-.431A3.039,3.039,0,0,0,51.644,85.184Z" transform="translate(-47.966 -61.464)" />
                        <path id="Path_99" data-name="Path 99" class="cls-8" d="M55.216,53.148a1.871,1.871,0,0,0,.892-3.014L55.263,49C55.31,48.96,52.212,51.348,55.216,53.148Z" transform="translate(-51.116 -41.562)" />
                        <rect id="Rectangle_53" data-name="Rectangle 53" class="cls-8" width="0.704" height="6.38" transform="translate(5.697 1.448)" />
                        <rect id="Rectangle_54" data-name="Rectangle 54" class="cls-8" width="0.704" height="6.38" transform="translate(7.34 3.679)" />
                        <rect id="base" class="cls-8" width="0.704" height="7.515" transform="translate(3.772 24.151)" />
                        <rect id="Rectangle_56" data-name="Rectangle 56" class="cls-8" width="0.704" height="6.38" transform="translate(3.772)" />
                        <rect id="Rectangle_57" data-name="Rectangle 57" class="cls-8" width="0.704" height="6.38" transform="translate(1.941 1.448)" />
                        <rect id="Rectangle_58" data-name="Rectangle 58" class="cls-8" width="0.704" height="6.38" transform="translate(0.345 3.679)" />
                    </g>
                </g>
                <g id="Urban" transform="translate(1180.297 722.681)">
                    <circle id="Ellipse_31" data-name="Ellipse 31" class="cls-13" cx="18.5" cy="18.5" r="18.5" transform="translate(18.247 25.508)" />
                    <path id="body" class="cls-8" d="M22.069,15.031a.426.426,0,0,0-.47-.417s-5.844,0-5.949-.157a24.009,24.009,0,0,1-.365-3.444.391.391,0,0,0-.365-.313H10.537a.44.44,0,0,0-.365.365c-.052.47-.365,3.5-.626,3.548-.157,0-5.062.052-5.27.052H3.7a9.476,9.476,0,0,0-2.192.209A1.949,1.949,0,0,0,.1,16.231c-.209.678-.052,7.044-.052,7.044a.528.528,0,0,0,.313.47,9.23,9.23,0,0,0,2.818.365,8.872,8.872,0,0,0,2.5-.313A.47.47,0,0,0,6,23.484c.1-.417-.052-2.661.1-2.922,0,0,2.713-.261,3.287-.209a7.549,7.549,0,0,1,1.357.365,5.527,5.527,0,0,0,1.879.47h0a5.188,5.188,0,0,0,1.774-.417,4.821,4.821,0,0,1,1.409-.417c.417-.052,5.531,0,5.844,0a.468.468,0,0,0,.47-.47C22.121,19.258,22.173,15.97,22.069,15.031Z" transform="translate(25.487 25.636)" />
                    <path id="handle" class="cls-8" d="M19.053,4.853V3.6c.1-.1.209-.157.313-.261.1-.052.157-.157.261-.209.1,0,.209.052.313.052a10.165,10.165,0,0,1,1.2.313c.1.052.209.052.313.1a5.683,5.683,0,0,0,1.357.261h.313a1.76,1.76,0,0,0,1.565-1.879A1.846,1.846,0,0,0,23.071.209H22.81a5.479,5.479,0,0,0-1.826.417,4.847,4.847,0,0,1-.678.209c-.052,0-.157.052-.209.052a1.936,1.936,0,0,1-.47.1c-.052,0-.157-.1-.209-.209a2.2,2.2,0,0,0-.626-.522A3.042,3.042,0,0,0,17.487,0a3.418,3.418,0,0,0-1.3.261,1.972,1.972,0,0,0-.626.47L15.4.887c-.417-.052-.835-.209-1.3-.313A5.492,5.492,0,0,0,12.217.157H11.9a1.981,1.981,0,0,0-1.461,1.1,1.876,1.876,0,0,0,.052,1.67,1.986,1.986,0,0,0,1.357.939h.365a5.2,5.2,0,0,0,1.826-.417,2.942,2.942,0,0,1,.626-.209c.052,0,.157-.052.209-.052a1.936,1.936,0,0,1,.47-.1h0c.052,0,.1.1.209.209a3.094,3.094,0,0,0,.417.417v1.2Z" transform="translate(20.571 30.752)" />
                    <path id="water" class="cls-8" d="M4.864,41.965c-.313-.417-1.2-1.565-1.252-1.565s-.731,1.148-1.044,1.565a.916.916,0,0,1-.209.261C1.994,42.748.9,44.314,2.1,45.462a2.177,2.177,0,0,0,1.513.574,2.245,2.245,0,0,0,1.618-.626,1.817,1.817,0,0,0,.522-1.461A3.316,3.316,0,0,0,4.864,41.965Z" transform="translate(24.741 11.434)" />
                </g>
                <g id="Ground" transform="translate(1202.393 695.699)">
                    <circle id="Ellipse_27" data-name="Ellipse 27" class="cls-14" cx="18.5" cy="18.5" r="18.5" transform="translate(-3.849 -6.142)" />
                    <g id="bottom" transform="translate(0 11.352)">
                        <path id="ground-2" data-name="ground" class="cls-8" d="M11,365.8l.117,4.471s2.6.622,3.382.311a7.617,7.617,0,0,1,5.987.428c1.322.622,5.248,3.227,8.319,3.654,2.955.428,3.032.7,6.8,0,3.81-.7,2.294-8.825,2.294-8.825H11Z" transform="translate(-10.572 -365.8)" />
                        <path id="wave" class="cls-8" d="M9.9,382.106a20.469,20.469,0,0,1,11.157,2.177c4.393,2.216,9.252,4.354,17.261.078a34.034,34.034,0,0,1-8.125,1.011c-3.771-.039-8.4-2.721-12.013-3.849C15.148,380.59,9.9,382.106,9.9,382.106Z" transform="translate(-9.9 -375.225)" />
                        <path id="wave-2" data-name="wave" class="cls-8" d="M9.9,388.506a20.469,20.469,0,0,1,11.157,2.177c4.393,2.216,9.252,4.354,17.261.078a34.037,34.037,0,0,1-8.125,1.011c-3.771-.039-8.4-2.721-12.013-3.849C15.148,386.99,9.9,388.506,9.9,388.506Z" transform="translate(-9.9 -379.137)" />
                    </g>
                    <g id="house" transform="translate(3.071 3.732)">
                        <rect id="Rectangle_131" data-name="Rectangle 131" class="cls-8" width="6.92" height="3.266" transform="translate(1.127 4.082)" />
                        <path id="Path_310" data-name="Path 310" class="cls-8" d="M22.387,346.2,17.8,349.932h9.214Z" transform="translate(-17.8 -346.2)" />
                    </g>
                    <g id="tree" transform="translate(15.006 0)">
                        <path id="Path_311" data-name="Path 311" class="cls-8" d="M53.827,353.8s-.117,4.354-1.516,4.471,5.637,0,5.637,0-1.438-.233-1.283-4.471Z" transform="translate(-50.717 -347.113)" />
                        <path id="Path_312" data-name="Path 312" class="cls-8" d="M55.109,338.894V338.7a2.167,2.167,0,0,0-2.216-2.1,2.2,2.2,0,0,0-2.255,2.06v.194a2.1,2.1,0,1,0,.078,4.2h4.121a2.143,2.143,0,0,0,2.216-2.1A2.048,2.048,0,0,0,55.109,338.894Z" transform="translate(-48.5 -336.6)" />
                    </g>
                </g>
                <g id="Econ" transform="translate(1212.688 636.408)">
                    <circle id="Ellipse_26" data-name="Ellipse 26" class="cls-15" cx="18.5" cy="18.5" r="18.5" transform="translate(-14.406 -10.689)" />
                    <path id="Path_306" data-name="Path 306" class="cls-8" d="M44.612,37.316a1.363,1.363,0,0,0-.335-1,3.033,3.033,0,0,0-1.115-.706,9.4,9.4,0,0,1-2.862-1.6,3.414,3.414,0,0,1,.074-4.683A4.264,4.264,0,0,1,42.9,28.247V26.5h1.3v1.784a3.792,3.792,0,0,1,2.379,1.227,3.729,3.729,0,0,1,.855,2.6v.037h-2.75a2.218,2.218,0,0,0-.335-1.338,1.128,1.128,0,0,0-.929-.446,1.055,1.055,0,0,0-.892.372,1.541,1.541,0,0,0-.3.929,1.463,1.463,0,0,0,.3.929,3.076,3.076,0,0,0,1.152.706,10.872,10.872,0,0,1,2.825,1.635,3.466,3.466,0,0,1-.037,4.683,4.019,4.019,0,0,1-2.453,1.041v1.673h-1.3V40.661a4.606,4.606,0,0,1-2.676-1.115A3.655,3.655,0,0,1,39,36.684l.037-.037h2.75a2.031,2.031,0,0,0,.446,1.487,1.6,1.6,0,0,0,1.152.446,1.1,1.1,0,0,0,.892-.335A1.3,1.3,0,0,0,44.612,37.316Z" transform="translate(-39 -26.5)" />
                </g>
                <g id="Envir" transform="translate(1202.854 574.23)">
                    <circle id="Ellipse_28" data-name="Ellipse 28" class="cls-10" cx="18.5" cy="18.5" r="18.5" transform="translate(-2.31 -6.042)" />
                    <path id="Path_313" data-name="Path 313" class="cls-8" d="M42.159,188.454l.038.423a19.287,19.287,0,0,0-4.695,8.428,50.833,50.833,0,0,0-.308,6.734s4.887-2.27,6.58-4.31l.423.231s-4.156,4.31-6.734,5.618a29.185,29.185,0,0,0,2.5,6.273l-2.848-.154a25.456,25.456,0,0,1-1.347-12.045,13.166,13.166,0,0,0-3.271-5.041l.231-.269a18.231,18.231,0,0,1,3.425,3.81,19.325,19.325,0,0,1,1.924-5,24.148,24.148,0,0,1-1.77-5.349h.231a15.156,15.156,0,0,0,1.963,4.695A30.844,30.844,0,0,1,42.159,188.454Z" transform="translate(-25.265 -181.412)" />
                    <path id="Path_314" data-name="Path 314" class="cls-8" d="M13.7,185.6s1.231,12.045,8.043,10.275a6.189,6.189,0,0,1-2.463-4.695s4.156.577,4.733,2.54C24.013,193.681,26.822,187.447,13.7,185.6Z" transform="translate(-13.7 -180.059)" />
                    <path id="Path_315" data-name="Path 315" class="cls-8" d="M37.208,171.2s-3.156,5.926.577,7.273c0,0-.423-1.924.346-2.925a3.457,3.457,0,0,1,1.5,2.463S42.827,175.779,37.208,171.2Z" transform="translate(-27.395 -171.2)" />
                    <path id="Path_316" data-name="Path 316" class="cls-8" d="M52.275,181.434s-1.924-5.041,8.466-5.734c0,0-1.886,9.582-6.811,7.5,0,0,1.385-.346,2.155-3.463C56.047,179.741,52.853,179.971,52.275,181.434Z" transform="translate(-37.344 -173.968)" />
                    <path id="Path_317" data-name="Path 317" class="cls-8" d="M50.97,208.451s-2.54-7.927,13.738-8.351c0,0-3.463,14.777-11.237,11.352,0,0,1.809.346,3.617-5.349C57.089,206.065,52.2,206.065,50.97,208.451Z" transform="translate(-36.54 -188.979)" />
                </g>
            </g>
        </svg>--%>

    </div>
    <div style="clear: both;"></div>

    <script src="Scripts/Custom/load-files.js"></script>

</asp:Content>


