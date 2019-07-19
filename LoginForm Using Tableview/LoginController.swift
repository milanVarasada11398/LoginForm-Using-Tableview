//
//  LoginController.swift
//  LoginForm Using Tableview
//
//  Created by Milan Varasada on 19/07/19.
//  Copyright © 2019 Milan Varasada. All rights reserved.
//

import UIKit

class LoginController: UITableViewController {

    @IBOutlet var signUp: UIButton!
    @IBOutlet var signIn: UIButton!
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var selectImageButton: UIButton!
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var FirstName: UITextField!
    @IBOutlet var lastName: UITextField!
    @IBOutlet var email: UITextField!
    
   var isSignInScreenShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let SignInHiddenRows = [3,4,7,8]
        let SignUpHiddenRows = [6,9]
        if isSignInScreenShowing {
//            if indexPath.row == 0 {
//               return tableView.bounds.height * 0.35
//            } else
            if SignInHiddenRows.contains(indexPath.row) {
                  return 0
            }
        } else {
            if SignUpHiddenRows.contains(indexPath.row) {
                return 0
            }
        }
        return super.tableView(tableView, heightForRowAt: indexPath)
    }

    @IBAction func toggleButton(_ sender: Any) {
        isSignInScreenShowing = !isSignInScreenShowing
        if isSignInScreenShowing {
            print("Sign in Screen showing now")
        } else {
            print("Sign Up screen Showing now")
        }
        tableView.reloadData()
    }
   
    @IBAction func tapSignUp(_ sender: Any) {
        print("Sign Up")
    }
    @IBAction func tapSignIn(_ sender: Any) {
        print("Sign In")
    }
}
