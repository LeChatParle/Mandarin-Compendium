import SwiftUI

struct Wo3View: View {
	var body: some View {
		coreWo3View
	}
	
	private var coreWo3View: some View {
		ScrollView {
			A1C1GridView()
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("我"))
		.accessibilityIdentifier("screen_C1_Wo3")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}

struct A1C1GridView: View {
	var body: some View {
		Grid {
			GridRow {
				Text("Chinese").bold()
				Text("Pinyin").bold()
				Text("English").bold()
			}
			.padding(.bottom, 5)
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "我")
				Text("wǒ")
				Text("I")
			}
		}
		.padding()
	}
}
