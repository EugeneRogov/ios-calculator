//
//  CalcLoan.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 11.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcLoan: UIViewController {
    
    @IBOutlet weak var btnAnnuity: UIButton!
    @IBOutlet weak var btnDifferentiated: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    
    fileprivate func initViews() {
        btnAnnuity.setTitle(NSLocalizedString("calc_loan_annuity", comment: "").uppercased(), for: UIControlState.normal)
        btnDifferentiated.setTitle(NSLocalizedString("calc_loan_differentiated", comment: "").uppercased(), for: UIControlState.normal)
        
    }
    
}
