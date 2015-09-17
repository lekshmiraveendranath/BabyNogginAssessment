//
//  TestStepsViewController.swift
//  BabyNoggin_Sampler
//
//  Created by Lekshmi Raveendranathapanicker on 9/16/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import UIKit

class TestStepsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var bnTest:BabyDevelopmentTest?
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
        self.navigationItem.title = bnTest!.name
    }
    
    // MARK: - Table view data source
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let bnTest = bnTest {
            return bnTest.steps.count
        } else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("testSteps", forIndexPath: indexPath) as! TestStepsTableViewCell
        cell.testStepLabel.text = bnTest?.steps[indexPath.row]
        
        return cell
    }
    
     // MARK: - Table view Delegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            self.performSegueWithIdentifier("testSuccess", sender: self)
        } else if indexPath.row == 1 {
            self.performSegueWithIdentifier("testFailure", sender: self)
        }
    }
    

    // MARK: - User Methods
    @IBAction func backBtnPressed(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "testSuccess" {
            let testSuccessController = segue.destinationViewController as! TestSuccessViewController
            testSuccessController.bnTest = bnTest
        } else  if segue.identifier == "testFailure" {
            let testfailController = segue.destinationViewController as! TestFailViewController
            testfailController.bnTest = bnTest
        }
    }
}
