import 'package:flutter/material.dart';

// ignore: constant_identifier_names
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Select Payment Method",
                          style: TextStyle(
                            color: Color(0xfff5f5f5),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SFPro',
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Color(0xff747474),
                            size: 15,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // eSewa option
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xffe0e0e0),
                            width: 0.3,
                          ),
                        ),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                        leading: Image.asset(
                          'assets/images/payment_method/esewa.png',
                          width: 45,
                          height: 45,
                          fit: BoxFit.contain,
                        ),
                        title: const Text(
                          "eSewa Mobile Wallet",
                          style: TextStyle(
                            color: Color(0xfff5f5f5),
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                          ),
                        ),
                        trailing:
                            selectedMethod == PaymentMethod.eSewa
                                ? const Icon(
                                  Icons.check_circle,
                                  color: Color(0xff2A5CAA),
                                  size: 20,
                                )
                                : const Icon(
                                  Icons.radio_button_unchecked,
                                  color: Color(0xff2A5CAA),
                                  size: 20,
                                ),
                        onTap: () {
                          setState(() {
                            selectedMethod = PaymentMethod.eSewa;
                            bankExpanded = false;
                          });
                        },
                      ),
                    ),
                    // Khalti option
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 14),
                      leading: Image.asset(
                        'assets/images/payment_method/khalti.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                      title: const Text(
                        "Khalti Mobile Wallet",
                        style: TextStyle(
                          color: Color(0xfff5f5f5),
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                        ),
                      ),
                      trailing:
                          selectedMethod == PaymentMethod.Khalti
                              ? const Icon(
                                Icons.check_circle,
                                color: Color(0xff2A5CAA),
                                size: 20,
                              )
                              : const Icon(
                                Icons.radio_button_unchecked,
                                color: Color(0xff2A5CAA),
                                size: 20,
                              ),
                      onTap: () {
                        setState(() {
                          selectedMethod = PaymentMethod.Khalti;
                          bankExpanded = false;
                        });
                      },
                    ),
                    // Bank option
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xffe0e0e0),
                            width: 0.3,
                          ),
                        ),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                        leading: Image.asset(
                          'assets/images/payment_method/bank.png',
                          width: 45,
                          height: 45,
                          fit: BoxFit.contain,
                        ),
                        title: const Text(
                          "Bank Detail For Foreign Donation",
                          style: TextStyle(
                            color: Color(0xfff5f5f5),
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                          ),
                        ),
                        trailing: Icon(
                          bankExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Color(0xff2A5CAA),
                          size: 20,
                        ),
                        onTap: () {
                          setState(() {
                            selectedMethod = PaymentMethod.Bank;
                            bankExpanded = !bankExpanded;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Show bank details if expanded
                    if (selectedMethod == PaymentMethod.Bank && bankExpanded)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          _InfoRow(
                            label: "Receiver’s Full Name",
                            value: "Kalkism Research Center",
                          ),
                          SizedBox(height: 4),
                          _InfoRow(
                            label: "Bank Name",
                            value: "Global IME Bank",
                          ),
                          SizedBox(height: 4),
                          _InfoRow(label: "Branch", value: "Lagankhel"),
                          SizedBox(height: 4),
                          _InfoRow(
                            label: "Bank Account Number",
                            value: "154879563164797",
                          ),
                          SizedBox(height: 4),
                          _InfoRow(label: "Mobile Number", value: "9841123463"),
                        ],
                      ),
                    const SizedBox(height: 12),
                    // Make Payment Button - Responsive Size
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return SizedBox(
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
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      },
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

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            ": $value",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
