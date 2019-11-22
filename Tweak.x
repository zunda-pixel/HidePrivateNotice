@interface BookmarkFavoritesViewController : UIView
@property (nonatomic, assign, readwrite, getter = isHidden) BOOL hidden;
@end

%hook BookmarkFavoritesViewController
- (void) layoutSubviews{
  %orig;
	self.hidden = YES;
}
%end
