//
//  AddItemInteractor.swift
//  VIPER-SWIFT
//
//  Created by Josh Heald on 10/12/2015.
//  Copyright © 2015 Conrad Stoll. All rights reserved.
//

import UIKit

class AddItemInteractor: NSObject, AddItemInteractorInput {
    let output : AddItemInteractorOutput
    init(output: AddItemInteractorOutput) {
        self.output = output
    }
    
    func showAddInterface() {
        output.presentAddInterface()
    }

}
