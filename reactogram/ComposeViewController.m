#import "ComposeViewController.h"

@interface ComposeViewController ()

@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ComposeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    CALayer *bottomBorder = [CALayer layer];
    
    bottomBorder.frame = CGRectMake(0.0f, self.topView.frame.size.height-1, self.topView.frame.size.width, 1.0f);
    
    bottomBorder.backgroundColor = [UIColor colorWithRed:220.0f/255.0f
                                                   green:220.0f/255.0f
                                                    blue:220.0f/255.0f
                                                   alpha:1.0f].CGColor;
    
    [self.topView.layer addSublayer:bottomBorder];
    
}

- (IBAction)onCancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{}];
}


@end
