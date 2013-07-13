//
//  ZHCollectionDelegate.m
//  ZHDemo
//
//  Created by Edward on 13-7-12.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHCollectionDelegate.h"

@implementation ZHCollectionDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 140;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
	return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
	return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	
}

- (void)tableView:(UITableView *)tableView
  willDisplayCell:(UITableViewCell *)cell
forRowAtIndexPath:(NSIndexPath *)indexPath
{
  UIImage *resizedImage = [[UIImage imageNamed:@"ZHExploreFavBase.png"] stretchableImageWithLeftCapWidth:28 topCapHeight:28];
	//UIImage *resizedImage = [[UIImage imageNamed:@"ZHExploreFavBase.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(28, 15, 46, 45)];
  UIImageView *imgView = [[UIImageView alloc] initWithFrame:cell.frame];
  //[imgView setBackgroundColor:[UIColor yellowColor]];
  [imgView setImage:resizedImage];
  [cell setBackgroundView:imgView];
}


@end
