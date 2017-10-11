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
    @IBOutlet weak var btnNavCalcVat: UIButton!
    @IBOutlet weak var btnNavCalcDate: UIButton!
    @IBOutlet weak var btnNavCalcPercent: UIButton!
    @IBOutlet weak var btnNavCalcLoan: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnNavCalcSimple.setTitle(NSLocalizedString("navigation_menu_simple", comment: ""), for: UIControlState.normal)
        btnNavCalcVat.setTitle(NSLocalizedString("navigation_menu_vat", comment: ""), for: UIControlState.normal)
        btnNavCalcDate.setTitle(NSLocalizedString("navigation_menu_date", comment: ""), for: UIControlState.normal)
        btnNavCalcPercent.setTitle(NSLocalizedString("navigation_menu_percent", comment: ""), for: UIControlState.normal)
        btnNavCalcLoan.setTitle(NSLocalizedString("navigation_menu_loan", comment: ""), for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

