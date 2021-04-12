# evalHelperBSQ

## 개발 동기

42서울 BSQ 문제 채점을 위해 자동 채점 시스템의 필요성을 느꼈고,

간단한 명령어로 다른 학우들의 문제를 채점할 수 있는

쉘 스크립트를 짜보면 좋을 것 같다는 생각에 개발하였습니다.

## 사용 방법

터미널에
```
git clone https://github.com/splkm97/evalHelperBSQ
mv <bsq.out> evalHelperBSQ/bsq.out
cd evalHelperBSQ
./autotest.sh
```
이후 `autotest.sh` 파일을 이용해 `bsq.out` 파일을 검사합니다.

`examplegen.sh` 파일을 이용해 `.map` 파일과 `.ans` 파일을 자동 생성할 수 있습니다.

이후 `difftest.sh` 파일을 이용해 `.map` 파일과 `.ans` 파일의 차이를 담은 `.diff` 파일을 자동 생성할 수 있습니다.

## TODO

customtest.sh 개발
