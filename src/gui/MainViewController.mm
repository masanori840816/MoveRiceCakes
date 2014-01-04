//
//  MainViewController.m
//  MoveRiceCakes
//
//  Created by masuimasanori on 2014/01/04.
//
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (void)dealloc {
    [_buttonStart release];
    [super dealloc];
}
- (IBAction)buttonStartTouched:(id)sender {
    PlayViewController *playController;
    playController = [[[PlayViewController alloc] initWithFrame:[[UIScreen mainScreen] bounds]
                                                                 app:new PlayApp()] autorelease];
    [self presentViewController: playController animated:YES completion: nil];
    //[self.navigationController pushViewController:playController animated:YES];
}
@end
