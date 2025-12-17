import SwiftUI
import SwiftData

struct PronounsView: View {
	var body: some View {
		corePronounsView
	}
	
	private var corePronounsView: some View {
		ScrollView {
			Text("In Mandarin, there are six primary pronouns that can be used as-is in the singular or with a suffix to indicate plurality.")
				.font(.body)
				.padding()
			
			CustomGridView()
			
			Text("Notice how to make plural pronouns, you can just add 们. While you can do this for pronouns, make note that other words will not be different between singular and plural!")
				.font(.body)
				.padding()
			
			Text("There is also the formal you which is 您 (nín). It is used more in northern China, but may be heard anywhere")
				.font(.body)
				.padding()
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationTitle(Text("Pronouns"))
		.accessibilityIdentifier("screen_A1_Pronouns")
		#if os(iOS)
		.scrollContentBackground(.hidden)
		#endif
	}
}

struct CustomGridView: View {
	var body: some View {
		Grid {
			// Header Row
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
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "你")
				Text("nǐ")
				Text("You")
			}
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "他")
				Text("tā")
				Text("He")
			}
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "她")
				Text("tā")
				Text("She")
			}
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "它")
				Text("tā")
				Text("It")
			}
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "我们")
				Text("wǒ men")
				Text("We")
			}
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "你们")
				Text("nǐ men")
				Text("You all")
			}
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "他们")
				Text("tā men")
				Text("They (mixed gender)")
			}
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "她们")
				Text("tā men")
				Text("They (women)")
			}
			
			Divider()
			GridRow {
				SpeakOnTapText(text: "它们")
				Text("tā men")
				Text("They (inanimate objects)")
			}
		}
		.padding()
	}
}
