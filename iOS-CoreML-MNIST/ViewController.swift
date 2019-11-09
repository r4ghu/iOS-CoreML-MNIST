//
//  ViewController.swift
//  iOS-CoreML-MNIST
//
//  Created by Sri Raghu Malireddi on 02/08/18.
//  Copyright © 2018 Sri Raghu Malireddi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var drawView: DrawView!
    @IBOutlet weak var predictLabel: UILabel!
    
    let model = mnistCNN()
    let context = CIContext()
    var pixelBuffer: CVPixelBuffer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        predictLabel.isHidden = true
        
        // Set the pixel buffer dimensions - Remember it's grayscale
        let attrs = [kCVPixelBufferCGImageCompatibilityKey: kCFBooleanTrue,
                     kCVPixelBufferCGBitmapContextCompatibilityKey: kCFBooleanTrue] as CFDictionary
        CVPixelBufferCreate(kCFAllocatorDefault,
                            28,
                            28,
                            kCVPixelFormatType_OneComponent8,
                            attrs,
                            &pixelBuffer)
    }

    @IBAction func tappedClear(_ sender: Any) {
        drawView.lines = []
        drawView.setNeedsDisplay()
        predictLabel.isHidden = true
    }
    
    @IBAction func tappedDetect(_ sender: Any) {
        // Check if user has drawn anything
        if drawView.lines.count <= 0 {
            // User didn't draw anything, return
            return
        }
        // Fancy Image conversions
        let viewContext = drawView.getViewContext()
        let cgImage = viewContext?.makeImage()
        let ciImage = CIImage(cgImage: cgImage!)
        context.render(ciImage, to: pixelBuffer!)
        // Predict
        let output = try? model.prediction(image: pixelBuffer!)
        // Output
        predictLabel.text = output?.classLabel
        predictLabel.isHidden = false
    }
}


