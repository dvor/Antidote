//
//  RoundedButton.swift
//  Antidote
//
//  Created by Dmytro Vorobiov on 10/10/15.
//  Copyright © 2015 dvor. All rights reserved.
//

import UIKit

private struct Constants {
    static let Height = 40.0
}

class RoundedButton: UIButton {
    enum ButtonType {
        case Login
        case RunningPositive
        case RunningNegative
    }

    init(theme: Theme, type: ButtonType) {
        super.init(frame: CGRectZero)

        let titleColor: UIColor
        let bgColor: UIColor

        switch type {
            case .Login:
                titleColor = theme.colorForType(.LoginButtonText)
                bgColor = theme.colorForType(.LoginButtonBackground)
            case .RunningPositive:
                titleColor = theme.colorForType(.RoundedButtonText)
                bgColor = theme.colorForType(.RoundedPositiveButtonBackground)
            case .RunningNegative:
                titleColor = theme.colorForType(.RoundedButtonText)
                bgColor = theme.colorForType(.RoundedNegativeButtonBackground)
        }

        setTitleColor(titleColor, forState:UIControlState.Normal)
        titleLabel?.font = UIFont.systemFontOfSize(18.0)
        layer.cornerRadius = 5.0
        layer.masksToBounds = true

        let bgImage = UIImage.imageWithColor(bgColor, size: CGSize(width: 1.0, height: 1.0))
        setBackgroundImage(bgImage, forState:UIControlState.Normal)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 0.0, height: Constants.Height)
    }
}
