//
// Created by ___USERNAME___ on ___TIME___.
// ___COPYRIGHT___
//

#import "___FILEBASENAME___WireFrame.h"

@implementation ___FILEBASENAME___WireFrame

+ (void)present___FILEBASENAME___ModuleFrom:(UIViewController*)fromViewController
{
    // Generating module components
    id <___FILEBASENAME___ViewProtocol> view = [[___FILEBASENAME___View alloc] init];
    id <___FILEBASENAME___PresenterProtocol, ___FILEBASENAME___InteractorOutputProtocol> presenter = [___FILEBASENAME___Presenter new];
    id <___FILEBASENAME___InteractorInputProtocol> interactor = [___FILEBASENAME___Interactor new];
    id <___FILEBASENAME___APIDataManagerInputProtocol> APIDataManager = [___FILEBASENAME___APIDataManager new];
    id <___FILEBASENAME___LocalDataManagerInputProtocol> localDataManager = [___FILEBASENAME___LocalDataManager new];
    id <___FILEBASENAME___WireFrameProtocol> wireFrame= [___FILEBASENAME___WireFrame new];

    // Connecting
    view.presenter = presenter;
    presenter.view = view;
    presenter.wireFrame = wireFrame;
    presenter.interactor = interactor;
    interactor.presenter = presenter;
    interactor.APIDataManager = APIDataManager;
    interactor.localDataManager = localDataManager;

    //TOODO - New view controller presentation (present, push, pop, .. )
}

@end
