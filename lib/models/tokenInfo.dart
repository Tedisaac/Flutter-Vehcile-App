class TokenInfo {
  final String acctId;
  final String secret;

  const TokenInfo({required this.acctId, required this.secret});

  factory TokenInfo.fromJson(Map<String, dynamic> json) {
    return TokenInfo(
      acctId: json['acctId'],
      secret: json['secret'],
    );
  }
}