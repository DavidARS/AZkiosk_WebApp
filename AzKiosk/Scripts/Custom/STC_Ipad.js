  //var STC = {
//    "Florida": { "IFLDS": ["GWM", "SWM", "RECM", "UCON", "PCON", "AGCON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "AGIND", "UEF"], "IDFLDS": [0] },
//    "Idaho": { "IFLDS": ["GWM", "SWM", "AGCON", "UCON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "AGIND"], "IDFLDS": [1] },
//    "Illinois": { "IFLDS": ["GWM", "SWM", "RECM", "UCON", "PCON", "AGCON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "PEF", "UEF"], "IDFLDS": [2] },
//    "Minnesota": { "IFLDS": ["GWM", "SWM", "ICON", "UCON", "PCON","AGCON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "PEF", "UEF"], "IDFLDS": [3] },
//    "Wyoming": { "IFLDS": ["GWM", "SWM", "AGCON","UCON","ICON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "AGIND"], "IDFLDS": [4] },
//    "Arizona": { "IFLDS": ["GWM_P", "SWM_P", "AGCON_P", "UCON_P", "RECM_P", "DESAL_P"], "INDFLDS": ["GWSYA", "ECOR", "AGIND", "UEF"], "IDFLDS": [5] },
//    "Colorado": { "IFLDS": ["GWM", "SWM", "AGCON","UCON","ICON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "AGIND"], "IDFLDS": [6] },
//    "Nevada": { "IFLDS": ["GWM", "SWM", "AGCON","UCON","ICON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "AGIND"], "IDFLDS": [7] },
//    "California": { "IFLDS": ["GWM", "SWM", "AGCON","UCON","ICON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "AGIND"], "IDFLDS": [8] },
//    "Utah": { "IFLDS": ["GWM", "SWM", "AGCON","UCON","ICON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "AGIND"], "IDFLDS": [9] },
//    "New Mexico": { "IFLDS": ["GWM", "SWM", "AGCON","UCON","ICON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "AGIND"], "IDFLDS": [10] },
//    "Alabama": { "IFLDS": ["GWM", "SWM", "RECM", "UCON", "ICON", "PCON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "UEF","PEF"], "IDFLDS": [11] },
//    "Kansas": { "IFLDS": ["GWM", "SWM","RECM", "AGCON","UCON", "PCON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "AGIND", "UEF"], "IDFLDS": [12] },
//    "Tennessee": { "IFLDS": ["GWM", "SWM", "RECM", "UCON", "ICON", "PCON"], "INDFLDS": ["GWSYA", "ECOR", "SWI",  "UEF","PEF"], "IDFLDS": [13] },
//    "Virginia": { "IFLDS": ["GWM", "SWM","RECM", "UCON","ICON", "PCON"], "INDFLDS": ["GWSYA", "ECOR", "SWI", "PEF", "UEF"], "IDFLDS": [14] }
//}

var STC = {
    "AZN10": {  "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P"],            "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "PEF_P"],   "SKCFLDS": ["UD_P", "AD_P", "PD_P"]},
    "AZSE23": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P"],                      "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P"],            "SKCFLDS": ["UD_P", "AD_P"]},
    "AZCN24": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "ICON_P"],            "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P"],   "SKCFLDS": ["UD_P", "AD_P", "ID_P"] },
    "AZW9": {   "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P"],                      "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P"],            "SKCFLDS": ["UD_P", "AD_P"]},
    "AZCS8": {  "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P"],                      "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P"],            "SKCFLDS": ["UD_P", "AD_P"]},
    "CAN4": {   "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "CASE2": {  "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "CASW1": {  "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "COFR17": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "CONIB19": {"IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "COIB18": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "NVNIB7": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "NVS5": {   "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "NVIB6": {  "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "NMC20": {  "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "NMG25": {  "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "NMNIB22": {"IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "NMIB21": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "UTNIB13": {"IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "UTIB12": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "UTSL11": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "WYyNIB": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "WYIB15": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "WYSW14": { "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] },
    "COB": {    "IFLDS": ["GWM_P", "SWM_P", "ACON_P", "UCON_P", "RECM_P", "PCON_P", "ICON_P", "POPGRM_P"], "INDFLDS": ["ECOR_P", "EVIND_P", "GWSYA_P", "UEF_P", "AGIND_P", "IEF_P", "PEF_P"], "IDFLDS": [0] }
}