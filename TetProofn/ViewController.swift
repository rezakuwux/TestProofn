//
//  ViewController.swift
//  TetProofn
//
//  Created by Reza on 11/04/19.
//  Copyright © 2019 Kuwux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var string = "hefg"
        let originStr = string
        repeat{  // Must start at lowest permutation
            print(string)
        } while (TestProofn.biggerIsGreater(string: &string, originStr: originStr));
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

