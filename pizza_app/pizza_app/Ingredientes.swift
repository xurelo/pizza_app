//
//  Ingredientes.swift
//  pizza_app
//
//  Created by Francisco Manuel Romero on 17/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {

    @IBOutlet weak var jamon: CheckBox!
    @IBOutlet weak var cebolla: CheckBox!
    @IBOutlet weak var aceituna: CheckBox!
    @IBOutlet weak var salchicha: CheckBox!
    @IBOutlet weak var pavo: CheckBox!
    @IBOutlet weak var pepperoni: CheckBox!
    @IBOutlet weak var pimiento: CheckBox!
    var masa : String = "";
    var cheese : String = "";
    var size : String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let svc = segue.destinationViewController as! Confirmacion;
        svc.masa = self.masa;
        svc.cheese = self.cheese;
        svc.size = self.size;
        var ingr = "";
        if (jamon.isChecked) {
            ingr+=(jamon.titleLabel?.text)!+"\n";
        }
        if (pimiento.isChecked) {
            ingr+=(pimiento.titleLabel?.text)!+"\n";
        }
        if (cebolla.isChecked) {
            ingr+=(cebolla.titleLabel?.text)!+"\n";
        }
        if (aceituna.isChecked) {
            ingr+=(aceituna.titleLabel?.text)!+"\n";
        }
        if (salchicha.isChecked) {
            ingr+=(salchicha.titleLabel?.text)!+"\n";
        }
        if (pavo.isChecked) {
            ingr+=(pavo.titleLabel?.text)!+"\n";
        }
        if (pepperoni.isChecked) {
            ingr+=(pepperoni.titleLabel?.text)!+"\n";
        }
        svc.ingredients = ingr;
        print("size is:\(size)\n");
        print("cheese is:\(cheese)\n");
        print("masa is:\(masa)\n");
        print("ingr is:\(ingr)\n");
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
