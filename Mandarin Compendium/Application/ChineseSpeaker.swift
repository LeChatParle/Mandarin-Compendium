import SwiftUI
import AVFoundation

@MainActor
final class ChineseSpeaker {
	static let shared = ChineseSpeaker()
	private let synthesizer = AVSpeechSynthesizer()

	func bestVoice(language: String) -> AVSpeechSynthesisVoice? {
		let voices = AVSpeechSynthesisVoice.speechVoices().filter { $0.language == language }
		return voices.max { $0.quality.rawValue < $1.quality.rawValue }
	}

	func speak(_ text: String) {
		let utterance = AVSpeechUtterance(string: text)
		utterance.voice = bestVoice(language: "zh-CN") ?? AVSpeechSynthesisVoice(language: "zh-CN")
		utterance.rate = 0.4

		synthesizer.stopSpeaking(at: .immediate)
		synthesizer.speak(utterance)
	}
}
