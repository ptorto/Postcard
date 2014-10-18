//
//  ViewController.swift
//  Postal
//
//  Created by Pablo Tortoriello Garza on 10/15/14.
//  Copyright (c) 2014 rompimipantalla.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var mensajeTextField: UITextField!
    @IBOutlet weak var botonEnviar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enviarMensaje(sender: UIButton){
        messageLabel.text = nombreTextField.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        
        botonEnviar.setTitle("Enviado", forState: UIControlState.Normal)
        
        nombreTextField.text = ""
        nombreTextField.resignFirstResponder()
    }
    
}

