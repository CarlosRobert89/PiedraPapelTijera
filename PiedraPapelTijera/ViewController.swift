import UIKit
import Toast

class ViewController: UIViewController {
    
    //OUTLETS
    
    @IBOutlet weak var ivComputer: UIImageView!
    
    @IBOutlet weak var lbUser: UILabel!
    
    @IBOutlet weak var lbComputer: UILabel!
    
    //VARIABLES
    var contadorUser: Int!
    var contadorComputer: Int!
    var eleccionUser: String!
    var eleccionComputer: String!
    
    var imagenes = [UIImage (named: "piedra"), UIImage (named: "papel"), UIImage (named: "tijera")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contadorUser = 0
        contadorComputer = 0
    }

    @IBAction func btnPiedraClick(_ sender: Any) {
        eleccionUser = "PIEDRA"
        tiradaOrdenador()
    }
  
    @IBAction func btnPapelClick(_ sender: Any) {
        eleccionUser = "PAPEL"
        tiradaOrdenador()
    }
    
    @IBAction func btnTijeraClick(_ sender: Any) {
        eleccionUser = "TIJERA"
        tiradaOrdenador()
    }

func tiradaOrdenador(){
    var numAleatorio: Int
    numAleatorio = Int.random(in: 0..<3)
    
    ivComputer.image = imagenes[numAleatorio]
    
    switch numAleatorio {
    case 0: eleccionComputer = "PIEDRA"
    case 1: eleccionComputer = "PAPEL"
    default: eleccionComputer = "TIJERA"
    }
}

func ganador() {
    if eleccionComputer == eleccionUser{
        self.view.makeToast("EMPATE")
    }else{
        switch eleccionUser {
        case "PAPEL":
            if eleccionComputer == "PIEDRA"{
                contadorUser += 1
            }
            else{
                contadorComputer += 1
            }
            
        case "PIEDRA":
            if eleccionComputer == "PAPEL"{
                contadorComputer += 1
            }else{
                contadorUser += 1
            }
        default:
            if eleccionComputer == "PAPEL"{
                contadorUser += 1
            }else{
                contadorComputer += 1
                }
            }
        }
            lbUser.text = "User: \n \(String(contadorUser))"
            lbComputer.text = "Computer:\n \(String(contadorComputer))"
    }
}
