import UIKit

class ViewController: UIViewController {
    
    let familyMembers: [String: FamilyMember] = [
        "mother": FamilyMember(name: "mother", imageName: "mother", description: "this is my mother"), "wife": FamilyMember(name: "wife", imageName: "wife", description: "this is my wife"), "brother": FamilyMember(name: "brother", imageName: "brother", description: "this is my brother"), "cat": FamilyMember(name: "cat", imageName: "cat", description: "this is my beloved cat")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailViewController = segue.destination as? DetailViewController else { return }
        
        if let familyID = segue.identifier {
            detailViewController.FamilyMember = familyMembers[familyID]
        }
    }
}
