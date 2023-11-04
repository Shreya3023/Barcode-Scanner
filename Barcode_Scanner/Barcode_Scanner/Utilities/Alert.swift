//
//  Alert.swift
//  Barcode_Scanner
//
//  Created by Shreya Prasad on 27/10/23.
//

import SwiftUI
import SwiftUI
struct AlertItem: Identifiable
{
    let id = UUID()
    let title : String
    let message : String
    let dismissButton : Alert.Button
}
struct AlertContext {
   
    static let invalidInput = AlertItem(title: "Invalid device input", message: "Something is wrong with the camera. we are unable to capture the input.", dismissButton: .default(Text("ok")))
    static let invalidScannedType = AlertItem(title: "Invalid scan type", message: "The value scanned is not valid. This app scans EAN-13 and EAN-8", dismissButton: .default(Text("ok")))
}
