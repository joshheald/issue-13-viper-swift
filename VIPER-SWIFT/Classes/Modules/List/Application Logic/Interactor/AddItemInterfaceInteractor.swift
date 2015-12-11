//
//  AddItemInteractor.swift
//  VIPER-SWIFT
//
//  Created by Josh Heald on 10/12/2015.
//  Copyright © 2015 Conrad Stoll. All rights reserved.
//

import UIKit

class AddItemInterfaceInteractor: NSObject, AddItemInterfaceInteractorInput {
    let output : AddItemInterfaceInteractorOutput
    init(output: AddItemInterfaceInteractorOutput) {
        self.output = output
    }
    
    func showAddInterface() {
        output.presentAddInterface()
    }

}
