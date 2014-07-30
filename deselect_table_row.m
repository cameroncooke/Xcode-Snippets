// Deselect Table Row
// Deselects any select table row with animation.
//
// IDECodeSnippetCompletionPrefix: deselect
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 7BF78364-9E83-4AAF-A5C5-FCC94A85A20A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
if (self.tableView.indexPathForSelectedRow) {
    [self.tableView deselectRowAtIndexPath:self.tableView.indexPathForSelectedRow animated:YES];
}