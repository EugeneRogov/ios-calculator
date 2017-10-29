//
//  CalcLoanTable.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 23.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcLoanTable: UITableViewController {
    
    @IBOutlet weak var typeOfCredit: UISegmentedControl!
    @IBOutlet weak var tvSum: UILabel!
    @IBOutlet weak var etSum: UITextField!
    @IBOutlet weak var tvTerm: UILabel!
    @IBOutlet weak var etTerm: UITextField!
    @IBOutlet weak var tvRate: UILabel!
    @IBOutlet weak var etRate: UITextField!
    @IBOutlet weak var tvMonthlyPaymaent: UILabel!
    @IBOutlet weak var etMonthlyPaymaent: UILabel!
    @IBOutlet weak var tvTotalSum: UILabel!
    @IBOutlet weak var etTotalSum: UILabel!
    @IBOutlet weak var tvOverpayment: UILabel!
    @IBOutlet weak var etOverpayment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return ""
        case 1:
            return ""
        default:
            return ""
        }
    }
    
    fileprivate func initViews() {
        // localisation
        typeOfCredit.setTitle(NSLocalizedString("calc_loan_annuity", comment: ""), forSegmentAt: 0)
        typeOfCredit.setTitle(NSLocalizedString("calc_loan_differentiated", comment: ""), forSegmentAt: 1)
        tvSum.text = NSLocalizedString("calc_loan_sum", comment: "")
        tvTerm.text = NSLocalizedString("calc_loan_term", comment: "")
        tvRate.text = NSLocalizedString("calc_loan_rate", comment: "")
        
        tvMonthlyPaymaent.text = NSLocalizedString("calc_loan_monthly_payment", comment: "")
        tvTotalSum.text = NSLocalizedString("calc_loan_total_sum", comment: "")
        tvOverpayment.text = NSLocalizedString("calc_loan_overpayment", comment: "")
    }
    
}
