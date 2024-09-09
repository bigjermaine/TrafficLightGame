//
//  ViewController.h
//  TrafficLightApp
//
//  Created by MacBook AIR on 09/09/2024.
//

#import <UIKit/UIKit.h>


NSTimer * timer;
NSTimer * scoreTimer;
int scoreInt;
int timerInt; 
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *traddicLight;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)didTapStart:(id)sender;
@end

