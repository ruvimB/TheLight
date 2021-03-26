//
//  ViewController.swift
//  The Light
//
//  Created by Ruvim on 02.03.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    

    
    var switchingBetweenColors = 0
    
    // Removing the status bar on the device
    override var prefersStatusBarHidden: Bool {
        return true    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        switchingBetweenColors += 1
    }
    
    
    // Switching colors in the traffic light style
    fileprivate func updateUI() {
        
        switch switchingBetweenColors {
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .green
        case 4:
            view.backgroundColor = .white
        case 5:
            view.backgroundColor = .black
            switchingBetweenColors = 0
        default:
            break
        }
        
    }
    
    // Turning on the flashlight on the device
    func toggleTorch(on: Bool) {
        guard
            let device = AVCaptureDevice.default(for: AVMediaType.video),
            device.hasTorch
        
        else { return }

        do {
            try device.lockForConfiguration()
            device.torchMode = on ? .on : .off
            device.unlockForConfiguration()

        } catch {
            print("Torch could not be used")
        }
    }
    

    // Turning on the flashlight switch
    @IBAction func flash(_ sender: UISwitch) {
        toggleTorch(on: sender.isOn )
    }
    
    // Processing screen clicks
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        updateUI()
        switchingBetweenColors += 1
    }
}

