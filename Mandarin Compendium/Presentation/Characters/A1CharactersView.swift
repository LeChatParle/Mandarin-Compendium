import SwiftUI

struct A1CharactersView: View {
	var body: some View {
		coreA1CharactersView
	}
	
	private var coreA1CharactersView: some View {
		ScrollView {
			NavigationStack {
				VStack(alignment: .leading) {
					HStack {
						NavigationLink {
							Wo3View()
						} label: {
							Text("我")
								.frame(width: 100, height: 75)
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
		.navigationTitle(Text("A1 Characters"))
		.accessibilityIdentifier("screen_A1C")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}
