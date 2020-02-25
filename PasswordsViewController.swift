//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by user156551 on 09/02/20.
//  Copyright © 2020 GABRIEL MELO. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    
    @IBOutlet weak var tvPasswords: UITextView!
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
  
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Total de Senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
       
        generatePassword()
    }
        
    func generatePassword() {
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
            
        }
    }
    
    
    @IBAction func Generate(_ sender: Any) {
        generatePassword()
    }
    

}
