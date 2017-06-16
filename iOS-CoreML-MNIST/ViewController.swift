//
//  ViewController.swift
//  iOS-CoreML-MNIST
//
//  Created by Sri Raghu Malireddi on 15/06/17.
//  Copyright © 2017 Sri Raghu Malireddi. All rights reserved.
//

import UIKit
import CoreML

class ViewController: UIViewController {

    @IBOutlet weak var drawView: DrawView!
    @IBOutlet weak var predictLabel: UILabel!
    
    let model = mnistCNN()
    var inputImage: CGImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        predictLabel.isHidden = true
    }
    
    @IBAction func tappedClear(_ sender: Any) {
        drawView.lines = []
        drawView.setNeedsDisplay()
        predictLabel.isHidden = true
    }
    
    @IBAction func tappedDetect(_ sender: Any) {
        let context = drawView.getViewContext() 
        inputImage = context?.makeImage()
        let pixelBuffer = ImageConverter.pixelBuffer(from: inputImage)?.takeRetainedValue()
        let output = try? model.prediction(image: pixelBuffer!)
        predictLabel.text = output?.classLabel
        predictLabel.isHidden = false
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



