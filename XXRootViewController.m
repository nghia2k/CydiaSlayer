//  
//
//  Created by NTNghia on 31/05/2018.
//
//

#import "XXRootViewController.h"
#import <SpringBoard/SpringBoard.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@implementation XXRootViewController

- (void)viewDidLoad{
    [super viewDidLoad];
UIApplication.sharedApplication.statusBarHidden=YES;
    [self.navigationController setNavigationBarHidden:YES animated:YES];


    self.view.backgroundColor = [UIColor whiteColor];

	// Button 1
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Respring" forState:UIControlStateNormal];
    [button sizeToFit];
    CGRect rect = [self.view bounds];
    button.center = CGPointMake(rect.size.width/2+60,180);

    [button addTarget:self action:@selector(buttonPressed)
     forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button];

    // Button 2
	UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button2 setTitle:@"Reboot" forState:UIControlStateNormal];
    [button2 sizeToFit];
    CGRect rect2 = [self.view bounds];
    button2.center = CGPointMake(rect2.size.width/2-60,180);

    [button2 addTarget:self action:@selector(buttonPressed2)
     forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button2];

    // Button 3
	UIButton *button3 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button3 setTitle:@"FUCK Cydia" forState:UIControlStateNormal];
    button3.titleLabel.font = [UIFont systemFontOfSize:25];
    [button3 sizeToFit];
    [button3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    CGRect rect3 = [self.view bounds];
    button3.center = CGPointMake(rect3.size.width/2,rect3.size.height/2+20);

    // Add an action in current code file (i.e. target)
    [button3 addTarget:self action:@selector(buttonPressed4)
     forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button3];

    // Button 4
	UIButton *button4 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button4 setTitle:@"Check depend files" forState:UIControlStateNormal];
    [button4 sizeToFit];
    CGRect rect4 = [self.view bounds];
    button4.center = CGPointMake(rect4.size.width/2,220);

    // Add an action in current code file (i.e. target)
    [button4 addTarget:self action:@selector(buttonPressed5)
     forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button4];
    
    // Label 1
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-105,50,250,60)];
    label.textColor = [UIColor blackColor];
    label.text = @"CydiaSlayer";
    label.font = [UIFont systemFontOfSize:40];
    [self.view addSubview:label];
    
    // Label 2
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2+15,120,100,20)];
    label2.textColor = [UIColor blackColor];
    label2.text = @"By NTNghia";
    label2.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label2];
    
        // Label 3
    UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-100,120,100,20)];
    label3.textColor = [UIColor blackColor];
    label3.text = @"v2.0-b6";
    label3.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label3];

    // Label 4
    UILabel *label4 = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-70,self.view.frame.size.height/2+200,200,50)];
    label4.textColor = [UIColor grayColor];
    label4.text = @"Support iOS 10.3.x only";
    label4.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:label4];

}

- (void)buttonPressed {
	UIAlertController *alertb = [UIAlertController alertControllerWithTitle:@"Respring?" message:@"Are you sure? This action will respring your device." preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction *actiony = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
		system("sudo respring");
	}];
	UIAlertAction *actiony2 = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"User Said NO");
	}];
	[alertb addAction:actiony];
    [alertb addAction:actiony2];
    [self presentViewController:alertb animated:YES completion:nil];
}

- (void)buttonPressed2 {
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Reboot?" message:@"Are you sure? This action will reboot your device." preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        system("sudo reboot");
    }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"User Said NO");
    }];
    [alert addAction:action1];
    [alert addAction:action2];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)buttonPressed3 {
	  
	NSLog(@"Pressed");

    }

