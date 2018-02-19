//
//  ViewController.m
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "LHLViewController.h"

@interface LHLViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;

//@property (nonatomic) NSMutableArray *eyesImages;
//@property (nonatomic) NSMutableArray *noseImages;
//@property (nonatomic) NSMutableArray *mouthImages;

@property (nonatomic) UIImage *eyes;
@property (nonatomic) UIImage *nose;
@property (nonatomic) UIImage *mouth;

@end

@implementation LHLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  self.eyes = [UIImage imageNamed:@"eyes_1"];
  _eyesImageView.image = self.eyes;
  
  self.nose = [UIImage imageNamed:@"nose_1"];
  _noseImageView.image = self.nose;

  self.mouth = [UIImage imageNamed:@"mouth_1"];
  _mouthImageView.image = self.mouth;
  
  NSArray *eyesArray = [[NSArray alloc] initWithObjects:@"eyes_1", @"eyes_2", @"eyes_3", @"eyes_4", @"eyes_5", nil];
  NSArray *noseArray = [[NSArray alloc] initWithObjects:@"nose_1", @"nose_2", @"nose_3", @"nose_4", @"nose_5", nil];
  NSArray *mouthArray = [[NSArray alloc] initWithObjects:@"mouth_1", @"mouth_2", @"mouth_3", @"mouth_4", @"mouth_5", nil];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextEyesImage:(id)sender {
}
- (IBAction)previousEyesImage:(id)sender {
}
- (IBAction)nextNoseImage:(id)sender {
}
- (IBAction)previousNoseImage:(id)sender {
}
- (IBAction)nextMouthImage:(id)sender {
}
- (IBAction)previousMouthImage:(id)sender {
}
- (instancetype)init
{
  self = [super init];
  if (self) {
//    self.eyesImageView = [[UIImageView alloc] initWithImage:_eyes];
//    self.eyesImageView.highlightedImage = _eyes;
//
//    self.noseImageView = [[UIImageView alloc] initWithImage:_nose];
//    self.noseImageView.highlightedImage = _nose;
//
//    self.mouthImageView = [[UIImageView alloc] initWithImage:_mouth];
//    self.mouthImageView.highlightedImage = _mouth;

  }
  return self;
}
@end
