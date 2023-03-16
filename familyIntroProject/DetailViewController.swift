import UIKit

//struct FamilyMember {
//    let name: String
//    let imageName: String
//    let description: String
//}
// the above was commented out to use the below code for the family project 2.0 on 3/16/23

class DetailViewController: UIViewController {
    var FamilyMember: FamilyMemberModel?
    
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

// utilize pathindex for cell tapped to grab object information to fill here?
