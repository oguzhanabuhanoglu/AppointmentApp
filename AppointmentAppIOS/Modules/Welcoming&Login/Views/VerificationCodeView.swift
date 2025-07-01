//
//  VerificationCodeView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 1.07.2025.
//
import SwiftUI

struct VerificationCodeView: View {
    @Environment(\.dismiss) private var dismiss

    // Her bir karakter için state
    @State private var code1 = ""
    @State private var code2 = ""
    @State private var code3 = ""
    @State private var code4 = ""

    // Focus kontrolü
    enum CodeField {
        case field1, field2, field3, field4
    }

    @FocusState private var focusedField: CodeField?

    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea(.all)

            VStack(spacing: 20) {
                Text("Doğrulama kodunu giriniz")
                    .foregroundStyle(.white)
                    .font(.appFont(.inriaRegular, size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)

                // Kod kutuları
                HStack(spacing: 20) {
                    codeBox(text: $code1, tag: .field1, next: .field2, previous: nil)
                    codeBox(text: $code2, tag: .field2, next: .field3, previous: .field1)
                    codeBox(text: $code3, tag: .field3, next: .field4, previous: .field2)
                    codeBox(text: $code4, tag: .field4, next: .field4, previous: .field3)
                }
                .padding(.bottom)

                MainButton(isDisabled: false, isFilled: true, title: "Devam Et", action: {})
            }
            .offset(y: -120)
            .onAppear {
                focusedField = .field1
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Dest Hair")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 32))
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.white)
                            .frame(width: 25, height: 25)
                    }
                }
            }
        }
    }

    // Kod kutusu bileşeni
    @ViewBuilder
    func codeBox(text: Binding<String>, tag: CodeField, next: CodeField?, previous: CodeField?) -> some View {
        TextField("", text: text)
            .foregroundColor(.white)
            .font(.appFont(.interVariable, size: 24))
            .keyboardType(.numberPad)
            .textContentType(.oneTimeCode)
            .multilineTextAlignment(.center)
            .focused($focusedField, equals: tag)
            .frame(width: 60, height: 60)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.golden, lineWidth: 1)
            )
            .onChange(of: text.wrappedValue) { newValue in
                // Fazla karakter varsa sadece ilkini al
                if newValue.count > 1 {
                    text.wrappedValue = String(newValue.prefix(1))
                }

                if newValue.count == 1 {
                    // Sonraki kutuya odaklan
                    if let next = next {
                        focusedField = next
                    } else {
                        focusedField = nil
                    }
                } else if newValue.isEmpty {
                    // Önceki kutuya geri odaklan
                    if let previous = previous {
                        focusedField = previous
                    }
                }
            }
    }

}


#Preview {
    VerificationCodeView()
}
