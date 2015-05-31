//
//  ViewController.swift
//  protocolPassDataSwift
//
//  Created by MAC on 5/23/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,dataOfTwoViewcontroller {

    @IBOutlet weak var labelDisplayA: UILabel!
    @IBOutlet weak var textFieldA: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "QKpushtoviewBSegue") {
            var svc : viewBcontrollerViewController = segue.destinationViewController as! viewBcontrollerViewController
            
            svc.dataPassedFromA = textFieldA.text as String
            svc.delegate = self
                   }
    }
    func sendDatatoViewA(name: String) {
       labelDisplayA.text  = name
        println(name)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

