#import "VC2.h"

@interface VC2 ()
@end

@implementation VC2

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _indicator.hidden = FALSE;
    [_indicator startAnimating];
    NSURL *url = [NSURL URLWithString:[self.url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    
  //  [_indicator startAnimating];
    NSLog(@"start loading...");
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [_indicator stopAnimating];
    _indicator.hidden = TRUE;
}

@end
