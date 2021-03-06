//
//  Document.h
//  editorRTF
//
//  Created by EPS on 26/05/15.
//  Copyright (c) 2015 EPS. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument

@property (nonatomic,strong) NSData *fileContents;

@property (unsafe_unretained) IBOutlet NSTextView *textView;

@end
