//
//  CalcVatTable.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 20.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcVatTable: UITableViewController {
    
    @IBOutlet weak var tvRateOfVat: UILabel!
    @IBOutlet weak var etRateOfVat: UITextField!
    @IBOutlet weak var tvAmount: UILabel!
    @IBOutlet weak var etAmount: UITextField!

    @IBOutlet weak var tvAddSumVat: UILabel!
    @IBOutlet weak var tvAddSumVatResult: UILabel!
    @IBOutlet weak var tvAddSumWithVat: UILabel!
    @IBOutlet weak var tvAddSumWithVatResult: UILabel!
    
    @IBOutlet weak var tvExcludeSumVat: UILabel!
    @IBOutlet weak var tvExcludeSumVatResult: UILabel!
    @IBOutlet weak var tvExcludeSumWithoutVat: UILabel!
    @IBOutlet weak var tvExcludeSumWithoutVatResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    
    fileprivate func initViews() {
        tvRateOfVat.text = NSLocalizedString("rate_of_vat", comment: "")
        tvAmount.text = NSLocalizedString("amount", comment: "")
        
        tvAddSumVat.text = NSLocalizedString("sum_vat", comment: "")
        tvAddSumWithVat.text = NSLocalizedString("sum_with_vat", comment: "")
        
        tvExcludeSumVat.text = NSLocalizedString("sum_vat", comment: "")
        tvExcludeSumWithoutVat.text = NSLocalizedString("sum_without_vat", comment: "")
        
    }
    
}
