//
// Created by ___USERNAME___ on ___TIME___.
// ___COPYRIGHT___
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ___FILEBASENAME___InteractorOutputProtocol;
@protocol ___FILEBASENAME___InteractorInputProtocol;
@protocol ___FILEBASENAME___ViewProtocol;
@protocol ___FILEBASENAME___PresenterProtocol;
@protocol ___FILEBASENAME___LocalDataManagerInputProtocol;
@protocol ___FILEBASENAME___APIDataManagerInputProtocol;


@class ___FILEBASENAME___WireFrame;

@protocol ___FILEBASENAME___ViewProtocol
@required
@property (nonatomic, strong) id <___FILEBASENAME___PresenterProtocol> presenter;
/**
 * Add here your methods for communication PRESENTER -> VIEWCONTROLLER
 */
@end

@protocol ___FILEBASENAME___WireFrameProtocol
@required
+ (void)present___FILEBASENAME___ModuleFrom:(id)fromView;
/**
 * Add here your methods for communication PRESENTER -> WIREFRAME
 */
@end

@protocol ___FILEBASENAME___PresenterProtocol
@required
@property (nonatomic, weak) id <___FILEBASENAME___ViewProtocol> view;
@property (nonatomic, strong) id <___FILEBASENAME___InteractorInputProtocol> interactor;
@property (nonatomic, strong) id <___FILEBASENAME___WireFrameProtocol> wireFrame;
/**
 * Add here your methods for communication VIEWCONTROLLER -> PRESENTER
 */
@end

@protocol ___FILEBASENAME___InteractorOutputProtocol
/**
 * Add here your methods for communication INTERACTOR -> PRESENTER
 */
@end

@protocol ___FILEBASENAME___InteractorInputProtocol
@required
@property (nonatomic, weak) id <___FILEBASENAME___InteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <___FILEBASENAME___APIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <___FILEBASENAME___LocalDataManagerInputProtocol> localDataManager;
/**
 * Add here your methods for communication PRESENTER -> INTERACTOR
 */
@end


@protocol ___FILEBASENAME___DataManagerInputProtocol
/**
 * Add here your methods for communication INTERACTOR -> DATAMANAGER
 */
@end

@protocol ___FILEBASENAME___APIDataManagerInputProtocol <___FILEBASENAME___DataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
 */
@end

@protocol ___FILEBASENAME___LocalDataManagerInputProtocol <___FILEBASENAME___DataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> LOCLDATAMANAGER
 */
@end


