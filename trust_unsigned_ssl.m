// Trust Unsigned SSL
// Enabled UIWebView to trust unsigned SSL, useful for proxy debugging
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: B908DF05-F876-4770-9512-FDD38513818D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    BOOL result = _Authenticated;
    if (!_Authenticated) {
        _FailedRequest = request;
        [[NSURLConnection alloc] initWithRequest:request delegate:self];
    }
    return result;
}

-(void)connection:(NSURLConnection *)connection willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {
    if ([challenge.protectionSpace.authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust]) {
        NSURL* baseURL = [NSURL URLWithString:DFBaseURL];
        if ([challenge.protectionSpace.host isEqualToString:baseURL.host]) {
            NSLog(@"trusting connection to host %@", challenge.protectionSpace.host);
            [challenge.sender useCredential:[NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust] forAuthenticationChallenge:challenge];
        } else
            NSLog(@"Not trusting connection to host %@", challenge.protectionSpace.host);
    }
    [challenge.sender continueWithoutCredentialForAuthenticationChallenge:challenge];
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)pResponse {
    _Authenticated = YES;
    [connection cancel];
    [self.webView loadRequest:_FailedRequest];
}
