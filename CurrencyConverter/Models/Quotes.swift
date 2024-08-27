/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import SwiftData

@Model
class Quotes : Decodable, Loopable {
	let uSDKRW : Double?
	let uSDJOD : Double?
	let uSDNOK : Double?
	let uSDAUD : Double?
	let uSDIDR : Int?
	let uSDMGA : Double?
	let uSDHUF : Double?
	let uSDSVC : Double?
	let uSDPGK : Double?
	let uSDPEN : Double?
	let uSDKES : Double?
	let uSDDOP : Double?
	let uSDBHD : Double?
	let uSDCLP : Double?
	let uSDUGX : Int?
	let uSDFJD : Double?
	let uSDUZS : Double?
	let uSDKMF : Double?
	let uSDSLL : Double?
	let uSDBOB : Double?
	let uSDERN : Int?
	let uSDCOP : Double?
	let uSDIMP : Double?
	let uSDBTN : Double?
	let uSDLSL : Double?
	let uSDSYP : Double?
	let uSDZMW : Double?
	let uSDKGS : Double?
	let uSDMOP : Double?
	let uSDMNT : Double?
	let uSDXAF : Double?
	let uSDGBP : Double?
	let uSDKPW : Double?
	let uSDLAK : Double?
	let uSDETB : Double?
	let uSDCZK : Double?
	let uSDVND : Double?
	let uSDGGP : Double?
	let uSDSOS : Double?
	let uSDILS : Double?
	let uSDBRL : Double?
	let uSDTRY : Double?
	let uSDBDT : Double?
	let uSDGNF : Double?
	let uSDSTN : Double?
	let uSDAMD : Double?
	let uSDTHB : Double?
	let uSDMMK : Double?
	let uSDSDG : Double?
	let uSDBWP : Double?
	let uSDLBP : Double?
	let uSDOMR : Double?
	let uSDYER : Double?
	let uSDTJS : Double?
	let uSDSEK : Double?
	let uSDMAD : Double?
	let uSDMVR : Double?
	let uSDMYR : Double?
	let uSDBMD : Int?
	let uSDDKK : Double?
	let uSDIQD : Int?
	let uSDPYG : Double?
	let uSDAOA : Double?
	let uSDRSD : Double?
	let uSDTND : Double?
	let uSDPKR : Int?
	let uSDBGN : Double?
	let uSDJPY : Double?
	let uSDPLN : Double?
	let uSDNZD : Double?
	let uSDTWD : Double?
	let uSDARS : Double?
	let uSDKYD : Double?
	let uSDSBD : Double?
	let uSDWST : Double?
	let uSDLYD : Double?
	let uSDDJF : Double?
	let uSDMWK : Double?
	let uSDMUR : Double?
	let uSDBBD : Int?
	let uSDHKD : Double?
	let uSDBND : Double?
	let uSDALL : Double?
	let uSDGTQ : Double?
	let uSDEGP : Double?
	let uSDSHP : Double?
	let uSDSCR : Double?
	let uSDVEF : Double?
	let uSDISK : Double?
	let uSDXPF : Double?
	let uSDFKP : Double?
	let uSDANG : Double?
	let uSDAED : Double?
	let uSDGHS : Double?
	let uSDCNY : Double?
	let uSDRUB : Int?
	let uSDSZL : Double?
	let uSDXCD : Double?
	let uSDPHP : Double?
	let uSDLKR : Double?
	let uSDBZD : Int?
	let uSDTOP : Double?
	let uSDGIP : Double?
	let uSDMXN : Double?
	let uSDGYD : Double?
	let uSDCHF : Double?
	let uSDNIO : Double?
	let uSDKWD : Double?
	let uSDGMD : Double?
	let uSDJMD : Double?
	let uSDZWL : Double?
	let uSDIRR : Int?
	let uSDPAB : Int?
	let uSDQAR : Double?
	let uSDBYN : Double?
	let uSDINR : Double?
	let uSDHNL : Double?
	let uSDCDF : Double?
	let uSDMRU : Double?
	let uSDDZD : Double?
	let uSDVES : Double?
	let uSDXOF : Double?
	let uSDRON : Double?
	let uSDHTG : Double?
	let uSDCRC : Double?
	let uSDSRD : Double?
	let uSDSLE : Double?
	let uSDMZN : Double?
	let uSDTTD : Double?
	let uSDUYU : Double?
	let uSDGEL : Double?
	let uSDEUR : Double?
	let uSDVUV : Double?
	let uSDBIF : Double?
	let uSDKHR : Double?
	let uSDRWF : Double?
	let uSDCVE : Double?
	let uSDLRD : Double?
	let uSDUAH : Double?
	let uSDAZN : Double?
	let uSDCAD : Double?
	let uSDNGN : Double?
	let uSDTZS : Double?
	let uSDHRK : Double?
	let uSDMDL : Double?
	let uSDSGD : Double?
	let uSDMKD : Double?
	let uSDAFN : Double?
	let uSDSAR : Double?
	let uSDNAD : Double?
	let uSDCUC : Int?
	let uSDZAR : Double?
	let uSDCUP : Double?
	let uSDKZT : Double?
	let uSDNPR : Double?
	let uSDBSD : Int?
	let uSDAWG : Double?
	let uSDBAM : Double?
	let uSDTMT : Double?
	let uSDJEP : Double?

