// AutoLayout Trace
// Debugging Category for AutoLayout
//
// IDECodeSnippetCompletionPrefix: Auto
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 0CD12093-438B-4C50-AD0F-A1AA511047E1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#warning Remove AutoLayoutDebug category before release
@interface UIWindow (AutoLayoutDebug)+ (UIWindow *)keyWindow;- (NSString *)_autolayoutTrace;@end

//- (void)viewDidAppear:(BOOL)animated//{//    [super viewDidAppear:animated];//    NSLog(@"%@", [[UIWindow keyWindow] _autolayoutTrace]);//}
//
//
//- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation//{//    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];//    NSLog(@"%@", [[UIWindow keyWindow] _autolayoutTrace]);//}