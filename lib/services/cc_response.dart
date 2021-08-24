class CCResponse<T> {
  Status status = Status.freash;
  T? data;
  String? masege;

  CCResponse.loading() : status = Status.loading;
  CCResponse.freash() : status = Status.freash;
  CCResponse.completed(this.data) : status = Status.completed;
  CCResponse.erorr(this.masege) : status = Status.erorr;
}

enum Status {
  freash,
  loading,
  completed,
  erorr,
}
