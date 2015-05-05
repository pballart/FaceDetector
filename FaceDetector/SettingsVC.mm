//
//  SettingsVC.m
//  FaceDetector
//
//  Created by Pau Ballart Godoy on 5/5/15.
//  Copyright (c) 2015 SolArt Apps. All rights reserved.
//

#import "SettingsVC.h"
#import "ViewController.h"

@interface SettingsVC ()
@property (weak, nonatomic) IBOutlet UITextField *scaleFactorTF;
@property (weak, nonatomic) IBOutlet UITextField *minNeighborsTF;
@property (weak, nonatomic) IBOutlet UITextField *minSizeTF;
@property (weak, nonatomic) IBOutlet UITextField *detectionTypeTF;

@end

@implementation SettingsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(NSString *)fileNameFromNumberType:(NSInteger)number
{
    switch (number) {
        case 1:
            return @"haarcascade_frontalface_default";
            break;
        case 2:
            return @"haarcascade_eye_tree_eyeglasses";
            break;
        case 3:
            return @"haarcascade_eye";
            break;
        case 4:
            return @"haarcascade_frontalcatface_extended";
            break;
        case 5:
            return @"haarcascade_frontalcatface";
            break;
        case 6:
            return @"haarcascade_frontalface_alt_tree";
            break;
        case 7:
            return @"haarcascade_frontalface_alt";
            break;
        case 8:
            return @"haarcascade_frontalface_alt2";
            break;
        case 9:
            return @"haarcascade_fullbody";
            break;
        case 10:
            return @"haarcascade_lefteye_2splits";
            break;
        case 11:
            return @"haarcascade_righteye_2splits";
            break;
        case 12:
            return @"haarcascade_lowerbody";
            break;
        case 13:
            return @"haarcascade_profileface";
            break;
        case 14:
            return @"haarcascade_smile";
            break;
        case 15:
            return @"haarcascade_upperbody";
            break;
        default:
            return @"haarcascade_frontalface_default";
            break;
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController *vc = (ViewController*)[segue destinationViewController];
    vc.scaleFactor = [self.scaleFactorTF.text floatValue];
    vc.minNeighbors = [self.minNeighborsTF.text intValue];
    vc.minSize = [self.minSizeTF.text intValue];
    vc.cascadeName = [self fileNameFromNumberType:[self.detectionTypeTF.text integerValue]];
}


@end
