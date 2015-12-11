//
//  ListEventHandler.swift
//  VIPER-SWIFT
//
//  Created by Josh Heald on 08/12/2015.
//  Copyright © 2015 Conrad Stoll. All rights reserved.
//

import UIKit

class ListEventHandler: NSObject, ListModuleInterface, AddModuleDelegate {
    
    let listInteractor : ListInteractorInput
    let addItemInteractor : AddItemInterfaceInteractorInput
    
    init(listInteractor: ListInteractorInput, addItemInteractor: AddItemInterfaceInteractorInput) {
        self.listInteractor = listInteractor
        self.addItemInteractor = addItemInteractor
    }
    
    func addNewEntryTapped() {
        addItemInteractor.showAddInterface()
    }
    
    func viewWillAppear() {
        updateListItems()
    }
    
    private func updateListItems() {
        listInteractor.findUpcomingItems()
    }
    
    func addModuleDidCancelAddAction() {
        // No action necessary
    }
    
    func addModuleDidSaveAddAction() {
        updateListItems()
    }
}
