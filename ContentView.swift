import SwiftUI

struct LiquidGlassNavBarView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(1...30, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 16)
                            .fill(
                                LinearGradient(
                                    colors: [
                                        Color(red: 0.15, green: 0.35, blue: 0.95),
                                        Color(red: 0.55, green: 0.15, blue: 0.85)
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(height: 110)
                            .overlay(
                                HStack {
                                    Text("Item \(index)")
                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                                        .foregroundStyle(.white)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundStyle(.white.opacity(0.6))
                                }
                                .padding(.horizontal, 20)
                            )
                            .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 12)
            }
            .navigationTitle("Dashboard")
            .navigationBarTitleDisplayMode(.large)
            // Authentic Apple Liquid Glass Material for Navigation Bar
            .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 22))
                            .foregroundStyle(.primary)
                    }
                }
            }
        }
    }
}
