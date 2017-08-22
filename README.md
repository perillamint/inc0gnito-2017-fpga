# Inc0gnito CTF 2017 - 세운상가

## Note
이 문제의 출력은, 난이도 조정을 위해 `INC0{.*}` 포멧을 따르지 않습니다.<br>
문제의 결과로 얻어낸 4-byte Null-terminated 키를 `INC0{}` 안에 넣어 제출하십시오.

## 문제의 목표
칩의 data 포트로 나오는 flag 값을 알아내십시오.

## 칩 설명
이 칩은 key 포트로 32바이트 키를 받아, clk 신호가 posedge 일 때, 칩 내부의 키와 key 포트의 값을 비교해, 일치하면 data 포트로 문제의 flag를 내보내는 칩입니다.

## 키 조건
* 키는 Null-terminated string 입니다. (예: 41424300 => ABC)
* 엔디안은 리틀 엔디안입니다.
* 0x00000000 은 키가 아닙니다.

## Hints
* 눈폭풍
* Lattice HX8k CT256
