#import <UIKit/UIKit.h>
#import "NavDrawer.h"
#import "custom.h"

@interface VC : UIViewController<NavDrawerDelegate, NSXMLParserDelegate>
{
    NSArray *videolabel;
}

@property (strong, nonatomic) IBOutlet UICollectionView *collect;

- (IBAction)drawerToggle:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *selectionIdx;
@property (strong, nonatomic) IBOutlet UIImageView *bgimage;
@property (strong, nonatomic) IBOutlet UILabel *about;
@property (strong, nonatomic) IBOutlet UIImageView *animate;

@end
