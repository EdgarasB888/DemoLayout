//
//  HomeViewController.swift
//  DemoLayout
//
//  Created by iMac on 2022-08-03.
//

import UIKit

class HomeViewController: UIViewController
{
    @IBOutlet var styleButtonCollection: [UIButton]!
    
    @IBOutlet weak var buttonFOutlet: UIButton!
    
    //MARK: - viewDidLoad
    override func viewDidLoad()
    {
        super.viewDidLoad()

        styleButtonCollection.forEach { button in
            button.layer.cornerRadius = 6
            button.layer.borderColor = UIColor.systemRed.cgColor
            button.layer.borderWidth = 2
        }
    }

    
    @IBAction func buttonFTapped(_ sender: Any)
    {
        print("touch up")
    }
    
    @IBAction func buttonETapped(_ sender: Any)
    {
        print("touch up and hold outside")
        buttonFOutlet.isHidden = false
    }
    
    @IBAction func buttonDTapped(_ sender: Any)
    {
        print("drag exit")
        buttonFOutlet.isHidden = true
        view.backgroundColor = UIColor.yellow
        navigationItem.title = "Button D tapped!"
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "appID"
        {
            guard let vc = segue.destination as? InfoViewController else {return}
            vc.infoText = "I am passing some info"
            vc.appDescText = "HERE !!!"
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}
