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
    let listPresenter : ListPresenting
    
    init(interactor: ListInteractorInput, presenter: ListPresenting) {
        listInteractor = interactor
        listPresenter = presenter
    }
    
    func addNewEntryTapped() {
        listPresenter.presentAddInterface()
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
