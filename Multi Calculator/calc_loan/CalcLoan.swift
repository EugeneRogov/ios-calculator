//
//  CalcLoan.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 11.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcLoan: UIViewController {
    
    @IBOutlet weak var btnResult: UIButton!
    @IBOutlet weak var btnSend: UIButton!
    
    @IBAction func btnResult(_ sender: UIButton) {
        
    }
    @IBAction func btnSend(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    
    fileprivate func initViews() {
        // localisation
        btnResult.setTitle(NSLocalizedString("navigation_menu_settings", comment: ""), for: UIControlState.normal)
        btnSend.setTitle(NSLocalizedString("navigation_menu_history", comment: ""), for: UIControlState.normal)
    }
    
}
