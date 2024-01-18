class FeeData {
  final String receiptNo;
  final String month;
  final String paymentDate;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(
    this.receiptNo,
    this.month,
    this.paymentDate,
    this.paymentStatus,
    this.totalAmount,
    this.btnStatus,
  );
}

List<FeeData> fee = [
  FeeData('90871', 'November', '8 Nov 2023', 'Pending', '980\$', 'PAY NOW'),
  FeeData('90872', 'December', '20 Dec 2023', 'Paid', '635\$', 'Download'),
  FeeData('90873', 'December', '15 Dec 2023', 'Paid', '1535\$', 'Download'),
];
