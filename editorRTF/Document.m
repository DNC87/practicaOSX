//
//  Document.m
//  editorRTF
//
//  Created by EPS on 26/05/15.
//  Copyright (c) 2015 EPS. All rights reserved.
//

#import "Document.h"

@implementation Document

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"Document";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    
    [self.textView  replaceCharactersInRange:NSMakeRange(0,[self.textView.string length]) withRTF:self.fileContents];
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
   
    self.fileContents = [self.textView RTFFromRange:NSMakeRange(0,[self.textView.string length])];
    
    return self.fileContents;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    self.fileContents = nil;
    
    self.fileContents = [[NSData alloc] initWithData:data];
    
    return YES;
}

-(NSPrintOperation *)printOperationWithSettings:(NSDictionary *)printSettings error:(NSError *__autoreleasing *)outError
{
    NSPrintInfo *printInfo = [self printInfo];
    NSPrintOperation *printOp =  [NSPrintOperation printOperationWithView:self.textView printInfo:printInfo];
    
    return printOp;
}

@end
