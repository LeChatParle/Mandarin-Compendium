import SwiftUI

struct AnimalsView: View {
	var body: some View {
		coreAnimalsView
	}
	
	private var coreAnimalsView: some View {
		ScrollView {

		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("Animals"))
		.accessibilityIdentifier("screen_A1_Animals")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
