//
//  MainViewController.h
//  MoveRiceCakes
//
//  Created by masuimasanori on 2014/01/04.
//
//

#import <UIKit/UIKit.h>

#import "PlayViewController.h"
#import "PlayApp.h"

@interface MainViewController : UITableViewController
@property (retain, nonatomic) IBOutlet UIButton *buttonStart;
- (IBAction)buttonStartTouched:(id)sender;

@end
