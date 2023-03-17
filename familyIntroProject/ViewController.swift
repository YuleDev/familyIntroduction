import UIKit

class ViewController: UIViewController {
    
    let familyMembers: [String: FamilyMemberModel] = [
        "mother": FamilyMemberModel(name: "mother", imageName: "mother", description: "this is my mother"), "wife": FamilyMemberModel(name: "wife", imageName: "wife", description: "this is my wife"), "brother": FamilyMemberModel(name: "brother", imageName: "brother", description: "this is my brother"), "cat": FamilyMemberModel(name: "cat", imageName: "cat", description: "this is my beloved cat")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailViewController = segue.destination as? DetailViewController else { return }
        
        if let familyID = segue.identifier {
            detailViewController.familyMember = familyMembers[familyID]
        }
    }
}

// This is not being utilized for current project 3/16
