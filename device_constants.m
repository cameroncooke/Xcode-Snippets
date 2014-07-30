// Device Constants
// 
//
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: D270DDC1-A8DC-4B3E-A6E4-77B346471D9B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    #define IS_IPHONE (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone)
    #define IS_IPHONE5 (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone && [UIScreen mainScreen].bounds.size.height==568)
    #define IS_IPAD ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)