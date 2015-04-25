%hook ABActionMenuKarmaStatistics

-(id)  attributedStringBasedOnLatestStatsShouldTruncate:(bool)KarmaIsTruncated
{
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.ziph0n.karma4ever.plist"];

    BOOL enabled = [[prefs objectForKey:@"enabled"] boolValue];

    if (enabled) {
	return %orig(NO);
    } else {
	return %orig;
    }
}

%end	