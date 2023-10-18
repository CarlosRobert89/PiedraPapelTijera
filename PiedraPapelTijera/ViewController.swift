//
//  ViewController.swift
//  PiedraPapelTijera
//
//  Created by carlos on 18/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usuarioPiedra: UIButton!
    
    @IBOutlet weak var usuarioPapel: UIButton!
    
    @IBOutlet weak var usuarioTijera: UIButton!
    
    @IBOutlet weak var contadorUser: UILabel!
    
    @IBOutlet weak var contadorPC: UILabel!
    
    @IBOutlet weak var imgPC: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func aleatorio() -> Int {
        return Int.random(in: 1...3)
        
    }
    
    func sacarImagen(eleccionPC:Int){
        var imagen = ""
        
        switch eleccionPC {
        case 1: imagen = "piedra"
        case 2: imagen = "papel"
        case 3: imagen = "tijera"
        default: print("FATAL ERROR")
        }
        imgPC.image = UIImage(named: imagen)
    }
    
    
    @IBAction func usuarioPiedra(_ sender: Any) {
        var eleccionUsuario = "piedra"
        
        
    }
    
    
    @IBAction func usuarioPapel(_ sender: Any) {
        var eleccionUsuario = "papel"
        
    }
    
    
    @IBAction func usuarioTijera(_ sender: Any) {
        var eleccionUsuario = "tijera"
        
    }
    
}

