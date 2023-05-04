import UIKit

enum AssetColorRaw: String, CaseIterable {
    case background_brand_primary
    case background_brand_secondary
    case background_danger_primary
    case background_danger_secondary
    case background_grey_basement
    case background_grey_pressed
    case background_grey_primary
    case background_grey_secondary
    case background_grey_tertiary
    case background_info_primary
    case background_info_secondary
    case background_success_primary
    case background_success_secondary
    case background_warning_primary
    case background_warning_secondary
    case border_brand_primary
    case border_brand_secondary
    case border_brand_tertiary
    case border_danger_primary
    case border_danger_secondary
    case border_danger_tertiary
    case border_grey_primary
    case border_grey_secondary
    case border_grey_tertiary
    case border_info_primary
    case border_info_secondary
    case border_info_tertiary
    case border_success_primary
    case border_success_secondary
    case border_success_tertiary
    case border_warning_primary
    case border_warning_secondary
    case border_warning_tertiary
    case content_background_black_disabled
    case content_background_black_pressed
    case content_background_black_primary
    case content_background_black_pure
    case content_background_brand_pressed
    case content_background_brand_primary
    case content_background_brand_secondary
    case content_background_brand_tertiary
    case content_background_danger_pressed
    case content_background_danger_primary
    case content_background_danger_secondary
    case content_background_danger_tertiary
    case content_background_grey_disabled
    case content_background_grey_pressed
    case content_background_grey_primary
    case content_background_grey_pure
    case content_background_info_pressed
    case content_background_info_primary
    case content_background_info_secondary
    case content_background_info_tertiary
    case content_background_success_pressed
    case content_background_success_secondary
    case content_background_success_tertiary
    case content_background_successs_primary
    case content_background_warning_pressed
    case content_background_warning_primary
    case content_background_warning_secondary
    case content_background_warning_tertiary
    case content_brand_pressed
    case content_brand_primary
    case content_danger_pressed
    case content_danger_primary
    case content_grey_alwaysBlack
    case content_grey_alwaysWhite
    case content_grey_disable
    case content_grey_primary
    case content_grey_secondary
    case content_grey_systemContent
    case content_grey_systemGery
    case content_grey_teritiary
    case content_info_pressed
    case content_info_primary
    case content_success_pressed
    case content_success_primary
    case content_warning_pressed
    case content_warning_primary
}

