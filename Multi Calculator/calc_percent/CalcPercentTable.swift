//
//  CalcPercentTable.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 20.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcPercentTable: UITableViewController {

    @IBOutlet weak var tvPercent1: UILabel!
    @IBOutlet weak var etPercent1: UITextField!
    @IBOutlet weak var tvNumber1: UILabel!
    @IBOutlet weak var etNumber1: UITextField!
    @IBOutlet weak var tvResult1: UILabel!
    
    @IBOutlet weak var tvNumber2: UILabel!
    @IBOutlet weak var etNumber2: UITextField!
    @IBOutlet weak var tvNumber2_: UILabel!
    @IBOutlet weak var etNumber2_: UITextField!
    @IBOutlet weak var tvResult2: UILabel!
    
    @IBOutlet weak var tvPercent3: UILabel!
    @IBOutlet weak var etPercent3: UITextField!
    @IBOutlet weak var tvNumber3: UILabel!
    @IBOutlet weak var etNumber3: UITextField!
    @IBOutlet weak var tvResult3: UILabel!
    
    @IBOutlet weak var tvPercent4: UILabel!
    @IBOutlet weak var etPercent4: UITextField!
    @IBOutlet weak var tvNumber4: UILabel!
    @IBOutlet weak var etNumber4: UITextField!
    @IBOutlet weak var tvResult4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    
    fileprivate func initViews() {
        tvPercent1.text = NSLocalizedString("percent", comment: "")
        tvNumber1.text = NSLocalizedString("number", comment: "")
        
        tvNumber2.text = NSLocalizedString("number", comment: "")
        tvNumber2_.text = NSLocalizedString("number", comment: "")
        
        tvPercent3.text = NSLocalizedString("percent", comment: "")
        tvNumber3.text = NSLocalizedString("number", comment: "")
        
        tvPercent4.text = NSLocalizedString("percent", comment: "")
        tvNumber4.text = NSLocalizedString("number", comment: "")
        
    }
}
