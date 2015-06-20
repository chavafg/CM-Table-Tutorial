//
//  ViewController.m
//  CM-Table
//
//  Created by Walter Gonzalez Domenzain on 13/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"
#import "cellSimpsons.h"
#import "CharacterDetails.h"
#import "Declarations.h"
#import "AddCharacter.h"

@interface Start ()

@end

@implementation Start
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
-(void)initController {
   //Initialize arrays
    if (!maNames || !maNames.count) {
        
    
    maNames         = [[NSMutableArray alloc] initWithObjects: @"Eddard Start", @"Catelyn Stark", @"Sansa Stark", @"Arya Stark", @"Robb Stark", nil];
    maAges          = [[NSMutableArray alloc] initWithObjects: @"35", @"30", @"11", @"9", @"14", nil];
    maImgs          = [[NSMutableArray alloc] initWithObjects: @"eddard.png", @"catelyn.png", @"sansa.png", @"arya.png", @"robb.png", nil];
    maDescription   = [[NSMutableArray alloc] initWithObjects:
                       @"Eddard Start\n Lord of winterfell",
                       @"Catelyn Stark\n lalalalalala",
                       @"Sansa Stark\n lallalala",
                       @"Arya Stark\n lalalalal",
                       @"Robb Stark\n King of the north", nil];
    
    }
    
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    cellSimpsons *cell = (cellSimpsons *)[tableView dequeueReusableCellWithIdentifier:@"cellSimpsons"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellSimpsons" bundle:nil] forCellReuseIdentifier:@"cellSimpsons"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellSimpsons"];
    }
    
    //Fill cell with info from arrays
    cell.lblName.text   = maNames[indexPath.row];
    cell.lblAge.text    = maAges[indexPath.row];
    cell.imgUser.image  = [UIImage imageNamed:maImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    miCharacterIndex = (int)indexPath.row;
    CharacterDetails *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CharacterDetails"];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (IBAction)addBtnPressed:(id)sender {
    AddCharacter *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"AddCharacter"];
    [self presentViewController:viewController animated:YES completion:nil];
}
@end
