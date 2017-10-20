//
//  CalcDate.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 11.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcDate: UIViewController {
    
    @IBAction func btnClear(_ sender: UIButton) {
        
    }
    @IBAction func btnSend(_ sender: UIButton) {
        
    }
    @IBAction func btnPro(_ sender: UIButton) {
        self.performSegue(withIdentifier: Constant.SEGUE_UPDATE_FROM_CALC_DATE, sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
}
