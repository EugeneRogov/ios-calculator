//
//  ViewController.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 11.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnNavCalcSimple: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnNavCalcSimple.setTitle(NSLocalizedString("navigation_menu_simple", comment: ""), for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

