//
//  ViewController.swift
//  familyIntroProject
//
//  Created by kole ervine on 2/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    //set the following variables into a array to be picked from based on sender?
//    var brotherImage = UIImage(named: <#T##String#>)
//    var motherImage = UIImage(named: <#T##String#>)
//    var wifeImage = UIImage(named: <#T##String#>)
//    var catImage = UIImage(named: <#T##String#>)
    
    struct FamilyMember {
        let name: String
        let description: String
        let imageName: String
        // use image extension to programatically load a different image according to name?
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //image = UIImage(named: familyMember.imageName)
    }


}

