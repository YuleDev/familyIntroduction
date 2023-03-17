import UIKit

//struct FamilyMember {
//    let name: String
//    let imageName: String
//    let description: String
//}
// the above was commented out to use the below code for the family project 2.0 on 3/16/23

class DetailViewController: UIViewController {
    var familyMember: FamilyMemberModel?
    
    init?(coder: NSCoder, FamilyMemberModel: FamilyMemberModel?) {
        self.familyMember = FamilyMemberModel
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet var FamilyMemberName: UILabel!
    @IBOutlet var FamilyMemberImage: UIImageView!
    @IBOutlet var FamilyMemberDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let familyMember else { return }
        
        FamilyMemberName.text = familyMember.name
        FamilyMemberImage.image = UIImage(named: familyMember.imageName)
        FamilyMemberDescription.text = familyMember.description
    }
}

// utilize pathindex for cell tapped to grab object information to fill here?
