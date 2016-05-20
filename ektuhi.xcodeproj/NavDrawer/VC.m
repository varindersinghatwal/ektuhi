#import "VC.h"
#include "VC2.h"


@interface VC (){
    
    NSXMLParser *parser;
    NSMutableArray *feeds;
    NSMutableDictionary *item;
    NSMutableString *title;
    NSMutableString *link;
    NSString *element;
    NSIndexPath *index;
    NSTimer *timer;
    NSInteger imageCount;
}

@property (strong, nonatomic) NavDrawer *rootNav;
@end

@implementation VC


- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"Ek Tuhi";
    
    self.rootNav = (NavDrawer *)self.navigationController;
    [self.rootNav setNavDrawerDelegate:self];
    videolabel = @[@"logo1.png", @"logo2.png", @"logo3.png", @"logo4.png", @"logo5.png", @"logo6.png", @"logo7.png", @"logo6.png", @"logo5.png", @"logo4.png", @"logo3.png", @"logo2.png", @"logo1.png", @"logo2.png", @"logo3.png", @"logo4.png", @"logo5.png", @"logo6.png", @"logo7.png", @"logo6.png", @"logo5.png", @"logo4.png", @"logo3.png", @"logo2.png", @"logo1.png", @"logo2.png", @"logo3.png", @"logo4.png", @"logo5.png", @"logo6.png", @"logo7.png"];
    [self.navigationController setNavigationBarHidden:YES];
    imageCount = 1;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.2f target:self selector:@selector(animateImage) userInfo:nil repeats:YES];
    
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }
    
    _selectionIdx.text = @"ਆਪ ਜੀ ਦੇ ਸੁਝਾਵਾਂ ਦੀ ਉਡੀਕ ਵਿਚ : ਸਤਪਾਲ ਸਿੰਘ ਪੁਰੇਵਾਲ, ਸਿਆਟਲ, ਵਾਸ਼ਿੰਗਟਨ। \nਫ਼ੋਨ ਨੰਬਰ :- 206-271-0420";
    
    _about.text = @"    ਧੰਨ ਸ੍ਰੀ ਗੁਰੂ ਗਰੰਥ ਸਾਹਿਬ ਜੀ ਨੂੰ ਸਮਰਪਿਤ ਗੁਰੂ ਜੀ ਦੀ ਸਾਧ ਸੰਗਤ ਜੀਓ ! ਅਸੀਂ ਇਕ ਨਿਮਾਣਾ ਜਿਹਾ ਉਪਰਾਲਾ ਕੀਤਾ ਹੈ ਕਿ ਕਿਸੇ ਨਾ ਕਿਸੇ ਢੰਗ ਅਸੀਂ ਸਾਰੇ ਖ਼ੁਦ ਧੰਨ ਸ੍ਰੀ ਗੁਰੂ ਜੀ ਦੇ ਆਪਣੇ ਜੀਵਨ ਵਿਚ ਇਕ ਵਾਰ ਦਰਸ਼ਨ ਕਰ ਸਕੀਏ ਯਾਨੀ ਖ਼ੁਦ ਪੜ੍ਹ ਅਤੇ ਸਮਝਣ ਦਾ ਯਤਨ ਕਰੀਏ। ਇਸ ਲਈ ਅੱਜ ਦੇ ਜੁੱਗ ਦੇ ਸਾਧਨ ਵਰਤਦਿਆਂ ਪੂਰੇ ਸ੍ਰੀ ਗੁਰੂ ਗਰੰਥ ਸਾਹਿਬ ਜੀ ਦੀ ਬੋਲ ਕੇ ਸੰਥਿਆ ਦੇ ਨਾਲ ਨਾਲ ਇਸ ਦੇ ਅੱਖਰ ਅੱਖਰ ਨੂੰ ‘ਹਾਈਲਾਈਟ’ ਕੀਤਾ ਗਿਆ ਹੈ ਤਾਂ ਕਿ ਸਾਡੀ ਸਮਝ ਸੌਖਿਆਂ ਆ ਸਕੇ। ਸਾਡੀ ਬੇਨਤੀ ਹੈ ਕਿ ਜ਼ਿੰਦਗੀ ਦੀ ਹੋਰ ਭੱਜ-ਦੌੜ ਵਿਚੋਂ ਰੋਜ਼ਾਨਾ ਜੇ ਤੁਸੀਂ ੧੦ ਮਿੰਟ ਵੀ ਦਿਓ ਤਾਂ ਸਾਲ ਦੋ ਸਾਲ ਵਿਚ ਤੁਸੀਂ ਧੰਨ ਸ੍ਰੀ ਗੁਰੂ ਗਰੰਥ ਸਾਹਿਬ ਜੀ ਦੇ ਦਰਸ਼ਨ ਕਰ ਸਕੋਗੇ, ਇਸ ਦੇ ਅਨਮੋਲ ਖ਼ਜ਼ਾਨੇ ਵਿਚੋਂ ਸ਼ਾਇਦ ਕੋਈ ਕੀਮਤੀ ਮੋਤੀ ਸਾਡੀ ਝੋਲੀ ਪੈ ਜਾਣ ਅਤੇ ਸਾਡਾ ਜੀਵਨ ਧੰਨ ਹੋ ਸਕੇ। ਸਾਡਾ ਹੀ ਨਹੀਂ ਆਲੇ ਦੁਆਲੇ ਦਾ, ਪਰਿਵਾਰ ਦਾ ਭਲਾ ਹੋ ਸਕੇ। ਆਉ ਇਸ ਪਿਉ ਦਾਦੇ ਦੇ ਖ਼ਜ਼ਾਨੇ ਨੂੰ ਖੋਲ੍ਹ ਕੇ ਦੇਖੀਏ ਅਤੇ ਆਪਣੇ ਅਨਮੋਲ ਜੀਵਨ ਨੂੰ ਧੰਨ ਕਰੀਏ। \n    ਸਾਡੀ ਇਹ ਨਿਮਾਣੀ ਕੋਸ਼ਿਸ਼ ਸਫਲ ਹੋਵੇਗੀ ਕਿ ਕੋਈ ਗੁਰਸਿੱਖ ਸ੍ਰੀ ਗੁਰੂ ਜੀ ਨੂੰ ਮੁੱਲ ਦੇ ਪਾਠਾਂ ਦੀ ਬਜਾਇ ਖ਼ੁਦ ਆਪਣੀਆਂ ਅੱਖਾਂ ਰਾਹੀਂ ਦਰਸ਼ਨ ਕਰ ਸਕੇਗਾ। ਗੁਰੂ ਦੇ ਸਿੱਖੋ ਗੁਰੂ ਦਾ ਮੁੱਲ ਨਹੀਂ ਪੈ ਸਕਦਾ ਇਸ ਲਈ ਅਸੀਂ ਆਪ ਗੁਰੂ ਜੀ ਦੇ ਸਨਮੁੱਖ ਹੋਈਏ।";
    
    _about.font = [UIFont fontWithName:@"EkTuhiBaani" size:14];
    _selectionIdx.font = [UIFont fontWithName:@"EkTuhiBaani" size:17];
    
    feeds = [[NSMutableArray alloc] init];
    NSURL *url = [NSURL URLWithString:@"http://xn--68bm9bye9ak.com/wp-content/themes/twentytwelve/example.xml"];
    parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    [parser setDelegate:self];
    [parser setShouldResolveExternalEntities:NO];
    [parser parse];
}

