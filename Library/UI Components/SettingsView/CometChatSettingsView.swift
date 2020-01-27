//  CometChatSettingsView.swift
//  CometChatUIKit
//  Created by Pushpsen Airekar on 20/09/19.
//  Copyright ©  2019 CometChat Inc. All rights reserved.


// MARK: - Importing Frameworks.

import UIKit
import CometChatPro

/*  ----------------------------------------------------------------------------------------- */

class CometChatSettingsView: UITableViewCell {
    
    // MARK: - Declaration of IBOutlet
    
    @IBOutlet weak var settingsName: UILabel!
    @IBOutlet weak var settingsIcon: UIImageView!
        
    
     // MARK: - Initialization of required Methods
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
}

/*  ----------------------------------------------------------------------------------------- */


