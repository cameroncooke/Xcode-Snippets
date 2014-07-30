// Email Delegate Implementation
// Standard mailComposeController:didFinishWithResult:error class implementation
//
// IDECodeSnippetCompletionPrefix: emaildelegate
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 2B86D485-C894-481F-B31B-FFDAFA3495F7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark -
#pragma mark Email

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    [controller dismissModalViewControllerAnimated:YES];

    if (error != nil && result == MFMailComposeResultFailed) {
        NSLog(@"MFMailComposeViewController error: %@", error);

        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"There was a problem sending email. Please try again." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles: nil];
        [alert show];
    }
}