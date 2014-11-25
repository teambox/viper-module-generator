//
//  TWNavigationController.swift
//  VIPERGenDemo
//
//  Created by Pedro Piñera Buendía on 10/11/14.
//  Copyright (c) 2014 ___Redbooth___. All rights reserved.
//

import Foundation
import UIKit

class TWNavigationController: UINavigationController
{
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return self.topViewController.preferredStatusBarStyle()
    }
}