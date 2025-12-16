import SwiftUI
import SwiftData

struct KnowledgeView: View {
	var body: some View {
		#if os(macOS)
		ScrollView {
			coreKnowledgeView
		}
		#endif

		#if os(iOS)
		coreKnowledgeView
		#endif
	}
	
	private var coreKnowledgeView: some View {
		VStack {
			Text("Knowledge")
				.font(.largeTitle.bold())
				.accessibilityIdentifier("screen_knowledge")
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("Knowledge"))
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
		
		// Gain Knowledge - Study Characters
		
		// See Knowledge - See stats on what you've learned
	}
}
