//
//  FormViewController.swift
//  BootcampPlayground
//
//  Created by Oğuzhan KERTMEN on 18.12.2022.
//

import UIKit

class FormViewController: UIViewController {

  @IBOutlet weak var nameTitle: UILabel!
  @IBOutlet weak var surnameTitle: UILabel!
  @IBOutlet weak var adressTitle: UILabel!
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var surnameLabel: UILabel!
  @IBOutlet weak var adressLabel: UILabel!
  
  @IBOutlet weak var enterButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
  }
    @IBAction func enterButtonPressed(_ sender: Any) {
      let destinationVC = storyboard?.instantiateViewController(withIdentifier: "TextfieldView") as! TextfieldViewController
      destinationVC.delegate = self
      destinationVC.modalPresentationStyle = .pageSheet
      present(destinationVC, animated: true)
      
    }
    
}

extension FormViewController: TextfieldDelegate {
  func valuesDidSave(_ name: String?, _ surname: String?, _ adress: String?) {
    nameLabel.text = name
    surnameLabel.text = surname
    adressLabel.text = adress
  }
  
  
  
}
