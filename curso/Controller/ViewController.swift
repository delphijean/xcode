//
//  ViewController.swift
//  curso
//
//  Created by Studio J on 05/04/18.
//  Copyright © 2018 Sete Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Declaração dos controles de tela
    @IBOutlet weak var editUser: UITextField!
    @IBOutlet weak var editPassword: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurarVisualDosControles()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    
    @IBAction func buttonLoginPressed(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyBoard.instantiateViewController(withIdentifier: "mainSB") as! MainController
        self.show(mainVC, sender: self)
    }
    
    //MARK: Configura os aspectos visuais dos controles de tela
    func configurarVisualDosControles() {
        
        buttonLogin.layer.cornerRadius = 25
        buttonLogin.clipsToBounds = true
        
    }


}

