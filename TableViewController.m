//
//  TableViewController.m
//  lab3
//
//  Created by excel on 10/5/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import "TableViewController.h"
#import "Person.h"
#import "ThirdViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _males = [@[
              [[Person alloc] initWithName:@"Omar" andPhone:@"11111" andEmail:@"omar@omar.com" andAge:22 andAddress:@"asd"],
              [[Person alloc] initWithName:@"Ali" andPhone:@"11111" andEmail:@"ali@ali.com" andAge:22 andAddress:@"asd"]
              ] mutableCopy];
    
    _females = [@[[[Person alloc] initWithName:@"Sarah" andPhone:@"11111" andEmail:@"Sarah@ali.com" andAge:22 andAddress:@"asd"]] mutableCopy];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    switch (section) {
        case 0:
            return [_males count];
        case 1:
            return [_females count];
        default:
            return 0;
    };
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    switch([indexPath section]) {
        case 0:
            [[cell textLabel] setText:[[_males objectAtIndex:[indexPath row]] name]];
            [[cell detailTextLabel] setText:[[_males objectAtIndex:[indexPath row]] email]];
            break;
        case 1:
            [[cell textLabel] setText:[[_females objectAtIndex:[indexPath row]] name]];
            [[cell detailTextLabel] setText:[[_females objectAtIndex:[indexPath row]] email]];
            break;
        default:
            break;
            
    }
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ThirdViewController *third = [self.storyboard instantiateViewControllerWithIdentifier:@"thirdView"];
    
    [third setMyDelegate:self];
    [third setShowAddButton:true];
    
    switch (indexPath.section) {
        case 0:
            [third setPerson:[_males objectAtIndex:indexPath.row]];
            break;
        case 1:
            [third setPerson:[_females objectAtIndex:indexPath.row]];
            break;
            
        default:
            break;
            
    }
    
    [[self navigationController] pushViewController:third animated:YES];


}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ThirdViewController *third = [segue destinationViewController];
    
    if([[segue identifier] isEqualToString:@"addSegue"]) {

        [third setShowAddButton:true];
        [third setMyDelegate:self];
        [third setPerson:nil];
        
    }
    else  {
        
      
        }
        
        
    
    }
    

-(void) addPerson: (Person*) person :(bool)gender {
    if(gender) {
        [_males addObject:person];
    }
    else {
        [_females addObject:person];
    }
    
    [self.tableView reloadData];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
