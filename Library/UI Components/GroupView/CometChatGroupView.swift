//  CometChatGroupView.swift
//  CometChatUIKit
//  Created by Pushpsen Airekar on 20/09/19.
//  Copyright ©  2019 CometChat Inc. All rights reserved.


/* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

CometChatGroupView: This component will be the class of UITableViewCell with components such as groupAvatar(Avatar), groupName(UILabel), groupDetails(UILabel).

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  */

// MARK: - Importing Frameworks.

import UIKit
import CometChatPro

/*  ----------------------------------------------------------------------------------------- */

class CometChatGroupView: UITableViewCell {

     // MARK: - Declaration of IBOutlets
    
    @IBOutlet weak var groupAvatar: Avatar!
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var groupDetails: UILabel!
    @IBOutlet weak var typing: UILabel!
    
    // MARK: - Declaration of Variables
    
    var group: Group! {
        didSet {
            groupName.text = group.name
            switch group.groupType {
            case .public:
                 groupDetails.text = "Public"
            case .private:
                groupDetails.text = "Private"
            case .password:
                groupDetails.text = "Password Protected"
            @unknown default:
                break
            }
//            groupAvatar.setImage(string: group.name)
            groupAvatar.set(image: group.icon ?? "", with: group.name ?? "")
        }
    }
    
    // MARK: - Initialization of required Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

/*  ----------------------------------------------------------------------------------------- */
