//
//  ViewController2.m
//  viewSelectTest
//
//  Created by USER on 2015/05/17.
//  Copyright (c) 2015年 USER. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //赤画面
    self.view.backgroundColor = [UIColor redColor];
    
    
    // ボタンを追加
    // これをタップしたら画面遷移
    UIButton *prebutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [prebutton setTitle:@"グレイ view1 次へ" forState:UIControlStateNormal];
    [prebutton sizeToFit];
    CGPoint prePoint = self.view.center;
    prePoint.y += 50;
    prebutton.center = prePoint;
    prebutton.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    [prebutton addTarget:self action:@selector(buttonDidPushToPre) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:prebutton];
    
    // ボタンを追加
    // これをタップしたら画面遷移
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"青　view3 次へ" forState:UIControlStateNormal];
    [button sizeToFit];
    CGPoint newPoint = self.view.center;
    newPoint.y += 100;
    button.center = newPoint;
    button.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    [button addTarget:self action:@selector(buttonDidPushToNext) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}

- (void)buttonDidPushToPre {
    // 自分自身を背面に移動
    // 結果として裏にあるViewController2が前面に出る
    [self.view.window bringSubviewToFront:[self.view.window.subviews objectAtIndex:0]];
    //    [self.view.window exchangeSubviewAtIndex:2 withSubviewAtIndex:0];
}


- (void)buttonDidPushToNext {
    // 自分自身を背面に移動
    // 結果として裏にあるViewController2が前面に出る
    [self.view.window sendSubviewToBack:self.view];
    //    [self.view.window exchangeSubviewAtIndex:0 withSubviewAtIndex:2];
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