-(void)animateImage
{
    if (imageCount == videolabel.count) {
        [timer invalidate];
        timer = nil;
        _animate.hidden = TRUE;
        _collect.hidden = FALSE;
        [self.navigationController setNavigationBarHidden:NO];
    }else{
        NSLog(@"image %i", imageCount);
        NSString *imageName = [videolabel objectAtIndex:imageCount];
        imageCount = imageCount + 1;
        [_animate setImage:[UIImage imageNamed:imageName]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [feeds count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellid = @"cellID";
    custom *cell = (custom *)[collectionView dequeueReusableCellWithReuseIdentifier:cellid forIndexPath:indexPath];
    cell.label.text = [[feeds objectAtIndex:indexPath.item] objectForKey: @"title"];
    return cell;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
    element = elementName;
    
    if ([element isEqualToString:@"video"]) {
        
        item    = [[NSMutableDictionary alloc] init];
        title   = [[NSMutableString alloc] init];
        link    = [[NSMutableString alloc] init];
        
    }
    
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
    if ([elementName isEqualToString:@"video"]) {
        
        [item setObject:title forKey:@"title"];
        [item setObject:link forKey:@"file"];
        
        [feeds addObject:[item copy]];
        
    }
    
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    if ([element isEqualToString:@"title"]) {
        [title appendString:string];
    } else if ([element isEqualToString:@"file"]) {
        [link appendString:string];
    }
    
}

- (void)parserDidEndDocument:(NSXMLParser *)parser {
    
    [self.collect reloadData];
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    index=indexPath;
}


- (IBAction)drawerToggle:(id)sender {
    [self.rootNav drawerToggle];
}

#pragma mark - photoShotSavedDelegate

-(void)CCKFNavDrawerSelection:(NSInteger)selectionIndex
{
    NSLog(@"CCKFNavDrawerSelection = %i", selectionIndex);
    if (selectionIndex==0) {
        self.title = @"Ek Tuhi";
        _about.hidden = TRUE;
        _selectionIdx.hidden = TRUE;
        _bgimage.hidden = TRUE;
        _collect.hidden = FALSE;
    }
    else if (selectionIndex==2){
        self.title = @"Contact us";
        _bgimage.hidden = FALSE;
        _selectionIdx.hidden = FALSE;
        _collect.hidden = TRUE;
        _about.hidden = TRUE;
    }
    else if(selectionIndex==1){
        self.title = @"About us";
        _collect.hidden = TRUE;
        _selectionIdx.hidden = TRUE;
        _bgimage.hidden = FALSE;
        _about.hidden = FALSE;
    }
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSString *string = [[feeds objectAtIndex:index.item] objectForKey: @"file"];
    NSLog(@"%@",string);
    [[segue destinationViewController] setUrl:string];
}

@end
