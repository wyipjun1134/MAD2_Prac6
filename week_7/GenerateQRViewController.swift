//
//  GenerateQRViewController.swift
//  week_7
//
//  Created by Yip jun wei on 4/1/21.
//

import UIKit
import QRCode

class GenerateQRViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var qrcodeIV: UIImageView!
    
    @IBOutlet weak var urlTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        urlTF.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        urlTF.resignFirstResponder()
        if urlTF.text != "" {
            let url = URL(string: urlTF.text!)!
            var qrCode = QRCode(url)
            qrCode?.color = CIColor(rgba: "910003")
            qrcodeIV.image = qrCode?.image
        }
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
