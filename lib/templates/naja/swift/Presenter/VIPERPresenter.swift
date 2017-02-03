//
//  VIPERPresenter.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERPresenter: VIPERPresenterProtocol, VIPERInteractorOutputProtocol {
    
    // MARK: Properties
    
    weak var view: VIPERViewProtocol?
    var interactor: VIPERInteractorInputProtocol?
    var wireFrame: VIPERWireFrameProtocol?
    
    // MARK: VIPERPresenterProtocol
    
    // MARK: VIPERInteractorOutputProtocol
}
