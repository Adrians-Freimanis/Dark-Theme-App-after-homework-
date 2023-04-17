//
//  ViewController.swift
//  Lesson7
//
//  Created by adrians.freimanis on 16/04/2023.
//

import UIKit

class ViewController: UIViewController {

    
    var darkIsOn: Bool = false
    
    @IBOutlet weak var DarkThemeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        DarkThemeButton.layer.cornerRadius = 8
    }
    
    
    @IBAction func darkmodePressed(_ sender: Any) {
        darkIsOn = !darkIsOn
        if darkIsOn{
            darkThemeIsOn(IsOn: darkIsOn)
            let DarkThemeButton = (sender as AnyObject)
            DarkThemeButton.setTitle("Dark Mode Off", for: .normal)
            
        }else{
            darkIsOff(IsOn: darkIsOn)
            let DarkThemeButton = (sender as AnyObject)
            DarkThemeButton.setTitle("Dark Mode On", for: .normal)
        }
        
        func darkThemeIsOn(IsOn: Bool){
            navigationItem.title = "Dark mode On"
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            view.backgroundColor = UIColor.black
        }
        func darkIsOff(IsOn: Bool){
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
            view.backgroundColor = UIColor.white
        }
            
    }
    


}

