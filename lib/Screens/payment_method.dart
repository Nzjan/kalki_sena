import 'package:flutter/material.dart';

enum PaymentMethod { eSewa, Khalti, Bank }

void showPaymentMethodBottomSheet(BuildContext context) {
  PaymentMethod selectedMethod = PaymentMethod.eSewa;
  bool bankExpanded = false;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    isDismissible: false,
    enableDrag: false,
    builder: (BuildContext bc) {
      return StatefulBuilder(
        builder: (context, setState) {
          return DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.55,
            minChildSize: 0.3,
            maxChildSize: 0.9,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Drag handle
                    Container(
                      width: 40,
                      height: 5,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(2.5),
                      ),
                    ),

                    // Title & close button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Select Payment Method",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.white),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.white30),

                    // eSewa option
                    ListTile(
                      leading: Image.asset(
                        'assets/images/payment_method/esewa.png',
                        width: 24,
                        height: 24,
                        fit: BoxFit.contain,
                      ),
                      title: const Text(
                        "eSewa Mobile Wallet",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing:
                          selectedMethod == PaymentMethod.eSewa
                              ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                              : const Icon(
                                Icons.radio_button_unchecked,
                                color: Colors.white,
                              ),
                      onTap: () {
                        setState(() {
                          selectedMethod = PaymentMethod.eSewa;
                          bankExpanded = false;
                        });
                      },
                    ),

                    // Khalti option
                    ListTile(
                      leading: Image.asset(
                        'assets/images/payment_method/khalti.png',
                        width: 24,
                        height: 24,
                        fit: BoxFit.contain,
                      ),
                      title: const Text(
                        "Khalti Mobile Wallet",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing:
                          selectedMethod == PaymentMethod.Khalti
                              ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                              : const Icon(
                                Icons.radio_button_unchecked,
                                color: Colors.white,
                              ),
                      onTap: () {
                        setState(() {
                          selectedMethod = PaymentMethod.Khalti;
                          bankExpanded = false;
                        });
                      },
                    ),

                    // ... earlier parts (eSewa & Khalti) remain same
                    const SizedBox(height: 16), // separation between categories
                    // Bank section without tick
                    ListTile(
                      leading: Image.asset(
                        'assets/images/payment_method/bank.png', // your bank icon
                        width: 24,
                        height: 24,
                        fit: BoxFit.contain,
                      ),
                      title: const Text(
                        "Bank Detail For Foreign Donation",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        bankExpanded
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      onTap: () {
                        setState(() {
                          selectedMethod = PaymentMethod.Bank;
                          bankExpanded = !bankExpanded;
                        });
                      },
                    ),

                    if (selectedMethod == PaymentMethod.Bank && bankExpanded)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Receiver’s Full Name: Kalkism Research Center",
                              style: TextStyle(color: Colors.white70),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Bank Name: Global IME Bank",
                              style: TextStyle(color: Colors.white70),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Branch: Lagankhel",
                              style: TextStyle(color: Colors.white70),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Bank Account Number: 154879563164797",
                              style: TextStyle(color: Colors.white70),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Mobile Number: 9841123463",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),

                    const Spacer(),

                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Payment via ${selectedMethod.toString().split('.').last} initiated",
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "Pay Now",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      );
    },
  );
}
