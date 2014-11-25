//
//  TwitterLoginAPIDataManager.swift
//  TwitterLoginGenDemo
//
//  Created by Pedro Piñera Buendía on 24/10/14.
//  Copyright (c) 2014 ___Redbooth___. All rights reserved.
//

import Foundation
import Accounts
import Social
import SwifteriOS

class TwitterLoginAPIDataManager: TwitterLoginAPIDataManagerInputProtocol
{
    init() {}
    
    // MARK: - TwitterLoginAPIDataManagerInputProtocol
    
    func login(completion: (error: NSError?, loginItem: TwitterLoginItem?) -> ())
    {
        TwitterClient.requestAccesss { (error, credentials) -> () in
            if credentials != nil {
                completion(error: nil, loginItem: TwitterLoginItem(swifterCredentials: credentials!))
            }
            else {
                completion(error: error, loginItem: nil)
            }
        }
    }
}