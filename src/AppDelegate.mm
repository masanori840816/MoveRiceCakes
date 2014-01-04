//
//  MyAppDelegate.m
//  Created by lukasz karluk on 12/12/11.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [super applicationDidFinishLaunching:application];
    
    UIStoryboard *sbdMainView = [UIStoryboard storyboardWithName:@"MainView" bundle:nil];
    MainViewController *mainView = [sbdMainView instantiateInitialViewController];
    [self.window setRootViewController:mainView];
    
    return YES;
}

- (void) dealloc {
    [super dealloc];
}

@end
