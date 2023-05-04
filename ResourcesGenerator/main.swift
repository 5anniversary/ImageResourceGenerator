import Foundation

// MARK: - Type enumeration

enum ResourceType: String {
    case image
    case color

    var assets: String {
        switch self {
        case .image: return "imageset"
        case .color: return "colorset"
        }
    }
    
    var classStr: String {
        switch self {
        case .image: return "UIImage"
        case .color: return "UIColor"
        }
    }
}

// MARK: - FileManager Extension
extension FileManager {
    func parser(type: ResourceType, targetPath path: String) -> [String]? {
        do {
            switch type {
            case .image:
                return try assets(type: type, inAssetsPath: path)
            case .color:
                return try assets(type: type, inAssetsPath: path)
            }
        } catch {
            print("\n[Error] An error occurred in \(#function).\n\t error: \(error)\n")
        }
        
        return nil
    }

    func assets(type: ResourceType, inAssetsPath path: String) throws -> [String]? {
        // let remove white spaces and dash from asset name. e.g My Image.imagesets, My-Image.imagesets into My_Image
        let normalize = { (asset: String) -> String in
            if let regex = try? NSRegularExpression(pattern: "\\s|-", options: .caseInsensitive){
                let range = NSRange(location: 0, length: asset.count)
                
                return regex.stringByReplacingMatches(in: asset, options: .withTransparentBounds, range: range, withTemplate: "_")
            }
            return asset
        }
        
        let subpaths = try subpathsOfDirectory(atPath: path)
        return subpaths.filter {
            $0.hasSuffix(type.assets)
        }
        .map {
            normalize(($0 as NSString).lastPathComponent.components(separatedBy: ".")[0])
        }
    }
}

func makeSwift(_ type: ResourceType, _ target: [String], _ outputPath: String, _ enumName: String) -> Bool {
    let indent = "    "
    var file: String = ""
    
    // file header
    switch type {
    case .image:
        let sortedTarget = target.sorted(by: { $1 > $0 })
        file += "import UIKit" + "\n"
        file += "\n"

        // +enum
        file += "enum \(enumName)Raw: String, CaseIterable {" + "\n"
        sortedTarget.forEach {
            file += indent + "case \($0)\n"
        }
        file += "}" + "\n\n"
        file += "public enum \(enumName) {\n"
        sortedTarget.forEach {
            file += indent + "public static let \($0) = setImage(name: \(enumName)Raw.\($0).rawValue)\n"
        }
        file += "\n"
        file += indent + "public static func setImage(name: String) -> UIImage? {\n"
        file += indent + indent + "guard let image = UIImage(named: named, in: .module, with: nil) else { return nil }\n"
        file += indent + indent + "return image\n"
        file += indent + "}\n"
        file += "}\n\n\n"
        // -enum

        // test code
//        file += "import XCTest\n"
//        file += "@testable import ably\n\n"
//        file += "final class DesignSystemTests: XCTestCase {\n"
//        file += indent + "func testImageIsNotNull() {\n"
//        sortedTarget.forEach {
//            file += indent + indent + "let \($0)Image = AssetImage.\($0)\n"
//        }
//        file += "\n"
//        sortedTarget.forEach {
//            file += indent + indent + "XCTAssertNotNil(\($0)Image)\n"
//        }
//        file += indent + "}\n"
//        file += "}\n"

    case .color:
        let sortedTarget = target.sorted(by: { $1 > $0 })
        file += "import UIKit" + "\n"
        file += "import SwiftUI" + "\n"
        file += "\n"
        
        // +enum
        file += "enum ColorRawValue: String, CaseIterable {" + "\n"
        sortedTarget.forEach {
            file += indent + "case \($0)\n"
        }
        file += "}" + "\n\n"
        file += "public enum \(enumName) {\n"
        sortedTarget.forEach {
            file += indent + "public static let \($0) = setColor(name: ColorRawValueRaw.\($0).rawValue)\n"
        }
        file += "\n"
        file += indent + "public static func setColor(name: String) -> UIImage? {\n"
        file += indent + indent + "guard let color = UIColor(named: named, in: .module, with: nil) else { return nil }\n"
        file += indent + indent + "return color\n"
        file += indent + "}\n"
        file += "}\n\n\n"

        file += "enum ColorRawValue: String, CaseIterable {" + "\n"
        sortedTarget.forEach {
            file += indent + "case \($0)\n"
        }
        file += "}" + "\n\n"
        file += "public enum \(enumName) {\n"
        sortedTarget.forEach {
            file += indent + "public static let \($0) = setColor(name: ColorRawValueRaw.\($0).rawValue)\n"
        }
        file += "\n"
        file += indent + "public static func setColor(name: String) -> UIImage? {\n"
        file += indent + indent + "guard let color = UIColor(named: named, in: .module, with: nil) else { return nil }\n"
        file += indent + indent + "return color\n"
        file += indent + "}\n"
        file += "}\n\n\n"
        // -enum

        // test code
//        file += "import XCTest\n"
//        file += "@testable import ably\n\n"
//        file += "final class DesignSystemTests: XCTestCase {\n"
//        file += indent + "func testImageIsNotNull() {\n"
//        sortedTarget.forEach {
//            file += indent + indent + "let \($0)Color = AssetColor.\($0)\n"
//        }
//        file += "\n"
//        sortedTarget.forEach {
//            file += indent + indent + "XCTAssertNotNil(\($0)Image)\n"
//        }
//        file += indent + "}\n"
//        file += "}\n"
    }
    
    let data = file.data(using: String.Encoding.utf8, allowLossyConversion: false)
    return FileManager.default.createFile(atPath: outputPath, contents: data, attributes: nil)
}

// Colors
let (resourceType, path, output, enumName) = (
    ResourceType.color,
    "/Users/ojunhyeon/Desktop/ResourceGenerator/ResourcesGenerator/Colors.xcassets",
    "/Users/ojunhyeon/Desktop/ResourceGenerator/ResourcesGenerator/Colors.swift",
    "Color"
)
let (imageResourceType, imagePath, imageOutput, imageEnumName) = (
    ResourceType.image,
    "/Users/ojunhyeon/Desktop/ResourceGenerator/ResourcesGenerator/Images.xcassets",
    "/Users/ojunhyeon/Desktop/ResourceGenerator/ResourcesGenerator/Images.swift",
    "AssetImage"
)

let fm = FileManager.default

guard let colorParse = fm.parser(type: .color, targetPath: path) else { fatalError("") }
guard !colorParse.isEmpty else {
    fatalError("\n[Error] No data is found and failed to export a file...\n")
}

guard let parse = fm.parser(type: .color, targetPath: path) else { fatalError("") }
guard !parse.isEmpty else {
    fatalError("\n[Error] No data is found and failed to export a file...\n")
}

let result = makeSwift(resourceType, colorParse, output, enumName)
let imageResult = makeSwift(imageResourceType, parse, imageOutput, imageEnumName)
let resultStr = result ? "Succeeded" : "Failed"
print("\n\(resultStr) to generate resource manager file at \(output).\n")
