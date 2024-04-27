//
//  ImageGrid.swift
//  StackGridTransition
//
//  Created by Chandram Dutta on 27/04/24.
//

import SwiftUI

struct ImageGrid: View {
	
	let images: [String]
	
	let namespace: Namespace.ID
	
    var body: some View {
		Grid(horizontalSpacing: 24, verticalSpacing: 24) {
			GridRow {
				ForEach(images[0...1], id: \.self){ image in
					ImageCard(image: image, namespace: namespace)
				}
			}
			GridRow{
				ForEach(images[2...3], id: \.self){ image in
					ImageCard(image: image, namespace: namespace)
				}
			}
			GridRow {
				ForEach(images[4...5], id: \.self){ image in
					ImageCard(image: image, namespace: namespace)
				}
			}
		}
    }
}
