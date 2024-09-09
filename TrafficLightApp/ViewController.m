//
//  ViewController.m
//  TrafficLightApp
//
//  Created by MacBook AIR on 09/09/2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  // Do any additional setup after loading the view.
   scoreInt = 0;
  _scoreLabel.text = [NSString stringWithFormat:@"%i",scoreInt];


}


- (IBAction)didTapStart:(id)sender {
  if (scoreInt == 0) {
    [self firstCount];
  }else if ([self.startButton.titleLabel.text isEqual:@"Restart"]) {
    scoreInt = 0;
    timerInt = 3;
   _scoreLabel.text = [NSString stringWithFormat:@"%i",scoreInt];
    [self startCounter];
  }else {
    [scoreTimer invalidate];
    [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
 //   [self firstCount];
  }
  if (timerInt == 0) {
    scoreInt = 0;
    timerInt = 3;
  }
}

-(void)firstCount {
  timerInt =  3;
  self.traddicLight.image = [UIImage imageNamed:@"trafficLight.png"];
  timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCount) userInfo:nil repeats:YES];
  self.startButton.enabled = NO;
  self.scoreLabel.text = @"0";
 [self.startButton setTitle:@"" forState:UIControlStateNormal];
}

-(void) startCount {
  timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector: @selector(startCounter) userInfo:nil repeats:true];
}

-(void) startCounter{
  timerInt -= 1 ;
  if (timerInt == 2) {
    self.traddicLight.image = [UIImage imageNamed:@"trafficLight3.png"];
  }else if (timerInt == 1) {
    self.traddicLight.image = [UIImage imageNamed:@"trafficLight2.png"];
  }else if (timerInt == 0) {
    self.traddicLight.image = [UIImage imageNamed:@"trafficLight1.png"];
    [timer invalidate];
    self.startButton.enabled = YES;
    [self.startButton setTitle:@"Stop" forState:UIControlStateNormal];
    scoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.0001 target:self selector: @selector(didTapScoreCounter) userInfo:nil repeats:true];
  }

}

-(void) didTapScoreCounter {
  scoreInt += 1;
  _scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}

@end
