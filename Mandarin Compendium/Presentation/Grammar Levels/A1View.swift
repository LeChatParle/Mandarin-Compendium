import SwiftUI
import SwiftData

struct A1View: View {
	var body: some View {
		coreA1View
	}
	
	private var coreA1View: some View {
		ScrollView {
			NavigationStack { // A Level
				VStack(alignment: .leading) {
					HStack {
						NavigationLink {
							PronounsView()
						} label: {
							Text("Lesson 1: Pronouns")
								.frame(width: 375, height: 75)
								.font(.title)
								.foregroundColor(.white)
								.background(.blue)
								.clipShape(RoundedRectangle(cornerRadius: 10))
								.contentShape(RoundedRectangle(cornerRadius: 10))
						}
						.buttonStyle(.plain)
					}
					Spacer()
				}
			}
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("A1 Lessons"))
		.accessibilityIdentifier("screen_A1")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
