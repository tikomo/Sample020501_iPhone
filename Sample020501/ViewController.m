//
//  ViewController.m
//  Sample020501
//
//  Created by tikomo on 2014/02/05.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// <- 黒丸クリックでどこと繋がっているか表示されます
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *textFields;
@property (weak, nonatomic) IBOutlet UILabel *label1;
- (IBAction)button_onClick:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // TextFieldのプレースフォルダにテキストを設定します
    for (UITextField *fld in _textFields) {
        
        fld.text = @"AAA";
        
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button_onClick:(UIButton *)sender {
    
    // ソースだけだと、どことどう繋がっているか分からない...orz
    
    NSString *word;
    // (UIButton *) を繋げる時に指定する事
    switch (sender.tag) {
    case 10:
        word = @"AAAA";
        break;
    case 11:
        word = @"BBBB";
        break;
    case 12:
        word = @"CCCC";
        break;
    case 13:
        word = @"DDDD";
        break;
    case 14:
        word = @"EEEE";
        break;
    }
    
    _label1.text = word;
    
    _label1.text = sender.titleLabel.text;
}
@end
