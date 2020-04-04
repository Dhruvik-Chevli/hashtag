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
    textField.textColor = UIColor.label
    textField.tintColor = UIColor.secondaryLabel
    textField.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.secondaryLabel])
    textField.borderStyle = UITextField.BorderStyle.roundedRect
    textField.layer.borderColor = UIColor.secondaryLabel.cgColor
    textField.layer.borderWidth = 0.5
    textField.layer.cornerRadius = 5
    textField.clearButtonMode = UITextField.ViewMode.whileEditing
    textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
}


class SampleScreen: UIViewController {
    enum SubmitError:Error {
        case fieldsCannotBeNull
    }
    var titleLabel:UILabel = {
        let titles = UILabel()
        titles.text = "Add Users"
        titles.translatesAutoresizingMaskIntoConstraints = false
        titles.font = UIFont(name: "Helvetica-Bold", size: 30)
        return titles
    }()
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
    var submit: UIButton = {
        let button=UIButton(type: .system)
        button.setTitle("Add User", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(addUser), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc fileprivate func addUser()
    {
         do{
                   let name = nameTextField.text
                   let username = usernameTF.text
                   let city = adrTF.text
                   let company = companyTF.text
                   let phone = phoneTF.text
                   let website = websiteTF.text
                   let id = Int(idTF.text!)
                   
                   if(id==nil || name==nil || username==nil || city==nil || website==nil || phone==nil || company==nil || name=="" || username=="" || city==""||website=="" || phone==""||company=="")
                   {
                       throw SubmitError.fieldsCannotBeNull
                   }
                   
                   let address=Address(city:city!)
                   let companys=Company(name: company!)
            let user=User(id: id!, name: name!, username: username!, website: website!, address: address, company: companys)
                   //userList.listOfUsers?.insert(user, at: userList.listOfUsers?.endIndex ?? 0)
                   //isUpdated = 1
                   //let notif = Notification.Name(rawValue: isUpdated)
                   nameTextField.text=""
                   adrTF.text=""
                   phoneTF.text=""
                   companyTF.text=""
                   websiteTF.text=""
                   usernameTF.text=""
                   idTF.text=""
            }
        catch {
            let alert = UIAlertController(title: "Fill the formly correctly", message: "Not all the fields are correctly filled", preferredStyle: .actionSheet)
            alert.view.layoutIfNeeded()

            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                        self.present(alert, animated: true)
        }
    }
    fileprivate func setUpTF(_ tf:UITextField)
    {
        tf.heightAnchor.constraint(equalToConstant: 45).isActive = true
        tf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        tf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    fileprivate func setUpView()
    {
        
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        idTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        setUpTF(idTF)
        
        nameTextField.topAnchor.constraint(equalTo: idTF.bottomAnchor, constant: 20).isActive = true
        setUpTF(nameTextField)
        
        usernameTF.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20).isActive = true
        setUpTF(usernameTF)
        
        adrTF.topAnchor.constraint(equalTo: usernameTF.bottomAnchor, constant: 20).isActive = true
        setUpTF(adrTF)
        
        phoneTF.topAnchor.constraint(equalTo: adrTF.bottomAnchor, constant: 20).isActive = true
        setUpTF(phoneTF)
        
        websiteTF.topAnchor.constraint(equalTo: phoneTF.bottomAnchor, constant: 20).isActive = true
        setUpTF(websiteTF)
        
        companyTF.topAnchor.constraint(equalTo: websiteTF.bottomAnchor, constant: 20).isActive = true
        setUpTF(companyTF)

        submit.topAnchor.constraint(equalTo: companyTF.bottomAnchor, constant: 30).isActive = true
        submit.heightAnchor.constraint(equalToConstant: 45).isActive = true
        submit.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        submit.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGroupedBackground
        view.addSubview(nameTextField)
        view.addSubview(usernameTF)
        view.addSubview(idTF)
        view.addSubview(adrTF)
        view.addSubview(phoneTF)
        view.addSubview(websiteTF)
        view.addSubview(companyTF)
        view.addSubview(titleLabel)
        view.addSubview(submit)
        setUpView()
        view.snapshotView(afterScreenUpdates: true)

    }
}