	enum CodingKeys: String, CodingKey {
		case uSDKRW = "USDKRW"
		case uSDJOD = "USDJOD"
		case uSDNOK = "USDNOK"
		case uSDAUD = "USDAUD"
		case uSDIDR = "USDIDR"
		case uSDMGA = "USDMGA"
		case uSDHUF = "USDHUF"
		case uSDSVC = "USDSVC"
		case uSDPGK = "USDPGK"
		case uSDPEN = "USDPEN"
		case uSDKES = "USDKES"
		case uSDDOP = "USDDOP"
		case uSDBHD = "USDBHD"
		case uSDCLP = "USDCLP"
		case uSDUGX = "USDUGX"
		case uSDFJD = "USDFJD"
		case uSDUZS = "USDUZS"
		case uSDKMF = "USDKMF"
		case uSDSLL = "USDSLL"
		case uSDBOB = "USDBOB"
		case uSDERN = "USDERN"
		case uSDCOP = "USDCOP"
		case uSDIMP = "USDIMP"
		case uSDBTN = "USDBTN"
		case uSDLSL = "USDLSL"
		case uSDSYP = "USDSYP"
		case uSDZMW = "USDZMW"
		case uSDKGS = "USDKGS"
		case uSDMOP = "USDMOP"
		case uSDMNT = "USDMNT"
		case uSDXAF = "USDXAF"
		case uSDGBP = "USDGBP"
		case uSDKPW = "USDKPW"
		case uSDLAK = "USDLAK"
		case uSDETB = "USDETB"
		case uSDCZK = "USDCZK"
		case uSDVND = "USDVND"
		case uSDGGP = "USDGGP"
		case uSDSOS = "USDSOS"
		case uSDILS = "USDILS"
		case uSDBRL = "USDBRL"
		case uSDTRY = "USDTRY"
		case uSDBDT = "USDBDT"
		case uSDGNF = "USDGNF"
		case uSDSTN = "USDSTN"
		case uSDAMD = "USDAMD"
		case uSDTHB = "USDTHB"
		case uSDMMK = "USDMMK"
		case uSDSDG = "USDSDG"
		case uSDBWP = "USDBWP"
		case uSDLBP = "USDLBP"
		case uSDOMR = "USDOMR"
		case uSDYER = "USDYER"
		case uSDTJS = "USDTJS"
		case uSDSEK = "USDSEK"
		case uSDMAD = "USDMAD"
		case uSDMVR = "USDMVR"
		case uSDMYR = "USDMYR"
		case uSDBMD = "USDBMD"
		case uSDDKK = "USDDKK"
		case uSDIQD = "USDIQD"
		case uSDPYG = "USDPYG"
		case uSDAOA = "USDAOA"
		case uSDRSD = "USDRSD"
		case uSDTND = "USDTND"
		case uSDPKR = "USDPKR"
		case uSDBGN = "USDBGN"
		case uSDJPY = "USDJPY"
		case uSDPLN = "USDPLN"
		case uSDNZD = "USDNZD"
		case uSDTWD = "USDTWD"
		case uSDARS = "USDARS"
		case uSDKYD = "USDKYD"
		case uSDSBD = "USDSBD"
		case uSDWST = "USDWST"
		case uSDLYD = "USDLYD"
		case uSDDJF = "USDDJF"
		case uSDMWK = "USDMWK"
		case uSDMUR = "USDMUR"
		case uSDBBD = "USDBBD"
		case uSDHKD = "USDHKD"
		case uSDBND = "USDBND"
		case uSDALL = "USDALL"
		case uSDGTQ = "USDGTQ"
		case uSDEGP = "USDEGP"
		case uSDSHP = "USDSHP"
		case uSDSCR = "USDSCR"
		case uSDVEF = "USDVEF"
		case uSDISK = "USDISK"
		case uSDXPF = "USDXPF"
		case uSDFKP = "USDFKP"
		case uSDANG = "USDANG"
		case uSDAED = "USDAED"
		case uSDGHS = "USDGHS"
		case uSDCNY = "USDCNY"
		case uSDRUB = "USDRUB"
		case uSDSZL = "USDSZL"
		case uSDXCD = "USDXCD"
		case uSDPHP = "USDPHP"
		case uSDLKR = "USDLKR"
		case uSDBZD = "USDBZD"
		case uSDTOP = "USDTOP"
		case uSDGIP = "USDGIP"
		case uSDMXN = "USDMXN"
		case uSDGYD = "USDGYD"
		case uSDCHF = "USDCHF"
		case uSDNIO = "USDNIO"
		case uSDKWD = "USDKWD"
		case uSDGMD = "USDGMD"
		case uSDJMD = "USDJMD"
		case uSDZWL = "USDZWL"
		case uSDIRR = "USDIRR"
		case uSDPAB = "USDPAB"
		case uSDQAR = "USDQAR"
		case uSDBYN = "USDBYN"
		case uSDINR = "USDINR"
		case uSDHNL = "USDHNL"
		case uSDCDF = "USDCDF"
		case uSDMRU = "USDMRU"
		case uSDDZD = "USDDZD"
		case uSDVES = "USDVES"
		case uSDXOF = "USDXOF"
		case uSDRON = "USDRON"
		case uSDHTG = "USDHTG"
		case uSDCRC = "USDCRC"
		case uSDSRD = "USDSRD"
		case uSDSLE = "USDSLE"
		case uSDMZN = "USDMZN"
		case uSDTTD = "USDTTD"
		case uSDUYU = "USDUYU"
		case uSDGEL = "USDGEL"
		case uSDEUR = "USDEUR"
		case uSDVUV = "USDVUV"
		case uSDBIF = "USDBIF"
		case uSDKHR = "USDKHR"
		case uSDRWF = "USDRWF"
		case uSDCVE = "USDCVE"
		case uSDLRD = "USDLRD"
		case uSDUAH = "USDUAH"
		case uSDAZN = "USDAZN"
		case uSDCAD = "USDCAD"
		case uSDNGN = "USDNGN"
		case uSDTZS = "USDTZS"
		case uSDHRK = "USDHRK"
		case uSDMDL = "USDMDL"
		case uSDSGD = "USDSGD"
		case uSDMKD = "USDMKD"
		case uSDAFN = "USDAFN"
		case uSDSAR = "USDSAR"
		case uSDNAD = "USDNAD"
		case uSDCUC = "USDCUC"
		case uSDZAR = "USDZAR"
		case uSDCUP = "USDCUP"
		case uSDKZT = "USDKZT"
		case uSDNPR = "USDNPR"
		case uSDBSD = "USDBSD"
		case uSDAWG = "USDAWG"
		case uSDBAM = "USDBAM"
		case uSDTMT = "USDTMT"
		case uSDJEP = "USDJEP"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		uSDKRW = try values.decodeIfPresent(Double.self, forKey: .uSDKRW)
		uSDJOD = try values.decodeIfPresent(Double.self, forKey: .uSDJOD)
		uSDNOK = try values.decodeIfPresent(Double.self, forKey: .uSDNOK)
		uSDAUD = try values.decodeIfPresent(Double.self, forKey: .uSDAUD)
		uSDIDR = try values.decodeIfPresent(Int.self, forKey: .uSDIDR)
		uSDMGA = try values.decodeIfPresent(Double.self, forKey: .uSDMGA)
		uSDHUF = try values.decodeIfPresent(Double.self, forKey: .uSDHUF)
		uSDSVC = try values.decodeIfPresent(Double.self, forKey: .uSDSVC)
		uSDPGK = try values.decodeIfPresent(Double.self, forKey: .uSDPGK)
		uSDPEN = try values.decodeIfPresent(Double.self, forKey: .uSDPEN)
		uSDKES = try values.decodeIfPresent(Double.self, forKey: .uSDKES)
		uSDDOP = try values.decodeIfPresent(Double.self, forKey: .uSDDOP)
		uSDBHD = try values.decodeIfPresent(Double.self, forKey: .uSDBHD)
		uSDCLP = try values.decodeIfPresent(Double.self, forKey: .uSDCLP)
		uSDUGX = try values.decodeIfPresent(Int.self, forKey: .uSDUGX)
		uSDFJD = try values.decodeIfPresent(Double.self, forKey: .uSDFJD)
		uSDUZS = try values.decodeIfPresent(Double.self, forKey: .uSDUZS)
		uSDKMF = try values.decodeIfPresent(Double.self, forKey: .uSDKMF)
		uSDSLL = try values.decodeIfPresent(Double.self, forKey: .uSDSLL)
		uSDBOB = try values.decodeIfPresent(Double.self, forKey: .uSDBOB)
		uSDERN = try values.decodeIfPresent(Int.self, forKey: .uSDERN)
		uSDCOP = try values.decodeIfPresent(Double.self, forKey: .uSDCOP)
		uSDIMP = try values.decodeIfPresent(Double.self, forKey: .uSDIMP)
		uSDBTN = try values.decodeIfPresent(Double.self, forKey: .uSDBTN)
		uSDLSL = try values.decodeIfPresent(Double.self, forKey: .uSDLSL)
		uSDSYP = try values.decodeIfPresent(Double.self, forKey: .uSDSYP)
		uSDZMW = try values.decodeIfPresent(Double.self, forKey: .uSDZMW)
		uSDKGS = try values.decodeIfPresent(Double.self, forKey: .uSDKGS)
		uSDMOP = try values.decodeIfPresent(Double.self, forKey: .uSDMOP)
		uSDMNT = try values.decodeIfPresent(Double.self, forKey: .uSDMNT)
		uSDXAF = try values.decodeIfPresent(Double.self, forKey: .uSDXAF)
		uSDGBP = try values.decodeIfPresent(Double.self, forKey: .uSDGBP)
		uSDKPW = try values.decodeIfPresent(Double.self, forKey: .uSDKPW)
		uSDLAK = try values.decodeIfPresent(Double.self, forKey: .uSDLAK)
		uSDETB = try values.decodeIfPresent(Double.self, forKey: .uSDETB)
		uSDCZK = try values.decodeIfPresent(Double.self, forKey: .uSDCZK)
		uSDVND = try values.decodeIfPresent(Double.self, forKey: .uSDVND)
		uSDGGP = try values.decodeIfPresent(Double.self, forKey: .uSDGGP)
		uSDSOS = try values.decodeIfPresent(Double.self, forKey: .uSDSOS)
		uSDILS = try values.decodeIfPresent(Double.self, forKey: .uSDILS)
		uSDBRL = try values.decodeIfPresent(Double.self, forKey: .uSDBRL)
		uSDTRY = try values.decodeIfPresent(Double.self, forKey: .uSDTRY)
		uSDBDT = try values.decodeIfPresent(Double.self, forKey: .uSDBDT)
		uSDGNF = try values.decodeIfPresent(Double.self, forKey: .uSDGNF)
		uSDSTN = try values.decodeIfPresent(Double.self, forKey: .uSDSTN)
		uSDAMD = try values.decodeIfPresent(Double.self, forKey: .uSDAMD)
		uSDTHB = try values.decodeIfPresent(Double.self, forKey: .uSDTHB)
		uSDMMK = try values.decodeIfPresent(Double.self, forKey: .uSDMMK)
		uSDSDG = try values.decodeIfPresent(Double.self, forKey: .uSDSDG)
		uSDBWP = try values.decodeIfPresent(Double.self, forKey: .uSDBWP)
		uSDLBP = try values.decodeIfPresent(Double.self, forKey: .uSDLBP)
		uSDOMR = try values.decodeIfPresent(Double.self, forKey: .uSDOMR)
		uSDYER = try values.decodeIfPresent(Double.self, forKey: .uSDYER)
		uSDTJS = try values.decodeIfPresent(Double.self, forKey: .uSDTJS)
		uSDSEK = try values.decodeIfPresent(Double.self, forKey: .uSDSEK)
		uSDMAD = try values.decodeIfPresent(Double.self, forKey: .uSDMAD)
		uSDMVR = try values.decodeIfPresent(Double.self, forKey: .uSDMVR)
		uSDMYR = try values.decodeIfPresent(Double.self, forKey: .uSDMYR)
		uSDBMD = try values.decodeIfPresent(Int.self, forKey: .uSDBMD)
		uSDDKK = try values.decodeIfPresent(Double.self, forKey: .uSDDKK)
		uSDIQD = try values.decodeIfPresent(Int.self, forKey: .uSDIQD)
		uSDPYG = try values.decodeIfPresent(Double.self, forKey: .uSDPYG)
		uSDAOA = try values.decodeIfPresent(Double.self, forKey: .uSDAOA)
		uSDRSD = try values.decodeIfPresent(Double.self, forKey: .uSDRSD)
		uSDTND = try values.decodeIfPresent(Double.self, forKey: .uSDTND)
		uSDPKR = try values.decodeIfPresent(Int.self, forKey: .uSDPKR)
		uSDBGN = try values.decodeIfPresent(Double.self, forKey: .uSDBGN)
		uSDJPY = try values.decodeIfPresent(Double.self, forKey: .uSDJPY)
		uSDPLN = try values.decodeIfPresent(Double.self, forKey: .uSDPLN)
		uSDNZD = try values.decodeIfPresent(Double.self, forKey: .uSDNZD)
		uSDTWD = try values.decodeIfPresent(Double.self, forKey: .uSDTWD)
		uSDARS = try values.decodeIfPresent(Double.self, forKey: .uSDARS)
		uSDKYD = try values.decodeIfPresent(Double.self, forKey: .uSDKYD)
		uSDSBD = try values.decodeIfPresent(Double.self, forKey: .uSDSBD)
		uSDWST = try values.decodeIfPresent(Double.self, forKey: .uSDWST)
		uSDLYD = try values.decodeIfPresent(Double.self, forKey: .uSDLYD)
		uSDDJF = try values.decodeIfPresent(Double.self, forKey: .uSDDJF)
		uSDMWK = try values.decodeIfPresent(Double.self, forKey: .uSDMWK)
		uSDMUR = try values.decodeIfPresent(Double.self, forKey: .uSDMUR)
		uSDBBD = try values.decodeIfPresent(Int.self, forKey: .uSDBBD)
		uSDHKD = try values.decodeIfPresent(Double.self, forKey: .uSDHKD)
		uSDBND = try values.decodeIfPresent(Double.self, forKey: .uSDBND)
		uSDALL = try values.decodeIfPresent(Double.self, forKey: .uSDALL)
		uSDGTQ = try values.decodeIfPresent(Double.self, forKey: .uSDGTQ)
		uSDEGP = try values.decodeIfPresent(Double.self, forKey: .uSDEGP)
		uSDSHP = try values.decodeIfPresent(Double.self, forKey: .uSDSHP)
		uSDSCR = try values.decodeIfPresent(Double.self, forKey: .uSDSCR)
		uSDVEF = try values.decodeIfPresent(Double.self, forKey: .uSDVEF)
		uSDISK = try values.decodeIfPresent(Double.self, forKey: .uSDISK)
		uSDXPF = try values.decodeIfPresent(Double.self, forKey: .uSDXPF)
		uSDFKP = try values.decodeIfPresent(Double.self, forKey: .uSDFKP)
		uSDANG = try values.decodeIfPresent(Double.self, forKey: .uSDANG)
		uSDAED = try values.decodeIfPresent(Double.self, forKey: .uSDAED)
		uSDGHS = try values.decodeIfPresent(Double.self, forKey: .uSDGHS)
		uSDCNY = try values.decodeIfPresent(Double.self, forKey: .uSDCNY)
		uSDRUB = try values.decodeIfPresent(Int.self, forKey: .uSDRUB)
		uSDSZL = try values.decodeIfPresent(Double.self, forKey: .uSDSZL)
		uSDXCD = try values.decodeIfPresent(Double.self, forKey: .uSDXCD)
		uSDPHP = try values.decodeIfPresent(Double.self, forKey: .uSDPHP)
		uSDLKR = try values.decodeIfPresent(Double.self, forKey: .uSDLKR)
		uSDBZD = try values.decodeIfPresent(Int.self, forKey: .uSDBZD)
		uSDTOP = try values.decodeIfPresent(Double.self, forKey: .uSDTOP)
		uSDGIP = try values.decodeIfPresent(Double.self, forKey: .uSDGIP)
		uSDMXN = try values.decodeIfPresent(Double.self, forKey: .uSDMXN)
		uSDGYD = try values.decodeIfPresent(Double.self, forKey: .uSDGYD)
		uSDCHF = try values.decodeIfPresent(Double.self, forKey: .uSDCHF)
		uSDNIO = try values.decodeIfPresent(Double.self, forKey: .uSDNIO)
		uSDKWD = try values.decodeIfPresent(Double.self, forKey: .uSDKWD)
		uSDGMD = try values.decodeIfPresent(Double.self, forKey: .uSDGMD)
		uSDJMD = try values.decodeIfPresent(Double.self, forKey: .uSDJMD)
		uSDZWL = try values.decodeIfPresent(Double.self, forKey: .uSDZWL)
		uSDIRR = try values.decodeIfPresent(Int.self, forKey: .uSDIRR)
		uSDPAB = try values.decodeIfPresent(Int.self, forKey: .uSDPAB)
		uSDQAR = try values.decodeIfPresent(Double.self, forKey: .uSDQAR)
		uSDBYN = try values.decodeIfPresent(Double.self, forKey: .uSDBYN)
		uSDINR = try values.decodeIfPresent(Double.self, forKey: .uSDINR)
		uSDHNL = try values.decodeIfPresent(Double.self, forKey: .uSDHNL)
		uSDCDF = try values.decodeIfPresent(Double.self, forKey: .uSDCDF)
		uSDMRU = try values.decodeIfPresent(Double.self, forKey: .uSDMRU)
		uSDDZD = try values.decodeIfPresent(Double.self, forKey: .uSDDZD)
		uSDVES = try values.decodeIfPresent(Double.self, forKey: .uSDVES)
		uSDXOF = try values.decodeIfPresent(Double.self, forKey: .uSDXOF)
		uSDRON = try values.decodeIfPresent(Double.self, forKey: .uSDRON)
		uSDHTG = try values.decodeIfPresent(Double.self, forKey: .uSDHTG)
		uSDCRC = try values.decodeIfPresent(Double.self, forKey: .uSDCRC)
		uSDSRD = try values.decodeIfPresent(Double.self, forKey: .uSDSRD)
		uSDSLE = try values.decodeIfPresent(Double.self, forKey: .uSDSLE)
		uSDMZN = try values.decodeIfPresent(Double.self, forKey: .uSDMZN)
		uSDTTD = try values.decodeIfPresent(Double.self, forKey: .uSDTTD)
		uSDUYU = try values.decodeIfPresent(Double.self, forKey: .uSDUYU)
		uSDGEL = try values.decodeIfPresent(Double.self, forKey: .uSDGEL)
		uSDEUR = try values.decodeIfPresent(Double.self, forKey: .uSDEUR)
		uSDVUV = try values.decodeIfPresent(Double.self, forKey: .uSDVUV)
		uSDBIF = try values.decodeIfPresent(Double.self, forKey: .uSDBIF)
		uSDKHR = try values.decodeIfPresent(Double.self, forKey: .uSDKHR)
		uSDRWF = try values.decodeIfPresent(Double.self, forKey: .uSDRWF)
		uSDCVE = try values.decodeIfPresent(Double.self, forKey: .uSDCVE)
		uSDLRD = try values.decodeIfPresent(Double.self, forKey: .uSDLRD)
		uSDUAH = try values.decodeIfPresent(Double.self, forKey: .uSDUAH)
		uSDAZN = try values.decodeIfPresent(Double.self, forKey: .uSDAZN)
		uSDCAD = try values.decodeIfPresent(Double.self, forKey: .uSDCAD)
		uSDNGN = try values.decodeIfPresent(Double.self, forKey: .uSDNGN)
		uSDTZS = try values.decodeIfPresent(Double.self, forKey: .uSDTZS)
		uSDHRK = try values.decodeIfPresent(Double.self, forKey: .uSDHRK)
		uSDMDL = try values.decodeIfPresent(Double.self, forKey: .uSDMDL)
		uSDSGD = try values.decodeIfPresent(Double.self, forKey: .uSDSGD)
		uSDMKD = try values.decodeIfPresent(Double.self, forKey: .uSDMKD)
		uSDAFN = try values.decodeIfPresent(Double.self, forKey: .uSDAFN)
		uSDSAR = try values.decodeIfPresent(Double.self, forKey: .uSDSAR)
		uSDNAD = try values.decodeIfPresent(Double.self, forKey: .uSDNAD)
		uSDCUC = try values.decodeIfPresent(Int.self, forKey: .uSDCUC)
		uSDZAR = try values.decodeIfPresent(Double.self, forKey: .uSDZAR)
		uSDCUP = try values.decodeIfPresent(Double.self, forKey: .uSDCUP)
		uSDKZT = try values.decodeIfPresent(Double.self, forKey: .uSDKZT)
		uSDNPR = try values.decodeIfPresent(Double.self, forKey: .uSDNPR)
		uSDBSD = try values.decodeIfPresent(Int.self, forKey: .uSDBSD)
		uSDAWG = try values.decodeIfPresent(Double.self, forKey: .uSDAWG)
		uSDBAM = try values.decodeIfPresent(Double.self, forKey: .uSDBAM)
		uSDTMT = try values.decodeIfPresent(Double.self, forKey: .uSDTMT)
		uSDJEP = try values.decodeIfPresent(Double.self, forKey: .uSDJEP)
	}
}
