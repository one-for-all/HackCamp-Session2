//
//  UserTextViewController.swift
//  session2-demo
//
//  Created by 迦南 on 4/19/17.
//  Copyright © 2017 Shannon Phu. All rights reserved.
//

import UIKit

class UserTextViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "SubmitUser" {
            if let name = nameTextField.text, let ageString = ageTextField.text, let age = Int(ageString) {
                let user = User(name: name, age: age)
                let newViewController = segue.destination as? ViewController
                newViewController?.submittedUser = user
            }
        }
    }

}
