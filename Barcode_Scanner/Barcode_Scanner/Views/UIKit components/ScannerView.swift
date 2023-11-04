//
//  ScannerView.swift
//  Barcode_Scanner
//
//  Created by Shreya Prasad on 25/10/23.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    @Binding var scannedCode : String
    @Binding var alertItem : AlertItem?
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView : self)
    }
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    final class Coordinator : NSObject,ScannerVCDelegate{
        private let scannerView : ScannerView
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            switch error {
            case .invalidDeviceInput:
                scannerView.alertItem = AlertContext.invalidInput
            case .invalidScannedValue:
                scannerView.alertItem = AlertContext.invalidScannedType
            }
        }
        
    }
    
}

