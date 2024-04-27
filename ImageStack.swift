//
//  ImageStack.swift
//  StackGridTransition
//
//  Created by Chandram Dutta on 27/04/24.
//

import SwiftUI

struct ImageStack: View {
	
	let images: [String]
	let namespace: Namespace.ID
	
	var body: some View {
		ZStack {
			ForEach(Array(images.enumerated()), id: \.offset) { index, image in
				ImageCard(image: image, namespace: namespace)
					.rotationEffect(.degrees(Double(index) * 2))
			}
		}
	}
}
