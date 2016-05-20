#import <UIKit/UIKit.h>

@protocol NavDrawerDelegate <NSObject>
@required
- (void) NavDrawerSelection:(NSInteger)selectionIndex;
@end

@interface NavDrawer : UINavigationController<UIGestureRecognizerDelegate, UITableViewDataSource, UITableViewDelegate>
@property (copy, nonatomic) NSArray *list;
@property (nonatomic, strong) UIPanGestureRecognizer *pan_gr;
@property (weak, nonatomic)id<NavDrawerDelegate> NavDrawerDelegate;

- (void)drawerToggle;

@end
