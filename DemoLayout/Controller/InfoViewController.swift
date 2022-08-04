//
//  InfoViewController.swift
//  DemoLayout
//
//  Created by iMac on 2022-08-04.
//

import UIKit

class InfoViewController: UIViewController
{
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    var infoText = "No info"
    var appDescText = "No info"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if !infoText.isEmpty && !appDescText.isEmpty
        {
            infoLabel.text = infoText
            descLabel.text = appDescText
        }
    }
}
