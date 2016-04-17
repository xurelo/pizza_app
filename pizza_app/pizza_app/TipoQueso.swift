//
//  TipoQueso.swift
//  pizza_app
//
//  Created by Francisco Manuel Romero on 17/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import UIKit

class TipoQueso: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    let tipoQueso = ["Mozarella", "Cheddar", "Parmesano", "Sin Queso"];
    var size = "";
    var masa = "";
    var cheeseType = "Mozarella";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerQueso.delegate=self;
        pickerQueso.dataSource=self;
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var pickerQueso: UIPickerView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let svc = segue.destinationViewController as! Ingredientes;
        print("size is:\(size)\n");
        print("cheese is:\(cheeseType)\n");
        print("masa is:\(masa)\n");
        svc.masa = self.masa;
        svc.cheese = self.cheeseType;
        svc.size = self.size;
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoQueso.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoQueso[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.cheeseType = tipoQueso[row]
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
