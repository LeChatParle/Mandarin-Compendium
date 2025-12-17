import SwiftUI
import SwiftData

struct CharacterView: View {
	var body: some View {
		#if os(macOS)
		ScrollView {
			coreCharacterView
		}
		#endif

		#if os(iOS)
		coreCharacterView
		#endif
	}
	
	private var coreCharacterView: some View {
		VStack {
			Text("Characters")
				.font(.largeTitle.bold())
				
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("Characters"))
		.accessibilityIdentifier("screen_characters")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
