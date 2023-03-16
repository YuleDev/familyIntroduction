import UIKit

class FamilyTableViewController: UITableViewController {
    
    struct PropertyKeys {
        static let familyCell = "FamilyCell"
    }
    
    var family: [FamilyMemberModel] = [
        FamilyMemberModel(name: "mom", imageName: "any", description: "this is my mom"),
        FamilyMemberModel(name: "brother", imageName: "any", description: "this is my brother"),
        FamilyMemberModel(name: "wife", imageName: "any", description: "this is my wife"),
        FamilyMemberModel(name: "cat", imageName: "any", description: "this is my cat")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

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
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        guard let index = tableView.indexPathForSelectedRow else { return }
//
//        print(index.)
//    }
    
    //above or below?
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard segue.identifier == "saveUnwind" else { return }
//
//        let symbol = symbolTextField.text!
//        let name = nameTextField.text!
//        let description = descriptionTextField.text!
//        let usage = usageTextField.text!
//
//        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
//    }
    
    // use cell label to change detailed view in this file?
}
