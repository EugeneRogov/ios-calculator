//
//  Settings.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 15.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class Settings: UITableViewController {
    
    @IBOutlet weak var tvCalcSimple: UILabel!
    @IBOutlet weak var swCalcSimple: UISwitch!
    @IBOutlet weak var tvCalcVat: UILabel!
    @IBOutlet weak var swCalcVat: UISwitch!
    @IBOutlet weak var tvCalcDate: UILabel!
    @IBOutlet weak var swCalcDate: UISwitch!
    @IBOutlet weak var tvCalcPercent: UILabel!
    @IBOutlet weak var swCalcPercent: UISwitch!
    @IBOutlet weak var tvCalcLoan: UILabel!
    @IBOutlet weak var swCalcLoan: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    
    fileprivate func initViews() {
        tvCalcSimple.text = NSLocalizedString("navigation_menu_simple", comment: "")
        tvCalcVat.text = NSLocalizedString("navigation_menu_vat", comment: "")
        tvCalcDate.text = NSLocalizedString("navigation_menu_date", comment: "")
        tvCalcPercent.text = NSLocalizedString("navigation_menu_percent", comment: "")
        tvCalcLoan.text = NSLocalizedString("navigation_menu_loan", comment: "")
    }
    
}
