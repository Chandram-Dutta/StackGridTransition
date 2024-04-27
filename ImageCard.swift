//
//  ImageCard.swift
//  StackGridTransition
//
//  Created by Chandram Dutta on 27/04/24.
//

import SwiftUI

struct ImageCard: View {
	
	let image: String
	let namespace: Namespace.ID
	
	var body: some View {
		Image(image)
			.resizable()
			.frame(width: 150, height: 200)
			.clipShape(RoundedRectangle(cornerRadius: 12))
			.shadow(radius: 12)
			.matchedGeometryEffect(id: image, in: namespace)
	}
}
