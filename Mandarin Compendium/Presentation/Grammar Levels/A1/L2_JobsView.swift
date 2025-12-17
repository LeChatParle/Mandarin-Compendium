import SwiftUI

struct JobsView: View {
	var body: some View {
		coreJobsView
	}
	
	private var coreJobsView: some View {
		ScrollView {

		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("Jobs"))
		.accessibilityIdentifier("screen_A1_Jobs")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
