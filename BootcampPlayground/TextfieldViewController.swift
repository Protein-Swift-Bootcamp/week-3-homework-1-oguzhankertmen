//
//  TextfieldViewController.swift
//  BootcampPlayground
//
//  Created by Oğuzhan KERTMEN on 24.12.2022.
//

import UIKit

protocol TextfieldDelegate: AnyObject {
  func valuesDidSave(_ name: String?, _ surname: String?, _ adress: String?)
}
class TextfieldViewController: UIViewController {

  @IBOutlet weak var nameTextfield: UITextField!
  @IBOutlet weak var surnameTextfield: UITextField!
  @IBOutlet weak var adressTextfield: UITextField!
  
  weak var delegate: TextfieldDelegate?
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
  
  @IBAction func saveButtonPressed(_ sender: Any) {
    delegate?.valuesDidSave(nameTextfield.text, surnameTextfield.text, adressTextfield.text)
    let vc = storyboard?.instantiateViewController(withIdentifier: "FormView") as! FormViewController
    vc.modalPresentationStyle = .fullScreen
    dismiss(animated: true)
  }
  
  
}
