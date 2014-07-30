// Email Compose Controller
// Displays a standard email compose dialog.
//
// IDECodeSnippetCompletionPrefix: email
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 84B76744-ACCB-47E6-8D2B-20827A907188
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
static NSString *emailAddress = <#email address#>;

if ([MFMailComposeViewController canSendMail]) {
    MFMailComposeViewController *controller = [[MFMailComposeViewController alloc] init];
    controller.mailComposeDelegate = self;
    [controller setToRecipients:@[emailAddress]];
}