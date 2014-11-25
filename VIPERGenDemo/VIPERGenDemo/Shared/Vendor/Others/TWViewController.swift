//
//  TWViewController.swift
//  VIPERGenDemo
//
//  Created by Pedro Piñera Buendía on 10/11/14.
//  Copyright (c) 2014 ___Redbooth___. All rights reserved.
//

import Foundation
import UIKit

class TWViewController: UIViewController
{
    override func setNeedsStatusBarAppearanceUpdate() {
        if (self.navigationController != nil) {
            self.navigationController!.setNeedsStatusBarAppearanceUpdate()
        }
        else {
            super.setNeedsStatusBarAppearanceUpdate()
        }
    }
}