public enum AssetColor {
    public static let background_brand_primary = setColor(name: AssetColorRaw.background_brand_primary.rawValue)
    public static let background_brand_secondary = setColor(name: AssetColorRaw.background_brand_secondary.rawValue)
    public static let background_danger_primary = setColor(name: AssetColorRaw.background_danger_primary.rawValue)
    public static let background_danger_secondary = setColor(name: AssetColorRaw.background_danger_secondary.rawValue)
    public static let background_grey_basement = setColor(name: AssetColorRaw.background_grey_basement.rawValue)
    public static let background_grey_pressed = setColor(name: AssetColorRaw.background_grey_pressed.rawValue)
    public static let background_grey_primary = setColor(name: AssetColorRaw.background_grey_primary.rawValue)
    public static let background_grey_secondary = setColor(name: AssetColorRaw.background_grey_secondary.rawValue)
    public static let background_grey_tertiary = setColor(name: AssetColorRaw.background_grey_tertiary.rawValue)
    public static let background_info_primary = setColor(name: AssetColorRaw.background_info_primary.rawValue)
    public static let background_info_secondary = setColor(name: AssetColorRaw.background_info_secondary.rawValue)
    public static let background_success_primary = setColor(name: AssetColorRaw.background_success_primary.rawValue)
    public static let background_success_secondary = setColor(name: AssetColorRaw.background_success_secondary.rawValue)
    public static let background_warning_primary = setColor(name: AssetColorRaw.background_warning_primary.rawValue)
    public static let background_warning_secondary = setColor(name: AssetColorRaw.background_warning_secondary.rawValue)
    public static let border_brand_primary = setColor(name: AssetColorRaw.border_brand_primary.rawValue)
    public static let border_brand_secondary = setColor(name: AssetColorRaw.border_brand_secondary.rawValue)
    public static let border_brand_tertiary = setColor(name: AssetColorRaw.border_brand_tertiary.rawValue)
    public static let border_danger_primary = setColor(name: AssetColorRaw.border_danger_primary.rawValue)
    public static let border_danger_secondary = setColor(name: AssetColorRaw.border_danger_secondary.rawValue)
    public static let border_danger_tertiary = setColor(name: AssetColorRaw.border_danger_tertiary.rawValue)
    public static let border_grey_primary = setColor(name: AssetColorRaw.border_grey_primary.rawValue)
    public static let border_grey_secondary = setColor(name: AssetColorRaw.border_grey_secondary.rawValue)
    public static let border_grey_tertiary = setColor(name: AssetColorRaw.border_grey_tertiary.rawValue)
    public static let border_info_primary = setColor(name: AssetColorRaw.border_info_primary.rawValue)
    public static let border_info_secondary = setColor(name: AssetColorRaw.border_info_secondary.rawValue)
    public static let border_info_tertiary = setColor(name: AssetColorRaw.border_info_tertiary.rawValue)
    public static let border_success_primary = setColor(name: AssetColorRaw.border_success_primary.rawValue)
    public static let border_success_secondary = setColor(name: AssetColorRaw.border_success_secondary.rawValue)
    public static let border_success_tertiary = setColor(name: AssetColorRaw.border_success_tertiary.rawValue)
    public static let border_warning_primary = setColor(name: AssetColorRaw.border_warning_primary.rawValue)
    public static let border_warning_secondary = setColor(name: AssetColorRaw.border_warning_secondary.rawValue)
    public static let border_warning_tertiary = setColor(name: AssetColorRaw.border_warning_tertiary.rawValue)
    public static let content_background_black_disabled = setColor(name: AssetColorRaw.content_background_black_disabled.rawValue)
    public static let content_background_black_pressed = setColor(name: AssetColorRaw.content_background_black_pressed.rawValue)
    public static let content_background_black_primary = setColor(name: AssetColorRaw.content_background_black_primary.rawValue)
    public static let content_background_black_pure = setColor(name: AssetColorRaw.content_background_black_pure.rawValue)
    public static let content_background_brand_pressed = setColor(name: AssetColorRaw.content_background_brand_pressed.rawValue)
    public static let content_background_brand_primary = setColor(name: AssetColorRaw.content_background_brand_primary.rawValue)
    public static let content_background_brand_secondary = setColor(name: AssetColorRaw.content_background_brand_secondary.rawValue)
    public static let content_background_brand_tertiary = setColor(name: AssetColorRaw.content_background_brand_tertiary.rawValue)
    public static let content_background_danger_pressed = setColor(name: AssetColorRaw.content_background_danger_pressed.rawValue)
    public static let content_background_danger_primary = setColor(name: AssetColorRaw.content_background_danger_primary.rawValue)
    public static let content_background_danger_secondary = setColor(name: AssetColorRaw.content_background_danger_secondary.rawValue)
    public static let content_background_danger_tertiary = setColor(name: AssetColorRaw.content_background_danger_tertiary.rawValue)
    public static let content_background_grey_disabled = setColor(name: AssetColorRaw.content_background_grey_disabled.rawValue)
    public static let content_background_grey_pressed = setColor(name: AssetColorRaw.content_background_grey_pressed.rawValue)
    public static let content_background_grey_primary = setColor(name: AssetColorRaw.content_background_grey_primary.rawValue)
    public static let content_background_grey_pure = setColor(name: AssetColorRaw.content_background_grey_pure.rawValue)
    public static let content_background_info_pressed = setColor(name: AssetColorRaw.content_background_info_pressed.rawValue)
    public static let content_background_info_primary = setColor(name: AssetColorRaw.content_background_info_primary.rawValue)
    public static let content_background_info_secondary = setColor(name: AssetColorRaw.content_background_info_secondary.rawValue)
    public static let content_background_info_tertiary = setColor(name: AssetColorRaw.content_background_info_tertiary.rawValue)
    public static let content_background_success_pressed = setColor(name: AssetColorRaw.content_background_success_pressed.rawValue)
    public static let content_background_success_secondary = setColor(name: AssetColorRaw.content_background_success_secondary.rawValue)
    public static let content_background_success_tertiary = setColor(name: AssetColorRaw.content_background_success_tertiary.rawValue)
    public static let content_background_successs_primary = setColor(name: AssetColorRaw.content_background_successs_primary.rawValue)
    public static let content_background_warning_pressed = setColor(name: AssetColorRaw.content_background_warning_pressed.rawValue)
    public static let content_background_warning_primary = setColor(name: AssetColorRaw.content_background_warning_primary.rawValue)
    public static let content_background_warning_secondary = setColor(name: AssetColorRaw.content_background_warning_secondary.rawValue)
    public static let content_background_warning_tertiary = setColor(name: AssetColorRaw.content_background_warning_tertiary.rawValue)
    public static let content_brand_pressed = setColor(name: AssetColorRaw.content_brand_pressed.rawValue)
    public static let content_brand_primary = setColor(name: AssetColorRaw.content_brand_primary.rawValue)
    public static let content_danger_pressed = setColor(name: AssetColorRaw.content_danger_pressed.rawValue)
    public static let content_danger_primary = setColor(name: AssetColorRaw.content_danger_primary.rawValue)
    public static let content_grey_alwaysBlack = setColor(name: AssetColorRaw.content_grey_alwaysBlack.rawValue)
    public static let content_grey_alwaysWhite = setColor(name: AssetColorRaw.content_grey_alwaysWhite.rawValue)
    public static let content_grey_disable = setColor(name: AssetColorRaw.content_grey_disable.rawValue)
    public static let content_grey_primary = setColor(name: AssetColorRaw.content_grey_primary.rawValue)
    public static let content_grey_secondary = setColor(name: AssetColorRaw.content_grey_secondary.rawValue)
    public static let content_grey_systemContent = setColor(name: AssetColorRaw.content_grey_systemContent.rawValue)
    public static let content_grey_systemGery = setColor(name: AssetColorRaw.content_grey_systemGery.rawValue)
    public static let content_grey_teritiary = setColor(name: AssetColorRaw.content_grey_teritiary.rawValue)
    public static let content_info_pressed = setColor(name: AssetColorRaw.content_info_pressed.rawValue)
    public static let content_info_primary = setColor(name: AssetColorRaw.content_info_primary.rawValue)
    public static let content_success_pressed = setColor(name: AssetColorRaw.content_success_pressed.rawValue)
    public static let content_success_primary = setColor(name: AssetColorRaw.content_success_primary.rawValue)
    public static let content_warning_pressed = setColor(name: AssetColorRaw.content_warning_pressed.rawValue)
    public static let content_warning_primary = setColor(name: AssetColorRaw.content_warning_primary.rawValue)

    public static func setColor(name: String) -> UIImage? {
        guard let color = UIColor(named: named, in: .module, with: nil) else { return nil }
        return color
    }
}


