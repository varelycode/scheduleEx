//
//  ViewController.swift
//  scheduleEx
//
//  Created by viv on 11/17/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var menuConstraint: NSLayoutConstraint!
    var sideMenuClosed = false

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func toggleSideMenu(){
        sideMenuClosed = !sideMenuClosed
        if sideMenuClosed{ //closed position
            menuConstraint.constant = -240
        }else{ // open position
            print("menu is 0")
            menuConstraint.constant = 0
        }
        UIView.animate(withDuration: 0.2){
            
            self.view.layoutIfNeeded()
        }
    }
    
    
  
        
}




