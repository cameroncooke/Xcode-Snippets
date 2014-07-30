// Disable NSLog in release
// Only allows NSLog statements when the DEBUG preprocessor macro is set
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 3750CD7B-7F40-4A4E-9FCE-B6AE01538467
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// Disable NSLog expect when in DEBUG mode
#ifdef DEBUG
#   define NSLog NSLog
#else
#   define NSLog(...)
#endif