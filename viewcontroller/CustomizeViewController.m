//
//  CustomizeViewController.m
//  viewcontroller
//
//  Created by Kundan on 7/18/15.
//  Copyright (c) 2015 Kundan. All rights reserved.
//

#import "CustomizeViewController.h"

@interface CustomizeViewController ()
@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UIView *thirdView;

@end

@implementation CustomizeViewController
@synthesize firstView,secondView,thirdView;

-(void)awakeFromNib
{
   }

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   // [self.view addSubview:[[NSBundle mainBundle] loadNibNamed:@"CustomizeViewController" owner:self options:nil];
    UIView *custom= [[UIView alloc]initWithFrame:CGRectMake(0, 50, 320, 70)];
//    CGRect f = [CGPointMake(0, 50)];
//    f.origin.x = 0 ; // new x
//    f.origin.y = 50; // new y
//    custom.frame = f;
    
    //custom=;
    
   // UIView *cust= [[[NSBundle mainBundle] loadNibNamed:@"CustomizeViewController" owner:self options:nil] objectAtIndex:0];
    [self.view addSubview:[[[NSBundle mainBundle] loadNibNamed:@"CustomizeViewController" owner:self options:nil] objectAtIndex:0]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)colorChange1:(id)sender {
    
    firstView.backgroundColor= [UIColor redColor];
    secondView.backgroundColor=[UIColor darkGrayColor];
    thirdView.backgroundColor=[UIColor darkGrayColor];
}
- (IBAction)colorChange2:(id)sender {
    secondView.backgroundColor=[UIColor greenColor];
    firstView.backgroundColor=[UIColor darkGrayColor];
    thirdView.backgroundColor=[UIColor darkGrayColor];
    
}
- (IBAction)colorChange3:(id)sender {
    
    thirdView.backgroundColor=[UIColor blueColor];
    
    secondView.backgroundColor=[UIColor darkGrayColor];
    firstView.backgroundColor=[UIColor darkGrayColor];
}

@end
