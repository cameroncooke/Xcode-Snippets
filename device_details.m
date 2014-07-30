// Device Details
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 7B753673-E9FD-4512-B02A-9ED8CD31B3A6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
                    struct utsname systemInfo;
                    uname(&systemInfo);
                    NSString *modelNumber = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
                    UIDevice *device = [UIDevice currentDevice];
                    NSString *debugString = [NSString stringWithFormat:@"[Diagnostic details: OS=\"%@ %@\", Model=\"%@ (%@)\"]\n\n// Reply below this line\n\n", device.systemName, device.systemVersion, device.model, modelNumber];
