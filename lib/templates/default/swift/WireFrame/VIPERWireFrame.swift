//
//  VIPERWireFrame.swift
//  VIPERGenDemo
//
//  Created by Pedro Piñera Buendía on 24/10/14.
//  Copyright (c) 2014 ___Redbooth___. All rights reserved.
//

import Foundation

class VIPERWireFrame: VIPERWireFrameProtocol
{
    class func presentVIPERModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: VIPERViewProtocol = VIPERView()
        var presenter: protocol<VIPERPresenterProtocol, VIPERInteractorOutputProtocol> = VIPERPresenter()
        var interactor: VIPERInteractorInputProtocol = VIPERInteractor()
        var APIDataManager: VIPERAPIDataManagerInputProtocol = VIPERAPIDataManager()
        var localDataManager: VIPERLocalDataManagerInputProtocol = VIPERLocalDataManager()
        var wireFrame: VIPERWireFrameProtocol = VIPERWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
    }
}