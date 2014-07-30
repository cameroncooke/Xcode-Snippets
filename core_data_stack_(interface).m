// Core Data Stack (Interface)
// 
//
// IDECodeSnippetCompletionPrefix: CoreH
// IDECodeSnippetCompletionScopes: [ClassInterfaceMethods]
// IDECodeSnippetIdentifier: 5C2D1DA1-501B-4D7C-915E-194789FED8DB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// add #import <CoreData/CoreData.h>

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;