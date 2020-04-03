//
//  SampleScreen.swift
//  Users
//
//  Created by Nitigya Kapoor on 03/04/20.
//  Copyright © 2020 Dhruvik Chevli. All rights reserved.
//

import UIKit
fileprivate func setUpTextField(_ textField: UITextField,placeHolder: String) {
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.placeholder = placeHolder
    textField.keyboardType = UIKeyboardType.default
    textField.returnKeyType = UIReturnKeyType.done
    textField.autocorrectionType = UITextAutocorrectionType.no
    textField.font = UIFont.systemFont(ofSize: 20)
    textField.borderStyle = UITextField.BorderStyle.roundedRect
    //textField.tintColor = .black
    //textField.setIcon(UIImage(named: "person"))
    //textField.setIcon(UIImage(named: "icon-user"))
    //textField.setIcon()
    //textField.textAlignment = .center
    textField.clearButtonMode = UITextField.ViewMode.whileEditing
    textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
}


class SampleScreen: UIViewController {
    var nameTextField:UITextField = {
         let textField = UITextField()
         setUpTextField(textField,placeHolder: "Name")
         return textField
    }()
    var usernameTF: UITextField = {
        let textField=UITextField()
        setUpTextField(textField, placeHolder: "Username")
        return textField
    }()
    var idTF: UITextField = {
        let textField=UITextField()
        setUpTextField(textField, placeHolder: "Id")
        return textField
    }()
    var adrTF: UITextField = {
        let textField=UITextField()
        setUpTextField(textField, placeHolder: "Address")
        return textField
    }()
    var phoneTF: UITextField = {
        let textField=UITextField()
        setUpTextField(textField, placeHolder: "Contact Number")
        return textField
    }()
    var websiteTF: UITextField = {
        let textField=UITextField()
        setUpTextField(textField, placeHolder: "Website")
        return textField
    }()
    var companyTF: UITextField = {
        let textField=UITextField()
        setUpTextField(textField, placeHolder: "Company")
        return textField
    }()
    fileprivate func setUpView()
    {
        nameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 45).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGroupedBackground
        view.addSubview(nameTextField)
        setUpView()
    }

}
