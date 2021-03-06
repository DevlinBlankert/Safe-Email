//
//	Copyright © 2012 - 2015 Roman Priebe
//
//	This file is part of M - Safe email made simple.
//
//	M is free software: you can redistribute it and/or modify
//	it under the terms of the GNU General Public License as published by
//	the Free Software Foundation, either version 3 of the License, or
//	(at your option) any later version.
//
//	M is distributed in the hope that it will be useful,
//	but WITHOUT ANY WARRANTY; without even the implied warranty of
//	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//	GNU General Public License for more details.
//
//	You should have received a copy of the GNU General Public License
//	along with M.  If not, see <http://www.gnu.org/licenses/>.
//





#import "AttachmentsListPopoverController.h"
#import "AppDelegate.h"
#import "PictureManager.h"
#import "DisplayMessageController.h"


@interface AttachmentsListPopoverController ()

@end

@implementation AttachmentsListPopoverController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupWithAttachments:(NSArray*)attachments allowAddition:(BOOL)allowAddition
{
    if(allowAddition)
        self.addAttachmentsConstraint.priority = 1;
    else
        self.addAttachmentsConstraint.priority = 999;
}


- (IBAction)pickExistingPhoto:(id)sender
{
    [[PictureManager sharedInstance] pickExistingPhotoInViewController:self];
}

- (IBAction)takeNewPhoto:(id)sender
{
    [[PictureManager sharedInstance] takeNewPhotoInViewController:self];
}


@end
