//
//  CalcDate.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 11.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcDate: UIViewController {
    
    @IBOutlet weak var btnClear: UIButton!
    @IBOutlet weak var btnSend: UIButton!
    
    @IBAction func btnClear(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: Constant.NC_CALC_DATE_CLEAR), object: nil)
    }
    @IBAction func btnSend(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: Constant.NC_CALC_DATE_SEND), object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    fileprivate func initViews() {
        // localisation
        btnClear.setTitle(NSLocalizedString("btn_action_clear", comment: ""), for: UIControlState.normal)
        btnSend.setTitle(NSLocalizedString("btn_action_send", comment: ""), for: UIControlState.normal)
    }
    
}
