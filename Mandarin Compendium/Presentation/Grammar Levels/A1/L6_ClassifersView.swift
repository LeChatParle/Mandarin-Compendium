import SwiftUI

struct ClassifiersView: View {
	var body: some View {
		coreClassifiersiew
	}
	
	private var coreClassifiersiew: some View {
		ScrollView {

		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("Classifiers"))
		.accessibilityIdentifier("screen_A1_Classifiers")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
