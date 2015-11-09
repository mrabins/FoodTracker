//
//  DetailViewController.swift
//  FoodTracker
//
//  Created by Mark Rabins on 10/10/15.
//  Copyright © 2015 self.swift. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var usdaItem:USDAItem?
    
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func eatItButtonPressed(sender: UIBarButtonItem) {
        
    }
}
