//
//  ViewController.m
//  editorRTF
//
//  Created by EPS on 26/05/15.
//  Copyright (c) 2015 EPS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (IBAction)clear:(id)sender {
    
    self.textView.string = @"";
    NSLog(@"Cleared");
}
@end
