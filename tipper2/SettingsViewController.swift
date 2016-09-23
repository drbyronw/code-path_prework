//
//  SettingsViewController.swift
//  tipper2
//
//  Created by Byron J. Williams on 9/22/16.
//  Copyright © 2016 Byron J. Williams. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        let defaults = UserDefaults.standard
        let default_segment = defaults.integer(forKey: "selected_segment")
        tipControl.selectedSegmentIndex = default_segment
        
    }
    
    @IBAction func setDefaults(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let selected_segment = tipControl.selectedSegmentIndex
        
        defaults.set(selected_segment, forKey: "selected_segment")
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
