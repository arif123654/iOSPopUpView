//
//  ViewController.swift
//  MyPoP
//
//  Created by apple on 1/28/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var popupview: UIView!
    @IBOutlet weak var noButtonOutlet: UIButton!
    @IBOutlet weak var yesButtonOutlet: UIButton!
    @IBOutlet weak var underView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        popupview.isHidden = true
    }

    //Customize popupview UI
    func popedit(){
        
        //transparent view of full view background
        popupview.isHidden = false
        popupview.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        
        underView.layer.cornerRadius = 12
        
        yesButtonOutlet.layer.cornerRadius = 12
        yesButtonOutlet.layer.borderWidth = 1
        
        noButtonOutlet.layer.cornerRadius = 12
        noButtonOutlet.layer.borderWidth = 1
        noButtonOutlet.layer.borderColor = UIColor.blue.cgColor
        
    }
    
    //event to show popupView button
    @IBAction func popButton(_ sender: UIButton) {
        popedit()
    }
    
    //event of close button in popup view
    @IBAction func close(_ sender: UIButton) {
        popupview.isHidden = true
    }
 
    //Touches Event xcode defined
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        popupview.isHidden = true
    }
    
}

