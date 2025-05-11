class ResponseModel{
  bool _isSuccess;
  String _message;
  ResponseModel( this._isSuccess,  this._message); //  ResponseModel({required this.isSuccess, required this.message});
  String get message => _message;
  bool get isSuccess => _isSuccess;
}