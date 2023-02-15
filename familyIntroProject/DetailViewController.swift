import UIKit

struct FamilyMember {
    let name: String
    let imageName: String
    let description: String
}

class DetailViewController: UIViewController {
    var FamilyMember: FamilyMember?
    
    @IBOutlet var FamilyMemberName: UILabel!
    @IBOutlet var FamilyMemberImage: UIImageView!
    @IBOutlet var FamilyMemberDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let FamilyMember else { return }
        
        FamilyMemberName.text = FamilyMember.name
        FamilyMemberImage.image = UIImage(named: FamilyMember.imageName)
        FamilyMemberDescription.text = FamilyMember.description
        
    }
}
