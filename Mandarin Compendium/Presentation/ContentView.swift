import SwiftUI
import SwiftData

struct ContentView: View {
	// Environment variables here
	
    var body: some View {
		TabView {
			Tab("Home", systemImage: "house") { HomeView() }
			Tab("Characters", systemImage: "character.cursor.ibeam") { CharacterView() }
			Tab("Knowledge", systemImage: "book") { KnowledgeView() }
			Tab("Settings", systemImage: "gear") { SettingsView() }
		}
    }
}
