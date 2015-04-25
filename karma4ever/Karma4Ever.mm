#import <Preferences/Preferences.h>
#import <Social/SLComposeViewController.h>
#import <Social/SLServiceTypes.h>
#import <UIKit/UIKit.h>

@interface Karma4EverListController: PSListController {
}
@end

@implementation Karma4EverListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Karma4Ever" target:self] retain];

    UIBarButtonItem *shareButton ([[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(composeTweet:)]);
	shareButton.tag = 1;
	[[self navigationItem] setRightBarButtonItem:shareButton];
	[shareButton release];
	}
	return _specifiers;
}

-(void)composeTweet:(id)sender
{
	SLComposeViewController * composeController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
	[composeController setInitialText:@"I'm using Karma4Ever, an awesome Cydia tweak by @Ziph0n. Get it now!"];
	[self.parentController presentViewController:composeController animated:YES completion:nil];
}

- (void)twitter {
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot:"]])
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tweetbot:///user_profile/Ziph0n"]];
    else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitterrific:"]])
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitterrific:///profile?screen_name=Ziph0n"]];
    else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetings:"]])
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tweetings:///user?screen_name=Ziph0n"]];
    else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter:"]])
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitter://user?screen_name=Ziph0n"]];
    else
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mobile.twitter.com/Ziph0n"]];
}


- (void)sourceOnGithub {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/Ziph0n/Karma4Ever/tree/master"]];
}

- (void)reddit {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.reddit.com/user/Ziph0n/"]];
}

-(void) sendEmail {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:ziph0ntweak@gmail.com?subject=Karma4Ever"]];
}

@end

// vim:ft=objc
