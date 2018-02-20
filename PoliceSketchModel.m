//
//  PoliceSketchModel.m
//  PoliceSketch
//
//  Created by KevinT on 2018-02-19.
//  Copyright © 2018 Sam Meech-Ward. All rights reserved.
//

#import "PoliceSketchModel.h"

@implementation PoliceSketchModel
- (instancetype)init
{
  self = [super init];
  if (self) {
    NSArray *eyesArray = [[NSArray alloc] initWithObjects:@"eyes_1", @"eyes_2", @"eyes_3", @"eyes_4", @"eyes_5", nil];
    self.eyesMutableArray = [[NSMutableArray alloc] init];
    [self.eyesMutableArray addObjectsFromArray:eyesArray];
    
    NSArray *noseArray = [[NSArray alloc] initWithObjects:@"nose_1", @"nose_2", @"nose_3", @"nose_4", @"nose_5", nil];
    self.noseMutableArray = [[NSMutableArray alloc] init];
    [self.noseMutableArray addObjectsFromArray:noseArray];
    
    NSArray *mouthArray = [[NSArray alloc] initWithObjects:@"mouth_1", @"mouth_2", @"mouth_3", @"mouth_4", @"mouth_5", nil];
    self.mouthMutableArray = [[NSMutableArray alloc] init];
    [self.mouthMutableArray addObjectsFromArray:mouthArray];

    self.eyesIndex = 0;
    self.noseIndex = 0;
    self.mouthIndex = 0;
  }
  return self;
}

-(UIImage *) eyesNext{
  self.eyesIndex++;
  
  if (self.eyesIndex >= self.eyesMutableArray.count) {
    self.eyesIndex = 0;
  }
  
  return [UIImage imageNamed:[self.eyesMutableArray objectAtIndex:self.eyesIndex]];
}

-(UIImage *) eyesPrevious{
  self.eyesIndex--;
  
  if (self.eyesIndex < 0) {
    self.eyesIndex = 4;
  }
  return [UIImage imageNamed:[self.eyesMutableArray objectAtIndex:self.eyesIndex]];
}

-(UIImage *) noseNext{
  self.noseIndex++;
  
  if (self.noseIndex >= self.noseMutableArray.count) {
    self.noseIndex = 0;
  }
  
  return [UIImage imageNamed:[self.noseMutableArray objectAtIndex:self.noseIndex]];
}

-(UIImage *) nosePrevious{
  self.noseIndex--;
  
  if (self.noseIndex < 0) {
    self.noseIndex = 4;
  }
  return [UIImage imageNamed:[self.noseMutableArray objectAtIndex:self.noseIndex]];
}

-(UIImage *) mouthNext{
  self.mouthIndex++;
  
  if (self.mouthIndex >= self.mouthMutableArray.count) {
    self.mouthIndex = 0;
  }
  
  return [UIImage imageNamed:[self.mouthMutableArray objectAtIndex:self.mouthIndex]];
}
-(UIImage *) mouthPrevious{
  self.mouthIndex--;
  
  if (self.mouthIndex < 0) {
    self.mouthIndex = 4;
  }
  return [UIImage imageNamed:[self.mouthMutableArray objectAtIndex:self.mouthIndex]];
}

@end
