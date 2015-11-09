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
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "usdaItemDidComplete:", name: kUSDAItemCompleted, object: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if usdaItem != nil {
            textView.attributedText = createAttributedString(usdaItem!)
        }
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func usdaItemDidComplete(notification : NSNotification) {
        
        println("usdaItemDidComplete in DetailViewController")
        usdaItem = notification.object as? USDAItem
        
        if self.isViewLoaded() && self.view.window != nil {
            textView.attributedText = createAttributedString(usdaItem!)
        }
    }

    @IBAction func eatItButtonPressed(sender: UIBarButtonItem) {
        
    }
    
    func createAttributedString (usdaItem: USDAItem) -> NSAttributedString {
        
        var itemAttributedString = NSMutableAttributedString()
        var centeredParagraphStyling = NSMutableParagraphStyle()
        centeredParagraphStyling.alignment = NSTextAlignment.Center
        centeredParagraphStyling.lineSpacing = 10.0
        
        var titleAttributedDictionary = [
            NSForegroundColorAttributeName : UIColor.blackColor(),
            NSFontAttributeName : UIFont.boldSystemFontOfSize(22.0),
            NSParagraphStyleAttributeName : centeredParagraphStyling]
        
        let titleString = NSAttributedString(string: "\(usdaItem.name)\n", attributes: titleAttributedDictionary)
        itemAttributedString.appendAttributedString(titleString)
        
        var leftAlignedParagraphStyle = NSMutableParagraphStyle()
            leftAlignedParagraphStyle.alignment = NSTextAlignment.Left
            leftAlignedParagraphStyle.lineSpacing = 20.0
        
        var styleFirstWordAttributesDictionary = [
            NSForegroundColorAttributeName : UIColor.blackColor(),
            NSFontAttributeName : UIFont.boldSystemFontOfSize(18.0),
            NSParagraphStyleAttributeName : leftAlignedParagraphStyle]
        
        var style1AttributesDictionary = [
            NSForegroundColorAttributeName : UIColor.darkGrayColor(),
            NSFontAttributeName : UIFont.systemFontOfSize(18.0),
            NSParagraphStyleAttributeName : leftAlignedParagraphStyle]
        
        var style2AttributesDictionary = [
            NSForegroundColorAttributeName : UIColor.lightGrayColor(),
            NSFontAttributeName : UIFont.systemFontOfSize(18.0),
            NSParagraphStyleAttributeName : leftAlignedParagraphStyle]
        
        return itemAttributedString
    }
}
