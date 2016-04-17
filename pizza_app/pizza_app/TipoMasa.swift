//
//  TipoMasa.swift
//  pizza_app
//
//  Created by Francisco Manuel Romero on 17/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import UIKit

class TipoMasa: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var nextStep: UIButton!
    
    var size:String = "";
    var type:String = "Delgada";
    
    let tipoMasa = ["Delgada", "Crujiente", "Gruesa"];
    @IBOutlet weak var pickerMasa: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerMasa.delegate=self;
        pickerMasa.dataSource=self;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let svc = segue.destinationViewController as! TipoQueso;
        print("size is:\(size)\n");
        print("type is:\(type)\n");
        svc.masa = self.type;
        svc.size = self.size;
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoMasa.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoMasa[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.type=tipoMasa[row]
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
