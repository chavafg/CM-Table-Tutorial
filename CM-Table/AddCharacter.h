//
//  AddCharacter.h
//  CM-Table
//
//  Created by chava on 6/18/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface AddCharacter : UIViewController


//Textfields
@property (strong, nonatomic) IBOutlet UITextField *addNameTxtFld;
@property (strong, nonatomic) IBOutlet UITextField *addAliasTxtFld;
@property (strong, nonatomic) IBOutlet UITextField *addAgeTxtFld;

//labels
@property (strong, nonatomic) IBOutlet UILabel *addNameLbl;
@property (strong, nonatomic) IBOutlet UILabel *addAliasLbl;
@property (strong, nonatomic) IBOutlet UILabel *addAgeLbl;

//actions
- (IBAction)addCharPressed:(id)sender;

- (IBAction)addCancelBtnPressed:(id)sender;








@end
