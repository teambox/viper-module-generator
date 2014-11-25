//
// Created by ___USERNAME___ on ___TIME___.
// ___COPYRIGHT___
//

#import <Foundation/Foundation.h>
#import "___FILEBASENAME___Protocols.h"

@class ___FILEBASENAME___WireFrame;

@interface ___FILEBASENAME___Presenter : NSObject <___FILEBASENAME___PresenterProtocol, ___FILEBASENAME___InteractorOutputProtocol>

@property (nonatomic, weak) id <___FILEBASENAME___ViewProtocol> view;
@property (nonatomic, strong) id <___FILEBASENAME___InteractorInputProtocol> interactor;
@property (nonatomic, strong) id <___FILEBASENAME___WireFrameProtocol> wireFrame;

@end
