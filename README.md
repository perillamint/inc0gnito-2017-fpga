# Inc0gnito CTF 2017 - D80C010-F

## Note
이 문제의 출력은, 난이도 조정을 위해 `INC0{.*}` 포멧을 따르지 않습니다.<br>
문제의 결과로 얻어낸 키를 `INC0{}` 안에 넣어 제출하십시오.

## 문제의 목표
칩의 key 포트에 어떤 입력을 넣었을 때, data 에 자료가 출력되는지를 알아내십시오.<br>
key 포트에 들어간 문자열과, data 포트에 들어간 문자열을 이어 붙인 것이 문제의 flag 입니다. (예: key = ABCD, data = qwer 일 때 flag 는 ABCDqwer)

## 칩 설명
이 칩은 key 포트로 32바이트 키를 받아, clk 신호가 posedge 일 때, 칩 내부의 키와 key 포트의 값을 비교해, 일치하면 data 포트로 숨겨진 값을 내보내는 칩입니다.

## key 조건
* Key 는 4바이트 문자열이거나, Null-terminated string 입니다. (예: 41424300 => ABC)
* 엔디안은 리틀 엔디안입니다.

## data 조건
* Data 는 4바이트 문자열이거나, Null-terminated string 입니다. (예: 41424300 => ABC)
* 엔디안은 리틀 엔디안입니다.
* 0x00000000 은 올바른 데이터가 아닙니다.

## Hints
* 얼음폭풍
