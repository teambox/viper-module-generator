//
// Created by Pedro Piñera Buendía on 2014.
// Copyright (c) 2014 PPinera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VIPERProtocols.h"

@interface VIPERView : UIViewController <VIPERViewProtocol>

@property (nonatomic, strong) id <VIPERPresenterProtocol> presenter;

@end
