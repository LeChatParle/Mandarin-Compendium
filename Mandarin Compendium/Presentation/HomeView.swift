
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
				
			NavigationStack { // A Level
				VStack(alignment: .leading) {
					HStack {
						NavigationLink {
							A1View()
						} label: {
							Text("A1")
								.frame(width: 175, height: 75)
								.font(.title)
								.foregroundColor(.white)
								.background(.blue)
								.clipShape(RoundedRectangle(cornerRadius: 10))
								.contentShape(RoundedRectangle(cornerRadius: 10))
						}
						.buttonStyle(.plain)
						
						NavigationLink {
							A2View()
						} label: {
							Text("A2")
								.frame(width: 175, height: 75)
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
		.navigationTitle(Text("Grammar"))
		.accessibilityIdentifier("screen_home")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
