//
//  ViewController.h
//  editorRTF
//
//  Created by EPS on 26/05/15.
//  Copyright (c) 2015 EPS. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

- (IBAction)clear:(id)sender;

@property (unsafe_unretained) IBOutlet NSTextView *textView;

@end
