//
//  XWViewController.m
//  Language
//
//  Created by viviwu on 2013/10/24.
//  Copyright © 2013年 viviwu. All rights reserved.
//

#import "XWViewController.h"

@interface XWViewController ()

@property(nonatomic)IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIButton *sBtn;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation XWViewController

-(IBAction)changeLanguage:(id)sender{
    NSArray *languages = kUserDef_OBJ(@"AppleLanguages");
    NSLog(@"languages: %@", languages);
    NSString* currenLang = [languages objectAtIndex:0];
    NSLog(@"currenLang=%@",currenLang);
    if ([currenLang isEqualToString:@"zh-Hans"]) {
        [kUserDef setObject:[NSArray arrayWithObjects:@"en", nil] forKey:@"AppleLanguages"];
        [kUserDef synchronize];
    }else if([currenLang isEqualToString:@"en"]){
        [kUserDef setObject:[NSArray arrayWithObjects:@"zh-Hans", nil] forKey:@"AppleLanguages"];
        [kUserDef synchronize];
    }

    [kAppDel changeRootVC];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"lTitle=%@", XWLString(@"lTitle"));
    NSLog(@"bSwitch=%@", XWLString(@"bSwitch"));
    _imageView.image=[UIImage imageNamed:@"home.png"];
    
    NSString *lTitle = NSLocalizedString(@"lTitle", nil);
    NSString *bSwitch = NSLocalizedString(@"bSwitch", nil);
    NSLog(@"lTitle：%@-——-bSwitch：%@", lTitle, bSwitch);
#if 0
    
    注意：如果你的字符串资源文件名不是Localizable.strings，如mj.strings，那么你就得使用NSLocalizedStringFromTable()来读取本地化字符串：
    NSLocalizedStringFromTable(@"lTitle", @"键值字符文件名", nil);
#endif
    
    // Do any additional setup after loading the view from its nib.
}

-(void)dealloc{
    NSLog(@"XWViewController: %s", __func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"XWViewController: %s", __func__);
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
