//
//  ContentViewController.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import UIKit

class ContentViewController: UIViewController {

    var sideMenuClosed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        NotificationCenter.default.addObserver(self, selector: #selector(disableContent), name: NSNotification.Name("DisableContentView"), object: nil)
        
        
        for family in UIFont.familyNames.sorted(){
            
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font Names: \(names)")
        }
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showProfile),
                                               name: NSNotification.Name("ShowProfile"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSettings),
                                               name: NSNotification.Name("ShowSettings"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSignIn),
                                               name: NSNotification.Name("ShowSignIn"),
                                               object: nil)
    }
    
    @objc func showProfile() {
        performSegue(withIdentifier: "ShowProfile", sender: nil)
    }
    
    @objc func showSettings() {
        performSegue(withIdentifier: "ShowSettings", sender: nil)
    }
    
    @objc func showSignIn() {
        performSegue(withIdentifier: "ShowSignIn", sender: nil)
    }
    
    
    @IBAction func onMoreTapped() {
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

    
    
//    @objc func disableContent(){
//        sideMenuClosed = !sideMenuClosed
//        if sideMenuClosed{ //closed position
//            print("reenable content")
////            self.view.isUserInteractionEnabled = true
//        }else{ // open position
//            print("disable content")
////            self.view.isUserInteractionEnabled = false
//
//        }
//    }


}
