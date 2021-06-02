//
//  ViewController.swift
//  firstApp
//
//  Created by Thallis Sousa on 31/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloWorld: UILabel!
    var frases:[String] = []
    
    
    @IBAction func hello(_ sender: Any) {
        print("agora foi")
    }
    
    @IBOutlet weak var firstCode: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frases.append("Rebeccompany melhor empresa")
        frases.append("Eu odeio a minha imobiliaria")
        frases.append("Gallo e suezo nazista")
        
        
        func hello(_ sender: Any) {
            let i = Int.random(in: 0..<frases.count)
            helloWorld.text = frases[i]
        }
        
        
        helloWorld.text = "Hello, world"
        
        
        print(frases.count)
        
        
        // Do any additional setup after loading the view.
    }
    
    
}

