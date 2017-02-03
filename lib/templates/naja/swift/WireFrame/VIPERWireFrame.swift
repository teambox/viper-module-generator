//
//  VIPERWireFrame.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import UIKit

public class VIPERWireFrame: VIPERWireFrameProtocol {

    // MARK: Properties
    
    weak var navigationController: UINavigationController?
    
    // MARK: Factory
    
    public class func presentVIPERFromViewController(source: UIViewController) {
        let presenter = VIPERPresenter()
        let view = VIPERView()
        /*
            If using UIStoryboard use:
            let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            view = storyboard.instantiateViewControllerWithIdentifier("VIPERView") as! VIPERView
        */
        let interactor = VIPERInteractor()
        let wireFrame = VIPERWireFrame()
        
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireFrame = wireFrame
        
        let navigationController = UINavigationController(rootViewController: view)
        wireFrame.navigationController = navigationController
        source.presentViewController(navigationController, animated: true, completion: nil)
    }
    
    // MARK: VIPERWireFrameProtocol
}
