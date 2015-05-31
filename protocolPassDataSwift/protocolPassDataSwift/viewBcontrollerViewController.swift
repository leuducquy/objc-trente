//
//  viewBcontrollerViewController.swift
//  protocolPassDataSwift
//
//  Created by MAC on 5/23/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

import UIKit
protocol dataOfTwoViewcontroller{
    func sendDatatoViewA(name: String)
}
class viewBcontrollerViewController: UIViewController {
   
    @IBOutlet weak var dataFromA: UILabel!
    var dataPassedFromA : String!
    var dataToA: String!
    @IBOutlet weak var textFieldB: UITextField!
       var delegate : dataOfTwoViewcontroller?
    override func viewDidLoad() {
        super.viewDidLoad()
        dataFromA.text = dataPassedFromA
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backToA(sender: AnyObject) {
       
        delegate?.sendDatatoViewA(textFieldB.text)
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
