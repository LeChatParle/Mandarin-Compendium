import SwiftUI
import SwiftData

struct SettingsView: View {
	var body: some View {
		#if os(macOS)
		ScrollView {
			coreSettingsView
		}
		#endif

		#if os(iOS)
		coreSettingsView
		#endif
	}
	
	private var coreSettingsView: some View {
		VStack {
			Text("Settings")
				.font(.largeTitle.bold())
				.accessibilityIdentifier("screen_settings")
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("Settings"))
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
