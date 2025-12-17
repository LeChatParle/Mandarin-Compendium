import SwiftUI

struct ToHaveView: View {
	var body: some View {
		coreToHaveView
	}
	
	private var coreToHaveView: some View {
		ScrollView {

		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("To Have"))
		.accessibilityIdentifier("screen_A1_ToHave")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
