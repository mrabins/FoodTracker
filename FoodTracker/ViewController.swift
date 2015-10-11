//
//  ViewController.swift
//  FoodTracker
//
//  Created by Mark Rabins on 10/10/15.
//  Copyright (c) 2015 self.swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, UISearchControllerDelegate, UISearchResultsUpdating {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var searchController:UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.searchController = UISearchController(searchResultsController: nil)
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        self.searchController.hidesNavigationBarDuringPresentation = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark -  TableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    // Mark - UISearchResultsUpdating
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        
        
    }

}

