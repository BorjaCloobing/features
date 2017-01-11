//
//  ViewController.swift
//  V.I.P.E.R
//
//  Created by Borja Rodriguez Sánchez on 10/1/17.
//  Copyright © 2017 Borja Rodriguez Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreTextfield: UITextField!
    @IBOutlet weak var apellidoTextfield: UITextField!
    var presenter:Presenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func cancelButton(sender: AnyObject) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func addButton(sender: AnyObject) {
        presenter?.addNewObjectWithData(self.nombreTextfield.text!, surname: self.apellidoTextfield.text!)
        
        self.presentingViewController?.dismissViewControllerAnimated(true, completion:nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
