import SwiftUI

struct SpeakOnTapText: View {
	let text: String

	var body: some View {
		Button {
			ChineseSpeaker.shared.speak(text)
		} label: {
			Text(text)
		}
		.buttonStyle(.plain)
		.accessibilityIdentifier("speak_\(text)")
		.accessibilityHint("Speaks the Chinese text")
	}
}
