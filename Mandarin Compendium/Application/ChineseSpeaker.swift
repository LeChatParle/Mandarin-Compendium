import SwiftUI
import AVFoundation

@MainActor
final class ChineseSpeaker {
	static let shared = ChineseSpeaker()
	private let synthesizer = AVSpeechSynthesizer()

	func speak(_ text: String) {
		let utterance = AVSpeechUtterance(string: text)
		utterance.voice = AVSpeechSynthesisVoice(language: "zh-CN")
		utterance.rate = 0.45
		utterance.pitchMultiplier = 1.0

		synthesizer.stopSpeaking(at: .immediate)
		synthesizer.speak(utterance)
	}
}
