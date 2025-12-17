import SwiftUI

struct ToBeView: View {
	var body: some View {
		coreToBeView
	}
	
	private var coreToBeView: some View {
		ScrollView {

		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("To Be"))
		.accessibilityIdentifier("screen_A1_ToBe")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
