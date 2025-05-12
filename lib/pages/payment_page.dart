import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:food_delivery/utils/colors.dart';

class PaymentPage  extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            _buildWalletCard(),
            const SizedBox(height: 20),
            _buildInputRow('Apply Coupon Code'),
            const SizedBox(height: 10),
            _buildInputRow('Apply Voucher Code'),
            const SizedBox(height: 20),
            _buildSummary(),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: AppColors.mainColor,
                ),
                onPressed: () {},
                child: const Text(
                  'Proceed To Checkout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWalletCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          const Icon(Icons.account_balance_wallet, size: 40),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Wallet', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('Add money to my wallet'),
                SizedBox(height: 8),
                Text('Qty: 1'),
              ],
            ),
          ),
          const Text('\$100.00', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 10),
          const Icon(Icons.close),
        ],
      ),
    );
  }

  Widget _buildInputRow(String hint) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: hint,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainColor,
          ),
          onPressed: () {},
          child: const Text('Apply', style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }

  Widget _buildSummary() {
    return Column(
      children: const [
        Divider(),
        SizedBox(height: 10),
        _SummaryRow(label: 'Subtotal', value: '\$100.00'),
        _SummaryRow(label: 'Discount', value: '- \$0.00'),
        SizedBox(height: 10),
        Divider(thickness: 1),
        _SummaryRow(label: 'Order Total', value: '\$100.00', isBold: true),
      ],
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  const _SummaryRow({
    Key? key,
    required this.label,
    required this.value,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = isBold
        ? const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
        : const TextStyle(fontSize: 14);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: textStyle),
          Text(value, style: textStyle),
        ],
      ),
    );
  }
}
