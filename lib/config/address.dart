/// @author WilliamRong firewings_82
/// @date :6/6/2020 5:10 PM
class Address {
  static const token = "47403876933882c8b8cfe6c216874c7fa1b3eb66";

  static const hostApi = "https://api.github.com/repos/fireteck/CloseFriend/contents";
  static const host = "https://fireteck.github.io/CloseFriend";

  static const String hostDev = "http://192.168.1.94:9988/v";

  static String getUploadByApi(String file_name) {
    return "$hostApi/uploadBase64/$file_name";
  }

  static String getFromHost(String file_name) {
    return "$host/$file_name";
  }

  static String getPubMsgAddr(String token) => "$hostDev/user/msg?token=$token";
}