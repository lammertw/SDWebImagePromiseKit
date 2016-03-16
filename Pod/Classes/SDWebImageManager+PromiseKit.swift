//
//  SDWebImageManager+PromiseKit.swift
//  NSInternational
//
//  Created by Lammert Westerhoff on 02/03/16.
//  Copyright © 2016 NS International. All rights reserved.
//


import Foundation
import SDWebImage
import PromiseKit

extension SDWebImageManager {
    public func downloadImageWithURL(URL: NSURL, options: SDWebImageOptions) -> Promise<UIImage> {
        return Promise { fulfill, reject in
            self.downloadImageWithURL(URL, options: options, progress: nil)
                { img, err, cacheType, finished, imageURL in
                    if finished && err == nil {
                        fulfill(img)
                    } else if let err = err {
                        reject(err)
                    } else {
                        abort()
                    }
            }
        }
    }
}
