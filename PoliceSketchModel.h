//
//  PoliceSketchModel.h
//  PoliceSketch
//
//  Created by KevinT on 2018-02-19.
//  Copyright © 2018 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PoliceSketchModel : NSObject

@property (nonatomic) NSMutableArray *eyesMutableArray;
@property (nonatomic) NSMutableArray *noseMutableArray;
@property (nonatomic) NSMutableArray *mouthMutableArray;

@property (nonatomic) UIImage *eyes;
@property (nonatomic) UIImage *nose;
@property (nonatomic) UIImage *mouth;

@property (nonatomic) int eyesIndex;
@property (nonatomic) int noseIndex;
@property (nonatomic) int mouthIndex;

-(UIImage *) eyesNext;
-(UIImage *) eyesPrevious;
-(UIImage *) noseNext;
-(UIImage *) nosePrevious;
-(UIImage *) mouthNext;
-(UIImage *) mouthPrevious;

@end
