//
//  CalcPercent.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 11.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcPercent: UIViewController {
    
    @IBOutlet weak var tvTitle1: UILabel!
    @IBOutlet weak var tvTitle2: UILabel!
    @IBOutlet weak var tvTitle3: UILabel!
    @IBOutlet weak var tvTitle4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    
    fileprivate func initViews() {
        tvTitle1.text = NSLocalizedString("how_much_is", comment: "")
        tvTitle2.text = NSLocalizedString("what_percent_of_the_number_of", comment: "")
        tvTitle3.text = NSLocalizedString("add", comment: "")
        tvTitle4.text = NSLocalizedString("subtract", comment: "")
        
        tvTitle1.text = tvTitle1.text?.uppercased()
        tvTitle2.text = tvTitle2.text?.uppercased()
        tvTitle3.text = tvTitle3.text?.uppercased()
        tvTitle4.text = tvTitle4.text?.uppercased()
        
    }
    
}
