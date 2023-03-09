import React, { useState } from "react";
import Footer from "../Common/Footer";
import Navbar from "../Common/Navbar";
import Api from "../Common/Api";
import axios from "axios";

const Join = () => {
  const [Name, setName] = useState<string>("");
  const [Password, setPassword] = useState<string>("");
  const [PasswordCheck, setPasswordCheck] = useState<string>();
  const [Nickname, setNickname] = useState<string>("");
  const [Phonenum, setPhonenum] = useState<string>("");
  const [Authnum, setAuthnum] = useState<number>();

  function ChangeName(event: any): void {
    console.log(event.target.value);
    setName(event.target.value);
  }
  const ChangePassword = (event: any): void => {
    console.log(event.target.value);
    setPassword(event.target.value);
  };
  const ChangePasswordCheck = (event: any): void => {
    console.log(event.target.value);
    setPasswordCheck(event.target.value);
  };
  const ChangeNickname = (event: any): void => {
    console.log(event.target.value);
    setNickname(event.target.value);
  };
  const ChangePhonenum = (event: any): void => {
    console.log(event.target.value);
    setPhonenum(event.target.value);
  };
  const ChangeAuthnum = (event: React.ChangeEvent<HTMLInputElement>): void => {
    // console.log(event.target.value);
    const temp: number = Number(event.target.value);
    setAuthnum(temp);
  };

  const CheckDuplication = (check: string): void => {
    let accessToken = localStorage.getItem("accessToken");
    if (check === "Name") {
      // 이름 중복 axios
      console.log("아이디확인", Name);
      // console.log("비었나", Name === "");

      axios({
        method: "post",
        url: `http://118.67.130.158/api/user/check/username`,
        data: {
          isAdmin: false,
          isSecession: false,
          nickname: Nickname,
          password: Password,
          phoneNumber: Phonenum,
          username: Name,
        },
      }).then((r) => {
        console.log(r.data);
      });
    } else if (check === "Nickname") {
      // 닉네임 중복 axios
      console.log("닉네임확인", Nickname);

      axios({
        method: "post",
        url: `http://118.67.130.158/api/user/check/nickname`,
        data: {
          isAdmin: false,
          isSecession: false,
          nickname: Nickname,
          password: Password,
          phoneNumber: Phonenum,
          username: Name,
        },
      }).then((r) => {
        console.log(r.data);
      });
    } else if (check === "Phonenum") {
      //  폰 중복 axios
      console.log("폰번호확인", Phonenum);
      axios({
        method: "post",
        url: `http://118.67.130.158/api/user/check/phonenumber`,
        data: {
          isAdmin: false,
          isSecession: false,
          nickname: Nickname,
          password: Password,
          phoneNumber: Phonenum,
          username: Name,
        },
        headers: {
          accessToken: accessToken,
        },
      }).then((r) => {
        console.log(r.data);
      });
    }
  };

  const CheckAuthnum = (authnum: number | undefined): void => {
    // if (Authnum == 1) {
    // } else {
    // }
    // 인증번호확인axios
  };

  const GoJoin = (): void => {
    // 회원가입axios
    console.log("닉네임", Nickname);
    console.log("패스워드", Password);
    console.log("전화번호", Phonenum);
    console.log("username", Name);
    Api.post(`/user/join`, {
      isAdmin: false,
      isSecession: false,
      nickname: Nickname,
      password: Password,
      phoneNumber: Phonenum,
      username: Name,
    }).then((r) => {
      console.log(r.data);
    });
    // axios({
    //   method: "post",
    //   url: `http://118.67.130.158/api/user/join`,
    //   data: {
    //     isAdmin: false,
    //     isSecession: false,
    //     nickname: Nickname,
    //     password: Password,
    //     phoneNumber: Phonenum,
    //     username: Name,
    //   },
    // }).then((r) => {
    //   console.log(r.data);
    // });

    // //실패
    // Api.get("/user/signup")
    //   .then((r) => {
    //     console.log(r.data);
    //   })
    //   .catch((e) => {
    //     console.log(e);
    //   });
  };

  return (
    <>
      <div className="flex flex-col justify-between h-[100vh]">
        <Navbar />
        {/* 상 */}
        <div className="w-full">
          <div className="flex flex-col mx-5 sm:mx-5 md:mx-7 lg:mx-[20%]">
            <div className="my-4 font-extrabold text-[#A87E6E] text-4xl  sm:text-4xl md:text-4xl lg:text-6xl">
              홍민정음
            </div>
            <div className="text-[#BD9789] font-extrabold text-xl sm:text-xl md:text-2xl lg:text-4xl ">
              가입하기
            </div>
          </div>
          {/* 중 */}
          <div className=" flex flex-col justify-center ">
            {/* 왼 */}
            {/* <div></div> */}
            {/* 가운데 */}
            <div className="mx-5 sm:mx-5 md:mx-7 lg:mx-[30%] justify-center">
              <div className="my-2">
                <div className="text-[#A87C6E] font-extrabold text-base">
                  계정
                </div>
                <div className="flex flex-row justify-between w-full">
                  <input
                    type="text"
                    className="min-w-[70%] px-3 py-2 md:px-4 md:py-3 border-2 border-[#A87E6E] rounded-lg font-medium placeholder:font-normal"
                    onChange={ChangeName}
                  />
                  <div
                    className="px-3 py-2 md:px-4 md:py-3 border-2 bg-[#BF9F91] text-[#FFFFFF]  rounded-lg font-medium"
                    onClick={() => {
                      CheckDuplication("Name");
                    }}
                  >
                    중복확인
                  </div>
                </div>
              </div>
              <div className="my-2">
                <div className="flex flex-row items-baseline">
                  <div className="text-[#A87C6E] font-extrabold text-base">
                    별명
                  </div>
                  <div className="text-[#868686] text-xs">
                    6글자 이내 한글만 사용하실 수 있습니다.
                  </div>
                </div>
                <div className="flex flex-row justify-between ">
                  <input
                    type="text"
                    className="min-w-[70%] px-3 py-2 md:px-4 md:py-3 border-2 border-[#A87E6E] rounded-lg font-medium placeholder:font-normal"
                    onChange={ChangeNickname}
                  />
                  <div
                    className="flex px-3 py-2 md:px-4 md:py-3 border-2 bg-[#BF9F91] text-[#FFFFFF]  rounded-lg font-medium"
                    onClick={() => {
                      CheckDuplication("Nickname");
                    }}
                  >
                    중복확인
                  </div>
                </div>
              </div>
              <div className="my-2">
                <div className="text-[#A87C6E] font-extrabold text-base">
                  비밀번호
                </div>
                <div className="flex flex-row ">
                  <input
                    type="text"
                    className="min-w-[100%] px-3 py-2 md:px-4 md:py-3 border-2 border-[#A87E6E] rounded-lg font-medium placeholder:font-normal"
                    onChange={ChangePassword}
                  />
                </div>
              </div>
              <div className="my-2">
                <div className="text-[#A87C6E] font-extrabold text-base">
                  비밀번호확인
                </div>
                <div className="flex flex-row ">
                  <input
                    type="text"
                    className="min-w-[100%] px-3 py-2 md:px-4 md:py-3 border-2 border-[#A87E6E] rounded-lg font-medium placeholder:font-normal"
                    onChange={ChangeName}
                  />
                </div>
              </div>
              <div className="my-2">
                <div className="text-[#A87C6E] font-extrabold text-base">
                  전화번호
                </div>
                <div className="flex flex-row justify-between">
                  <input
                    type="text"
                    className="min-w-[70%] px-3 py-2 md:px-4 md:py-3 border-2 border-[#A87E6E] rounded-lg font-medium placeholder:font-normal"
                    onChange={ChangePhonenum}
                  />
                  <div
                    className="flex px-3 py-2 sm:px-3 sm:py-2 md:px-4 md:py-3  border-2 bg-[#BF9F91] text-[#FFFFFF]  rounded-lg font-medium"
                    onClick={() => {
                      CheckDuplication("Phonenum");
                    }}
                  >
                    인증하기
                  </div>
                </div>
              </div>
              <div className="my-2">
                <div className="text-[#A87C6E] font-extrabold text-base">
                  인증번호
                </div>
                <div className="flex flex-row justify-between ">
                  <input
                    type="text"
                    className="min-w-[70%] px-3 py-2 md:px-4 md:py-3 border-2 border-[#A87E6E] rounded-lg font-medium placeholder:font-normal"
                    onChange={ChangeAuthnum}
                  />
                  <div
                    className="px-3 py-2 md:px-4 md:py-3 border-2 bg-[#BF9F91] text-[#FFFFFF]  rounded-lg font-medium"
                    onClick={() => {
                      CheckAuthnum(Authnum);
                    }}
                  >
                    &nbsp; &nbsp;확인&nbsp; &nbsp;
                  </div>
                </div>
              </div>
              <div className="w-full">
                <div
                  className="pt-3 cursor-pointer"
                  onClick={() => {
                    GoJoin();
                  }}
                >
                  <div className="flex justify-center items-center h-[3.5rem] rounded-lg font-extrabold bg-[#F0ECE9] text-[#A87E6E]">
                    <div>가입하기</div>
                  </div>
                </div>
              </div>
            </div>
            {/* 우 */}
            {/* <div></div> */}
          </div>
          {/* 하 */}
          <div className="h-[2rem]"></div>
        </div>
        <Footer />
      </div>
    </>
  );
};

