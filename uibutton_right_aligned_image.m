// UIButton Right Aligned Image
// Adjusts the insets to move button image to right while adjusting label
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 1F256108-52C1-4050-967C-E197D4C58C01
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
        [self.view layoutIfNeeded];
        
        CGFloat margin = 15.0f;
        CGFloat imageWidth = CGRectGetWidth(self.hotelDescriptionButton.imageView.frame);
        CGFloat buttonWidth = CGRectGetWidth(self.hotelDescriptionButton.frame) - imageWidth;
        
        UIEdgeInsets titleInsets = UIEdgeInsetsMake(0, -imageWidth+margin, 0, imageWidth+margin);
        UIEdgeInsets imageInsets = UIEdgeInsetsMake(0, buttonWidth-margin, 0, -buttonWidth-margin);

        self.button.titleEdgeInsets = titleInsets;
        self.button.imageEdgeInsets = imageInsets;