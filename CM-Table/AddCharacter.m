//
//  AddCharacter.m
//  CM-Table
//
//  Created by chava on 6/18/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "AddCharacter.h"
#import "Declarations.h"
#import "Start.h"

@implementation AddCharacter




- (IBAction)addCharPressed:(id)sender {
    
    [maNames addObject:self.addNameTxtFld.text];
    [maAges addObject:self.addAgeTxtFld.text];
    [maImgs addObject:@"dummy.jpg"];
    [maDescription addObject:@"dummy description shalala"];
    
    for (id obj in maAges){
        NSLog(@"%@", obj);
    }
    Start *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Start"];
    [self presentViewController:viewController animated:YES completion:nil];
    
}

- (IBAction)addCancelBtnPressed:(id)sender {
    Start *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Start"];
    [self presentViewController:viewController animated:YES completion:nil];
    
}
@end
