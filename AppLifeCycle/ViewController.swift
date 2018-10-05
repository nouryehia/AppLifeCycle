/* ViewController.swift
   AppLifeCycle
   Displays the number of times the app enters various states to provide an understanding of an app's life cycle.
   Created by Nour Yehia on 8/13/18.
   Copyright © 2018 Nour Yehia. All rights reserved. */

import UIKit

class ViewController: UIViewController {
    
    // Declare the count variables.
    var launchCount = 0
    var inactiveCount = 0
    var backgroundCount = 0
    var foregroundCount = 0
    var activeCount = 0
    var terminatedCount = 0
    
    // Called once the view controller has loaded its view hierarchy into memory.
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    // Create an outlet for each label.
    @IBOutlet weak var launchLabel: UILabel!
    @IBOutlet weak var inactiveLabel: UILabel!
    @IBOutlet weak var backgroundLabel: UILabel!
    @IBOutlet weak var foregroundLabel: UILabel!
    @IBOutlet weak var activeLabel: UILabel!
    @IBOutlet weak var terminatedLabel: UILabel!
    
    // Update each label based on the the number of times each state was entered.
    func updateView(){
        launchLabel.text = launchCount == 1 ? "The app has launched \(launchCount) time." : "The app has launched \(launchCount) times."
        inactiveLabel.text = inactiveCount == 1 ? "The app became inactive \(inactiveCount) time." : "The app became inactive \(inactiveCount) times."
        backgroundLabel.text = backgroundCount == 1 ? "The app entered background \(backgroundCount) time." : "The app entered background \(backgroundCount) times."
        foregroundLabel.text = foregroundCount == 1 ? "The app entered foreground \(foregroundCount) time." : "The app entered foreground \(foregroundCount) times."
        activeLabel.text = activeCount == 1 ? "The app became active \(activeCount) time." : "The app became active \(activeCount) times."
        terminatedLabel.text = terminatedCount == 1 ? "The app terminated \(terminatedCount) time." : "The app terminated \(terminatedCount) times."
    }
}
