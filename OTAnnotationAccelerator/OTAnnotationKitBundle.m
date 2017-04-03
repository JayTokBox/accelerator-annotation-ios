//
//  OTAnnotationKitBundle.m
//
//  Copyright © 2016 Tokbox, Inc. All rights reserved.
//

#import "OTAnnotationKitBundle.h"
#import "OTAnnotationEditTextViewController.h"

@implementation OTAnnotationAcceleratorBundle

+ (NSBundle *)annotationAcceleratorBundle {
    
    NSURL *annotationtKitBundleURL = [[NSBundle mainBundle] URLForResource:@"OTAnnotationAcceleratorBundle" withExtension:@"bundle"];
    if (annotationtKitBundleURL){
        NSBundle *annotationBundle = [NSBundle bundleWithURL:annotationtKitBundleURL];
        if (!annotationBundle.isLoaded) {
            [annotationBundle load];
        }
        return annotationBundle;
    }
    
    annotationtKitBundleURL = [[NSBundle bundleForClass:[OTAnnotationEditTextViewController class]] URLForResource:@"OTAnnotationAcceleratorBundle" withExtension:@"bundle"];
    if (annotationtKitBundleURL) {
        NSBundle *annotationBundle = [NSBundle bundleWithURL:annotationtKitBundleURL];
        if (!annotationBundle.isLoaded) {
            [annotationBundle load];
        }
        return annotationBundle;
    }
    
    return  nil;
}

@end
