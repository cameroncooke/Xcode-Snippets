// Format Telephone URL
// 
//
// IDECodeSnippetCompletionPrefix: telephone
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: A23E93CD-A204-471F-A4C6-3E2AC42C1EA6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSCharacterSet *legalCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
NSString *tel = [[<#telephone number#> componentsSeparatedByCharactersInSet:legalCharSet] componentsJoinedByString:@""];
NSString *url = [NSString stringWithFormat:@"tel://%@", tel];