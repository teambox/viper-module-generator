//
//  TwitterLoginLocalDataManager.swift
//  TwitterLoginGenDemo
//
//  Created by Pedro Piñera Buendía on 24/10/14.
//  Copyright (c) 2014 ___Redbooth___. All rights reserved.
//

import Foundation

class TwitterLoginLocalDataManager: TwitterLoginLocalDataManagerInputProtocol
{
    init() {}
    
    func persistUserCredentials(#credentials: TwitterLoginItem)
    {
        TwitterAccountManager.persistAccount(fromLoginItem: credentials)
    }
    
    func setupLocalStorage()
    {
        SugarRecord.removeDatabase()
        setupStorage()
    }
}