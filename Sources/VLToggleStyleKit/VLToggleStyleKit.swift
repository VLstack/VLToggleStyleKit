import SwiftUI

public
struct VLCheckRoundToggleStyle: ToggleStyle
{
 public
 func makeBody(configuration: Configuration) -> some View
 {
  Button { configuration.isOn.toggle() }
  label:
  {
   HStack
   {
    configuration.label
     .frame(maxWidth: .infinity, alignment: .leading)

    Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
     .foregroundStyle(configuration.isOn ? Color.accentColor : .secondary)
     .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
     .imageScale(.large)
   }
  }
  .buttonStyle(.plain)
 }
}

public
extension ToggleStyle where Self == VLCheckRoundToggleStyle
{
 static var checkRound: VLCheckRoundToggleStyle { .init() }
}