{
  /* <div className="flex flex-col items-center justify-center">
  <div className="h-[10rem]">
    <div>홍민정음</div>
    <div>가입하기</div>
  </div>
  <div className="h-[30rem]">
    <div>또이름</div>
    <div className="flex flex-row">
      <input
        type="text"
        className="border-2 border-black"
        onChange={ChangeName}
      />
      <div>중복확인</div>
    </div>
    <div>별명</div>
    <div className="flex flex-row">
      <input
        type="text"
        className="border-2 border-black"
        onChange={ChangeNickname}
      />
      <div>중복확인</div>
    </div>
    <div>비밀번호</div>
    <input
      type="text"
      className="border-2 border-black"
      onChange={ChangePassword}
    />
    <div>비밀번호 확인</div>
    <input
      type="text"
      className="border-2 border-black"
      onChange={ChangePasswordCheck}
    />
    <div>전화번호</div>
    <div className="flex flex-row">
      <input
        type="text"
        className="border-2 border-black"
        onChange={ChangePhonenum}
      />
      <div>중복확인</div>
    </div>
    <div>인증번호</div>
    <div className="flex flex-row">
      <div>인증번호 요청</div>
      <input
        type="text"
        className="border-2 border-black"
        onChange={ChangeAuthnum}
      />
      <div>확인</div>
    </div>
    <div className="border-2 border-black">가입하기</div>
  </div>
</div>; */
}
export default Join;
