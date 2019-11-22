@interface ExplanationCollectionViewCell : UIView
@property (nonatomic, assign, readwrite, getter = isHidden) BOOL hidden;
@end

%hook ExplanationCollectionViewCell
- (void) layoutSubviews{
	%orig;
	self.hidden = YES;
}
%end
