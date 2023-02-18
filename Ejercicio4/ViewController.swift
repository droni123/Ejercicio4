//
//  ViewController.swift
//  Ejercicio4
//
//  Created by De la Cruz Hernandez on 17/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var youtube: UIButton!
    @IBOutlet weak var instagram: UIButton!
    @IBOutlet weak var labelTitulo: UILabel!
    
    @IBOutlet weak var CP: UIButton!
    @IBOutlet weak var telefono: UIButton!
    
    var redes = [
        "twitter://user?screen_name=Fundacion_UNAM",
        "fb://profile?id=671753206239581",
        "vnd.youtube://user/FUNDUNAM",
        "instagram://user?username=fundacionUNAM",
        "tel:5534453556"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
        UIFont.familyNames.forEach({ familyName in
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            print(familyName, fontNames)
            //"FontAwesome6Brands-Regular"
            //"FontAwesome6Free-Regular"
        })
        */
        telefono.titleLabel?.font = UIFont(name: "FontAwesome6Free-Regular", size: 25)
        telefono.titleLabel?.text = "\u{f03e}"
        //telefono.font.fontName =
        //UIFont(name: , size: 30)!
        //telefono.text = "\u{f095}"
        
        twitter.tag = 0
        facebook.tag = 1
        youtube.tag = 2
        instagram.tag = 3
        telefono.tag = 4
        CP.tag = 5
    }

    @IBAction func accionAll(_ sender: UIButton) {
        if(sender.tag == 5){
            let contenido = ["Esta app es genial"]
            let ac = UIActivityViewController(activityItems: contenido, applicationActivities: nil)
            self.present(ac, animated: true)
        }else{
            openurl(urlx:redes[sender.tag])
        }
    }
    
    func openurl(urlx:String){
        let elString = urlx
        if let url = URL(string:elString){
            if UIApplication.shared.canOpenURL(url){
                UIApplication.shared.open(url,options: [:])
            }
        }
    }
}

