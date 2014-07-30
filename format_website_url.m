// Format Website URL
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 91EC454F-E81A-4F07-A9C0-07B84CCFA16C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSString *url = <#website address#>;
if ([url hasPrefix:@"http://"] == NO) {
    url = [@"http://" stringByAppendingString:url];
}