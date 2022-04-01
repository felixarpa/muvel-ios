import SwiftUI

struct TextView: View {
    var text: String
    var style: Style
    var color: Color
    
    var size: CGFloat {
        switch style {
        case .headline:
            return 48
        case .subheadline:
            return 32
        case .title:
            return 24
        case .subtitle:
            return 20
        case .text:
            return 16
        case .label:
            return 12
        case .custom(let size, _, _):
            return size
        }
    }
    
    var weight: Font.Weight {
        switch style {
        case .headline:
            return .heavy
        case .subheadline:
            return .bold
        case .title:
            return .bold
        case .subtitle:
            return .semibold
        case .text:
            return .light
        case .label:
            return .regular
        case .custom(_, let weight, _):
            return weight
        }
    }
    
    var verticalPadding: CGFloat {
        switch style {
        case .headline, .subheadline:
            return 4
        case .title, .subtitle:
            return 2
        case .text, .label:
            return 1
        case .custom(_, _, let verticalPadding):
            return verticalPadding
        }
    }
    
    enum Style {
        case headline
        case subheadline
        case title
        case subtitle
        case text
        case label
        case custom(size: CGFloat, weight: Font.Weight, verticalPadding: CGFloat)
    }
    
    init(_ text: String, style: Style = .text, color: Color = .white) {
        self.text = text
        self.style = style
        self.color = color
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: size))
            .foregroundColor(color)
            .fontWeight(weight)
            .padding(.vertical, verticalPadding)
    }
}
