//
//  Constants.swift
//  cs3339-proj-proto
//
//  Created by Connor Reid on 4/3/19.
//  Copyright © 2019 Connor Reid. All rights reserved.
//

import UIKit

struct LineAttributes {
    static let red: CGFloat = 0.0
    static let green: CGFloat = 0.0
    static let blue: CGFloat = 0.0
    static let alpha: CGFloat = 1.0
    static let brushWidth: CGFloat = 3.0
    static let opacity: CGFloat = 1.0
    static let lineCap: CGLineCap = CGLineCap.butt
    static let blendMode: CGBlendMode = CGBlendMode.normal
}

struct Events {
    static let aluFetchOnCorrect = "aluFetchOnCorrect"
    static let aluIfOnCorrect = "aluIfOnCorrect"
    static let aluWriteBackOnCorrect = "aluWriteBackOnCorrect"
}

struct CorrectnessMapKeys {
    //MARK: - IF Correctness Map Keys
    static let ifMuxToPc = "ifMuxToPc"
    static let ifPcToAlu = "ifPcToAlu"
    static let ifPcToIm = "ifPcToIm"
    static let ifFourToAlu = "ifFourToAlu"
    static let ifAluToMux = "ifAluToMux"
    static let ifImToId = "ifImToId"
    static let ifAluToId = "ifAluToId"
    
    //MARK: - ID Correctness Map Keys
    static let idIfToReadAddress1 = "idIfToReadAddress1"
    static let idIfToReadAddress2 = "idIfToReadAddress2"
    static let idIfToMux0 = "idIfToMux0"
    static let idIfToMux1 = "idIfToMux1"
    static let idMuxToWriteAddress = "idMuxToWriteAddress"
    static let idExToWriteData = "idExToWriteData"
    static let idIfToSignExtend = "idIfToSignExtend"
    static let idSignExtendToEx = "idSignExtendToEx"
    static let idReadData1ToEx = "idReadData1ToEx"
    static let idReadData2ToEx = "idReadData2ToEx"
    
    //MARK: - WB Correctness Map Keys
    static let wbMemReadDataToMux = "wbMemReadDataToMux"
    static let wbMemAddressToMux = "wbMemAddressToMux"
    static let wbMuxToIfWriteData = "wbMuxToIfWriteData"
    static let wbMemToIfWriteAddress = "wbMemtoIfWriteAddress"
}

struct TouchPointNames {
    //MARK: - IF Touch Point Names
    static let ifMuxToPcStart = "ifMuxToPcStart"
    static let ifPcToAluStart = "ifPcToAluStart"
    static let ifMuxToPcEnd = "ifMuxToPcEnd"
    static let ifPcToAluEnd = "ifPcToAluEnd"
    static let ifPcToImEnd = "ifPcToImEnd"
    static let ifFourToAluStart = "ifFourToAluStart"
    static let ifFourToAluEnd = "ifFourToAluEnd"
    static let ifAluToMuxStart = "ifAluToMuxStart"
    static let ifAluToMuxEnd = "ifAluToMuxEnd"
    static let ifImToIdStart = "ifImToIdStart"
    static let ifImToIdEnd = "ifImToIdEnd"
    static let ifAluToIdEnd = "ifAluToIdEnd"
    
    //MARK: - ID Touch Point Names
    static let idExToWriteDataStart = "idExToWriteDataStart"
    static let idExToWriteDataEnd = "idExToWriteDataEnd"
    static let idIfToReadAddress1Start = "idIfToReadAddress1Start"
    static let idIfToReadAddress1End = "idIfToReadAddress1End"
    static let idIfToReadAddress2Start = "idIfToReadAddress2Start"
    static let idIfToReadAddress2End = "idIfToReadAddress2End"
    static let idIfToMux0Start = "idIfToMux0Start"
    static let idIfToMux0End = "idIfToMux0End"
    static let idIfToMux1Start = "idIfToMux1Start"
    static let idIfToMux1End = "idIfToMux1End"
    static let idIfToSignExtendStart = "idIfToSignExtendEnd"
    static let idIfToSignExtendEnd = "idIfToSignExtendEnd"
    static let idMuxToWriteAddressStart = "idMuxToWriteAddressStart"
    static let idMuxToWriteAddressEnd = "idMuxToWriteAddressEnd"
    static let idReadData1ToExStart = "idReadData1ToExStart"
    static let idReadData1ToExEnd = "idReadData1ToExEnd"
    static let idReadData2ToExStart = "idReadData2ToExStart"
    static let idReadData2ToExEnd = "idReadData2ToExEnd"
    static let idSignExtendToExStart = "idSignExtendToExStart"
    static let idSignExtendToExEnd = "idSignExtendToExEnd"
    
    //MARK: - WB Touch Point Names
    static let wbMemReadDataToMuxStart = "wbMemReadDataToMuxStart"
    static let wbMemReadDataToMuxEnd = "wbMemReadDataToMuxEnd"
    static let wbMemAddressToMuxStart = "wbMemAddressToMuxStart"
    static let wbMemAddressToMuxEnd = "wbMemAddressToMuxEnd"
    static let wbMuxToIfWriteDataStart = "wbMuxToIfWriteDataStart"
    static let wbMuxToIfWriteDataEnd = "wbMuxToIfWriteDataEnd"
    static let wbMemToIfWriteAddressStart = "wbMemToIfWriteAddressStart"
    static let wbMemToIfWriteAddressEnd = "wbMemToIfWriteAddressEnd"
}
