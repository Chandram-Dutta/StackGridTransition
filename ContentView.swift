import SwiftUI

struct ContentView: View {
	
	let images = (1...6).map { "image\($0)" }
	@State private var isGrid = true
	
	@Namespace var animation
	
	var body: some View {
		VStack {
			Button(isGrid ? "Stack": "Grid") {
				withAnimation(.bouncy(extraBounce: 0.1)) {
					isGrid.toggle()
				}
			}
			.padding(24)
			if isGrid {
				ImageGrid(images: images, namespace: animation)
			} else {
				ImageStack(images: images, namespace: animation)
			}
			Spacer()
		}
	}
}