- (void)buttonPressed4 {

	UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"WARNING!" message:@"Do you want Un-Jaibreak?" preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    	UIAlertController *alertacc = [UIAlertController alertControllerWithTitle:@"Disclaimer" message:@"First, thanks you for being Beta Tester!. I was created this tweak application because I found some relax when making and debugging it. Second, the commandline for FUCK Cydia need to be re-wrote and link to this button. It is very difficult because I have to re-write from Unix Script to Objective-C or make the Unix work in app. Hopefully, I can finish this app in some nearly day..." preferredStyle:UIAlertControllerStyleAlert];
    	UIAlertAction *actionaa5 = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    		NSLog(@"Thanks!");
    	}];
    	[alertacc addAction:actionaa5];
    	[self presentViewController:alertacc animated:YES completion:nil];
    }];
    UIAlertAction *action4 = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    	NSLog(@"User said NO! LOL");
    }];
    [alert1 addAction:action3];
    [alert1 addAction:action4];
    [self presentViewController:alert1 animated:YES completion:nil];
}

- (void)buttonPressed5 {
	UIAlertController *alertab = [UIAlertController alertControllerWithTitle:@"Check file?" message:@"Are you sure? This action will check depend files in your device." preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction *actione = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"User Said YES");
        NSString *filePath = @"/DevNTNghia/CS";
        NSString *filePath2 = @"/etc";
        NSString *filePath3 = @"/usr/bin";
        NSString *filePath4 = @"/usr/libexec";
        NSString *filePath5 = @"/usr/sbin";
		if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
		{
			if ([[NSFileManager defaultManager] fileExistsAtPath:filePath2])
			{
				if ([[NSFileManager defaultManager] fileExistsAtPath:filePath3])
				{
					if ([[NSFileManager defaultManager] fileExistsAtPath:filePath4])
					{
						if ([[NSFileManager defaultManager] fileExistsAtPath:filePath5])
						{
							UIAlertController *checkdepend = [UIAlertController alertControllerWithTitle:@"SUCCESS!" message:@"All needed files is there! You can use CydiaSlayer without any problems! Please relaunch the application." preferredStyle:UIAlertControllerStyleAlert];
							[self presentViewController:checkdepend animated:YES completion:nil];
						} else {
							UIAlertController *checkfailed5 = [UIAlertController alertControllerWithTitle:@"ERROR!" message:@"The folder /usr/sbin is not there. If you want to Un-Jailbreak, please re-install Cydia Bootstrap!" preferredStyle:UIAlertControllerStyleAlert];
							[self presentViewController:checkfailed5 animated:YES completion:nil];
						}
					} else {
						UIAlertController *checkfailed4 = [UIAlertController alertControllerWithTitle:@"ERROR!" message:@"The folder /usr/libexec is not there. If you want to Un-Jailbreak, please re-install Cydia Bootstrap!" preferredStyle:UIAlertControllerStyleAlert];
						[self presentViewController:checkfailed4 animated:YES completion:nil];
					}
				} else {
					UIAlertController *checkfailed3 = [UIAlertController alertControllerWithTitle:@"ERROR!" message:@"The folder /usr/bin is not there. If you want to Un-Jailbreak, please re-install Cydia Bootstrap!" preferredStyle:UIAlertControllerStyleAlert];
					[self presentViewController:checkfailed3 animated:YES completion:nil];
				}
			} else {
				UIAlertController *checkfailed2 = [UIAlertController alertControllerWithTitle:@"ERROR!" message:@"The folder /etc is not there. If you want to Un-Jailbreak, please re-install Cydia Bootstrap!" preferredStyle:UIAlertControllerStyleAlert];
				[self presentViewController:checkfailed2 animated:YES completion:nil];
			}
		} else {
			UIAlertController *checkfailed = [UIAlertController alertControllerWithTitle:@"ERROR!" message:@"All needed files is not there! Please re-install the application." preferredStyle:UIAlertControllerStyleAlert];
			[self presentViewController:checkfailed animated:YES completion:nil];
		}
        UIAlertController *alertabb = [UIAlertController alertControllerWithTitle:@"ERROR" message:@"This function is currently not available. NTNghia will add it when he fixed all bugs." preferredStyle:UIAlertControllerStyleAlert];
    	UIAlertAction *actionee = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    	}];
    	[alertabb addAction:actionee];
    	[self presentViewController:alertabb animated:YES completion:nil];
    }];
    UIAlertAction *actione2 = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog (@"User said NO");
        }];
    [alertab addAction:actione];
    [alertab addAction:actione2];
    [self presentViewController:alertab animated:YES completion:nil];
}

@end