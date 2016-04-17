//
//  Ingredientes.swift
//  pizza_app
//
//  Created by Francisco Manuel Romero on 17/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {

    func checkIngredients() -> (number:Int, text:String){
        var ingr:String = "";
        var number : Int = 0;
        if (jamon.isChecked) {
            ingr+=(jamon.titleLabel?.text)!+"\n";
            number++;
        }
        if (pimiento.isChecked) {
            ingr+=(pimiento.titleLabel?.text)!+"\n";
            number++;
        }
        if (cebolla.isChecked) {
            ingr+=(cebolla.titleLabel?.text)!+"\n";
            number++;
        }
        if (aceituna.isChecked) {
            ingr+=(aceituna.titleLabel?.text)!+"\n";
            number++;
        }
        if (salchicha.isChecked) {
            ingr+=(salchicha.titleLabel?.text)!+"\n";
            number++;
        }
        if (pavo.isChecked) {
            ingr+=(pavo.titleLabel?.text)!+"\n";
            number++;
        }
        if (pepperoni.isChecked) {
            ingr+=(pepperoni.titleLabel?.text)!+"\n";
            number++;
        }
        return (number, ingr);
    }

    @IBOutlet weak var warning: UILabel!
    @IBAction func nextAction(sender: AnyObject) {
        print("pressed\n");
        let ing = checkIngredients();
        if (ing.number > 0 && ing.number < 6) {
            let conf = self.storyboard!.instantiateViewControllerWithIdentifier("Confirmacion") as! Confirmacion
            
            conf.masa = self.masa;
            conf.cheese = self.cheese;
            conf.size = self.size;
            conf.ingredients = ing.text;
            warning.text = "";
            self.navigationController!.pushViewController(conf, animated: true)
        } else {
            warning.text = "Escoge de 1 a 5 ingredientes";
        }
    }

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
    
    /*override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let svc = segue.destinationViewController as! Confirmacion;
        print("size is:\(size)\n");
        print("cheese is:\(cheese)\n");
        print("masa is:\(masa)\n");
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
