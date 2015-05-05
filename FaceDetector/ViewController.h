//
//  ViewController.h
//  FaceDetector
//
//  Created by Pau Ballart Godoy on 30/4/15.
//  Copyright (c) 2015 SolArt Apps. All rights reserved.
//
//  Permission is given to use this source code file without charge in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, assign) CGFloat scaleFactor;
@property (nonatomic, assign) int minNeighbors;
@property (nonatomic, assign) int minSize;
@property (nonatomic, strong) NSString *cascadeName;
@end

