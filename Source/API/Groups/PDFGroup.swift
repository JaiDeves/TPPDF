//
//  PDFGroup.swift
//  TPPDF
//
//  Created by Philip Niedertscheider on 31.05.19.
//

import Foundation
import UIKit

/**
 TODO: Documentation
 */
public class PDFGroup: PDFJSONSerializable {

    // MARK: - PUBLIC VARS
    /**
    TODO: Documentation
    */
    public var customWidth: CGFloat?
    /**
     TODO: Documentation
     */
    public var allowsBreaks: Bool

    /**
     TODO: Documentation
     */
    public var backgroundColor: UIColor?

    /**
     TODO: Documentation
     */
    public var backgroundImage: PDFImage?

    /**
     TODO: Documentation
     */
    public var backgroundShape: PDFDynamicGeometryShape?

    /**
     TODO: Documentation
     */
    public var outline: PDFLineStyle

    /**
     TODO: Documentation
     */
    public var padding: UIEdgeInsets

    // MARK: - INTERNAL VARS

    /**
     All objects inside the document and the container they are located in
     */
    internal var objects: [(PDFGroupContainer, PDFRenderObject)] = []

    // MARK: - PUBLIC INITIALIZERS

    /**
     TODO: Documentation
     */
    public init(allowsBreaks: Bool = false,
                backgroundColor: UIColor? = nil,
                backgroundImage: PDFImage? = nil,
                backgroundShape: PDFDynamicGeometryShape? = nil,
                outline: PDFLineStyle = .none,
                padding: UIEdgeInsets = .zero,customWidth:CGFloat? = nil) {
        self.allowsBreaks = allowsBreaks
        self.backgroundColor = backgroundColor
        self.backgroundImage = backgroundImage
        self.backgroundShape = backgroundShape
        self.outline = outline
        self.padding = padding
        self.customWidth = customWidth
    }

    /**
     Creates a new `PDFSectionColumn` with the same properties
     */
    internal var copy: PDFGroup {
        return PDFGroup(allowsBreaks: self.allowsBreaks,
                        backgroundColor: self.backgroundColor,
                        backgroundImage: self.backgroundImage,
                        backgroundShape: self.backgroundShape,
                        outline: self.outline,
                        padding: self.padding, customWidth: self.customWidth)
    }
}
