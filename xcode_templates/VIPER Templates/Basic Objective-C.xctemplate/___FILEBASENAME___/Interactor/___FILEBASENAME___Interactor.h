//
// Created by ___USERNAME___ on ___TIME___.
// ___COPYRIGHT___
//

#import <Foundation/Foundation.h>
#import "___FILEBASENAME___Protocols.h"


@interface ___FILEBASENAME___Interactor : NSObject <___FILEBASENAME___InteractorInputProtocol>

@property (nonatomic, weak) id <___FILEBASENAME___InteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <___FILEBASENAME___APIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <___FILEBASENAME___LocalDataManagerInputProtocol> localDataManager;

@end
