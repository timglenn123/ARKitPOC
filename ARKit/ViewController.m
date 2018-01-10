//  ViewController.m
//
//  Created by Tim Glenn on 12/22/17.
//  Copyright © 2017 Nimbusblue. All rights reserved. ( http://www.nimbusblue.com )
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.//


#import "ViewController.h"
#import "ARKitPOC-Swift.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)showAssetScene:(id)sender {
    printf("showing asset scene\n");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"ARScene" bundle:nil];
    ARViewController *controller = (ARViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ARScene"];
    NSString *string = [controller test];
    NSLog(@"inside objc %@", string);
    [controller createSceneWithAssetWithAssetFilePath:@"Models.scnassets/furniture/sofa.scn"];
    [self showViewController:controller sender:nil];
}


- (IBAction)showPlaneScene:(id)sender {
    printf("showing plane (rug)\n");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"ARScene" bundle:nil];
    ARViewController *controller = (ARViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ARScene"];
    NSString *string = [controller test];
    NSLog(@"inside objc %@", string);
    [controller createPlaneWithTextureWithTextureImage:[UIImage imageNamed:@"rug-2"]];
    [self showViewController:controller sender:nil];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end