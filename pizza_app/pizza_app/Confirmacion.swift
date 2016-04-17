//
//  Confirmacion.swift
//  pizza_app
//
//  Created by Francisco Manuel Romero on 17/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import UIKit

class Confirmacion: UIViewController {
    var masa : String = "";
    var cheese : String = "";
    var size : String = "";
    var ingredients: String = "";
    
    @IBOutlet weak var textConf: UITextView!
    @IBOutlet weak var confirm: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var text="Tu selección de pizza es:\n";
        text+="Tamaño:\(size)\n";
        text+="Tipo de masa:\(masa)\n";
        text+="Ingredientes:\(ingredients)\n";
        textConf.text = text;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
