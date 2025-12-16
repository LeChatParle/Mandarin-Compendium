
import SwiftUI
import SwiftData

struct HomeView: View {
	var body: some View {
		#if os(macOS)
		ScrollView {
			coreHomeView
		}
		#endif

		#if os(iOS)
		coreHomeView
		#endif
	}
	
	private var coreHomeView: some View {
		VStack {
			Text("Grammar")
				.font(.largeTitle.bold())
				.accessibilityIdentifier("screen_home")
			
			Text("A1")
			Text("A2")
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("Grammar"))
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
