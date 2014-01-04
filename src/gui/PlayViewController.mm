//
//  PlayViewController.mm
//  MoveRiceCakes
//
//  Created by masuimasanori on 2014/01/04.
//
//

#import "PlayViewController.h"

@implementation PlayViewController
- (id) initWithFrame:(CGRect)frame app:(ofxiPhoneApp *)app {
    
    ofxiPhoneGetOFWindow()->setOrientation( OF_ORIENTATION_DEFAULT );   //-- default portait orientation.

    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 20, 1026, 30)];
    UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle:@"おもち"];
    UIBarButtonItem *buttonCancel = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(buttonCancelTouched)];
    
    navItem.leftBarButtonItem = buttonCancel;
    [navBar pushNavigationItem:navItem animated:YES];
    
    self = [super initWithFrame:frame app:app];
    [self.view addSubview:navBar];
    
    self.navigationItem.leftBarButtonItem = buttonCancel;
    
    
    return self;
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return NO;
}

- (void) buttonCancelTouched{
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
