//
//  ViewController.swift
//  The Light
//
//  Created by Ruvim on 02.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = 0
    override var prefersStatusBarHidden: Bool {
        return true    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        isLightOn += 1
    }
    
    
    
    fileprivate func updateUI() {
        
        switch isLightOn {
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .green
            isLightOn = 0
        default:
            break
        }
        
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(#line, #function, isLightOn)
        updateUI()
        isLightOn += 1
    }
    
    
}

