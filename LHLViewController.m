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

@property (nonatomic) PoliceSketchModel *policeSketch;

@end

@implementation LHLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  self.policeSketch = [[PoliceSketchModel alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
  self.policeSketch.eyes = [UIImage imageNamed:@"eyes_1"];
  self.eyesImageView.image = self.policeSketch.eyes;
  
  self.policeSketch.nose = [UIImage imageNamed:@"nose_1"];
  self.noseImageView.image = self.policeSketch.nose;

  self.policeSketch.mouth = [UIImage imageNamed:@"mouth_1"];
  self.mouthImageView.image = self.policeSketch.mouth;
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextEyesImage:(id)sender {
  UIImage *eyesImage = self.policeSketch.eyesNext;
  self.eyesImageView.image = eyesImage;
}

- (IBAction)previousEyesImage:(id)sender {
  UIImage *eyesImage = self.policeSketch.eyesPrevious;
  self.eyesImageView.image = eyesImage;
}

- (IBAction)nextNoseImage:(id)sender {
  UIImage *noseImage = self.policeSketch.noseNext;
  self.noseImageView.image = noseImage;
}

- (IBAction)previousNoseImage:(id)sender {
  UIImage *noseImage = self.policeSketch.nosePrevious;
  self.noseImageView.image = noseImage;
}

- (IBAction)nextMouthImage:(id)sender {
  UIImage *mouthImage = self.policeSketch.mouthNext;
  self.mouthImageView.image = mouthImage;
}
- (IBAction)previousMouthImage:(id)sender {
  UIImage *mouthImage = self.policeSketch.mouthPrevious;
  self.mouthImageView.image = mouthImage;
}

@end
