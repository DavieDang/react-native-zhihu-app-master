//
//  testViewController.m
//  AwesomeProject
//
//  Created by admin on 2016/12/15.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "testViewController.h"
#import "RCTRootView.h"

@interface testViewController ()
@property (nonatomic,strong) UIViewController *test2vc;

@property (nonatomic,assign) BOOL isShow;
@end

@implementation testViewController

- (UIViewController *)test2vc{
    if (!_test2vc) {
        _test2vc = [[UIViewController alloc] init];
    }
    return _test2vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isShow = NO;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button1 = [UIButton buttonWithType:0];
    [button1 setTitle:@"RN界面" forState:0];
    [button1 setBackgroundColor:[UIColor greenColor]];
    [button1 setTitleColor:[UIColor blackColor] forState:0];
    [button1 addTarget:self action:@selector(test1:) forControlEvents:UIControlEventTouchUpInside];
    
    button1.frame = CGRectMake(80, 80, 100, 40);
    button1.layer.cornerRadius = 20;
    button1.layer.masksToBounds = YES;

    [self.view addSubview:button1];
    
    
    
    UIButton *button2 = [UIButton buttonWithType:0];
    [button2 setTitle:@"热更新" forState:0];
    [button2 setBackgroundColor:[UIColor greenColor]];
    [button2 setTitleColor:[UIColor blackColor] forState:0];
    [button2 addTarget:self action:@selector(test2:) forControlEvents:UIControlEventTouchUpInside];
    
    button2.frame = CGRectMake(80, 150, 100, 40);
    button2.layer.cornerRadius = 20;
    button2.layer.masksToBounds = YES;
    
    [self.view addSubview:button2];
    
    
    
    
    
    UIButton *button3 = [UIButton buttonWithType:0];
    [button3 setTitle:@"RN与原生交互" forState:0];
    [button3 setBackgroundColor:[UIColor greenColor]];
    [button3 setTitleColor:[UIColor blackColor] forState:0];
    [button3 addTarget:self action:@selector(test4:) forControlEvents:UIControlEventTouchUpInside];
    
    button3.frame = CGRectMake(80, 150+50, 150, 40);
    button3.layer.cornerRadius = 20;
    button3.layer.masksToBounds = YES;
    
    [self.view addSubview:button3];
    
    // Do any additional setup after loading the view.
}

- (void)test1:(UIButton *)sender{
      NSURL *jsCodeLocation;
    
    jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"AwesomeProject33"
                                                     launchOptions:nil];
    self.test2vc.view = rootView;
    
  //  [self presentViewController:rootViewController animated:YES completion:nil];
    [self.navigationController pushViewController:self.test2vc animated:YES];
    
}

- (void)test2:(UIButton *)sender{
    


    NSURL *jsCodeLocation;
    
    if (self.isShow) {
      jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main3" withExtension:@"jsbundle"];
    }else{
      jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main2" withExtension:@"jsbundle"];
    }

    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"AwesomeProject33"
                                                     launchOptions:nil];
    self.test2vc.view = rootView;
    UIButton *button2 = [UIButton buttonWithType:0];
    [button2 setTitle:@"热更新" forState:0];
    [button2 setBackgroundColor:[UIColor greenColor]];
    [button2 setTitleColor:[UIColor blackColor] forState:0];
    [button2 addTarget:self action:@selector(test3:) forControlEvents:UIControlEventTouchUpInside];
    button2.frame = CGRectMake(200, 80, 100, 40);
    button2.layer.cornerRadius = 20;
    button2.layer.masksToBounds = YES;
    [self.test2vc.view addSubview:button2];
    //  [self presentViewController:rootViewController animated:YES completion:nil];
    [self.navigationController pushViewController:self.test2vc animated:YES];
    
    
}

- (void)test3:(UIButton *)sender{
    
   
    NSURL *jsCodeLocation;
    if (!self.isShow) {
        jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main3" withExtension:@"jsbundle"];
    }else{
        jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main2" withExtension:@"jsbundle"];
    }
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"AwesomeProject33"
                                                     launchOptions:nil];
    self.test2vc.view = rootView;
    self.isShow = !self.isShow;
}

//远程服务器更改bundel文件
- (void)test4:(UIButton *)sender{
    
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

@end
