class AccountService {
  String? getUsername, getEmail, getPassword;

  AccountService({this.getUsername, this.getEmail, this.getPassword});
}

List getAccounts = [
  AccountService(
    getUsername: 'Reza',
    getEmail: 'reza@gmail.com',
    getPassword: '123'
  )
];