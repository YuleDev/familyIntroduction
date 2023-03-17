import UIKit

class FamilyTableViewController: UITableViewController {
    
    struct PropertyKeys {
        static let familyCell = "FamilyCell"
    }
    
    var family: [FamilyMemberModel] = [
        FamilyMemberModel(name: "mother", imageName: "mother", description: "this is my mother"),
        FamilyMemberModel(name: "brother", imageName: "brother", description: "this is my brother"),
        FamilyMemberModel(name: "wife", imageName: "wife", description: "this is my wife"),
        FamilyMemberModel(name: "cat", imageName: "cat", description: "this is my beloved cat")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return family.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.familyCell, for: indexPath)
            
            let familyMember = family[indexPath.row]
            
            var content = cell.defaultContentConfiguration()
            content.text = familyMember.name
            cell.contentConfiguration = content
            
            return cell
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard tableView.indexPathForSelectedRow != nil else { return }
        
        let person = family[indexPath.row]
        print("\(person)")
        
    }
    
    @IBSegueAction func SendingFamilyFunc(_ coder: NSCoder, sender: Any?) -> DetailViewController? {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else {
            return nil
        }
        
        let person = family[indexPath.row]
        
        return DetailViewController(coder: coder, FamilyMemberModel: person)
    }
}
