//
//  BarcodeScannerViewModel.swift
//  Barcode_Scanner
//
//  Created by Shreya Prasad on 27/10/23.
//

import SwiftUI
final class BarcodeScannerViewModel : ObservableObject{
    @Published var scannedCode = ""
    @Published var alertItem : AlertItem?
    var statusText : String{
        scannedCode.isEmpty ? "NOT YET SCANNED" : scannedCode
    }
    var statusTextColor : Color{
        scannedCode.isEmpty ? .red : .green
    }
}
