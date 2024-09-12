// 1) 선택적 매개변수 
// -1 이름 있는 매개변수(Named Parameters)

void getAddress(String country
                , {String city = '서울특별시' // default값 설정         
                , required String gu        // required 매개변수는 필수요구
                , String? ro}               // ?붙은 매개변수는 NULL값가능
                ){
  String address = '$country, $city $gu $ro';
  print(address);

}


void nameParams(){
  getAddress('대한민국', city : '대구광역시', gu : '중구', ro : '중앙대로');          // 이름 있는 매개변수는 순서 상관없음
  getAddress('대한민국', ro : '중앙대로', city : '대구광역시', gu : '중구');
  getAddress('대한민국', gu: '아구구');
}


// -2) 위치적 선택 매개변수(Optional positional parameters)
void getAdrs(String country, [String city = '서울특', String? gu]){                   // required 불가능.
  print('$country, $city $gu');
}

void positionParam(){
  getAdrs('대한민국', '대구광역시', '중구');
  getAdrs('대한민국', '중구', '대구광역시');

  getAdrs('머한민국');
}