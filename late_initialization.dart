// late initialization of final or non-nullable fields
class ResetPassword{
  
  String username;
  String newPassword;
  
  ResetPassword.reset(this.username, this.newPassword);
  
  factory ResetPassword(String username){
    String password = generateRandomPassword();
    return ResetPassword.reset(username, password);
  }
  
  static String generateRandomPassword(){
    // some logic
    return 'Yo9Rtj3K';    
  }  
}
