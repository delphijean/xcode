//
//  ViewController.swift
//  curso
//
//  Created by Studio J on 05/04/18.
//  Copyright © 2018 Sete Digital. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    @IBOutlet weak var viewConstraint: NSLayoutConstraint!
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var sideMenuView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureComponentes()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonMenu1_Pressed(_ sender: MyMenuButtom) {
        print("Pressed \(sender.tag)")
        
        UIView.animate(withDuration: 0.8, animations: {
            self.viewConstraint.constant = -300
            self.view.layoutIfNeeded()
        })
    }
    
    
    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            let translation = sender.translation(in: self.view).x
            if translation > -300 { // swippe right
                if viewConstraint.constant < 5 {
                    UIView.animate(withDuration: 0.2, animations: {
                        self.viewConstraint.constant += translation / 12
                        self.view.layoutIfNeeded()
                    })
                }
            }
            else { // swipe left
                
            }
        }
        else if sender.state == .ended {
            if viewConstraint.constant < -300  {
                UIView.animate(withDuration: 0.2, animations: {
                    self.viewConstraint.constant = -300
                    self.view.layoutIfNeeded()
                })
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    self.viewConstraint.constant = 0
                    self.view.layoutIfNeeded()
                })
            }
        }
    }
    

    func configureComponentes() {
        sideMenuView.layer.cornerRadius = 15
        sideMenuView.clipsToBounds = true
        sideMenuView.layer.shadowColor = UIColor.black.cgColor
        sideMenuView.layer.shadowOpacity = 0.8
        sideMenuView.layer.shadowOffset = CGSize(width: 5, height: 0)
        
        viewConstraint.constant = -300
        
    }
    
}


