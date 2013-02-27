//
//  KDJViewController.m
//  DocumentPreviewTest
//
//  Created by Kristopher Johnson on 2/27/13.
//  Copyright (c) 2013 Kristopher Johnson. All rights reserved.
//

#import "KDJViewController.h"

@implementation KDJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Document Preview Test";
}

- (IBAction)previewButtonWasTapped:(id)sender {
    NSURL *sampleFileURL = [[NSBundle mainBundle] URLForResource:@"SampleFile" withExtension:@"rtf"];
    
    UIDocumentInteractionController *controller = [UIDocumentInteractionController interactionControllerWithURL:sampleFileURL];
    controller.delegate = self;
    
    [controller presentPreviewAnimated:YES];
}

- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller {
    return self.navigationController;
}

@end
