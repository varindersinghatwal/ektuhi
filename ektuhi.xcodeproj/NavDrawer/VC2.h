#import <UIKit/UIKit.h>

@interface VC2 : UIViewController<UIWebViewDelegate>

@property (copy, nonatomic) NSString *url;
@property (strong, nonatomic) IBOutlet UIWebView *webview;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

@end
