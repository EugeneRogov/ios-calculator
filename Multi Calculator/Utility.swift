//
//  Utility.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 06.11.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import Foundation
import UIKit

class Utility {
    static func autoZero(textField: UITextField) {
        if textField.text == "." {
            textField.text = "0."
        }
    }
}
