//  함수: 입력(파라미터) -> 연산 -> 출력(return)
//  입력 유무, 출력 유무 -> 2 * 2 -> 4가지 조합
//  입력이 있을 때는 매개변수로 전달, 입력이 없을 때는 ()
//  출력이 있을 때는 return 키워드로 데이터 반환
//  출력이 없을 때는 void 키워드 (생략 가능)

//  위치 매개변수를 사용한 함수
String positionalParam(String firstName, [String? lastName = ""]) {
  //  lastName이 null이면 firstName만, 둘다 있으면 FullName 반환
  return lastName != null ? "$firstName $lastName" : firstName;
}

//  명령된 매개변수 선언
createUser({required String name, // required: 필수 파라미터
  required int age, // 필수 파라미터
  String? email     // 선택적 파라미터
 }) {
  print("name: $name, age: $age, email: $email");
}

main() {
  //  선택적 위치 매개변수 활용 함수
  print("Positional Params\t---------------");
  print(positionalParam("Steve", "Jobs"));
  print(positionalParam("Bill", "Gates"));
  print(positionalParam("Elon"));

  //  선택적 이름 매개변수 활용 함수: {} 사용
  print("Named Params\t---------");
  createUser(name: "홍길동", age: 25, email: "hong@hwalbin.org");
  createUser(age: 35, name: "임꺽정"); //  순서는 중요하지 않음
}