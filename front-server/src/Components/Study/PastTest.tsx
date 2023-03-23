import React, { useEffect, useRef, useState } from "react";
import { ReactMarkdown } from "react-markdown/lib/react-markdown";
import { useNavigate } from "react-router-dom";
import {
  useGetStudyPastQuery,
  useGetStudyPastTestQuery,
  usePostStudyPastResultMutation,
} from "../../Store/api";
import Footer from "../Common/Footer";
import Navbar from "../Common/Navbar";

type ScoreBoard = {
  one: string;
  two: string;
  three: string;
  four: string;
  five: string;
  six: string;
  seven: string;
  eight: string;
  nine: string;
  ten: string;
};

const PastTest = (): JSX.Element => {
  const [inputStatus, setInputStatus] = useState<ScoreBoard | undefined>();
  const [answer, setanswer] = useState([
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
  ]);

  const { data: na }: any = useGetStudyPastQuery("");
  const {
    data: PastDetail,
    error: error2,
    isLoading: isLoading2,
  } = useGetStudyPastTestQuery("");
  const today = new Date();
  const year = today.getFullYear();
  const month = today.getMonth() + 1; // 0부터 시작하므로 +1을 해줍니다.
  const date = today.getDate();
  const today_temp = year + "-" + "0" + month + "-" + date;

  var isPeriod;

  return (
    <>
      <Navbar />
      {na ? (
        // ㅎㅎ
        <>
          {/* 기간내로 입장 시 */}
          {today_temp >= na.data.startTime && today_temp <= na.data.endTime ? (
            <div className="flex justify-center">
              <Title data={na.data} />
            </div>
          ) : (
            <div>접속할 수 없는 기간입니다</div>
          )}
        </>
      ) : (
        // 데이터가 없을때
        <div>loading</div>
      )}
      <div className="flex justify-center">
        {PastDetail
          ? Question(
              PastDetail,
              na,
              inputStatus,
              answer,
              setanswer,
              setInputStatus,
            )
          : null}
      </div>
      <Footer />
    </>
  );
};

const Title = (data: any): JSX.Element => {
  return (
    <>
      {data ? (
        <>
          <div className="w-full border-y-2 border-[#BF9F91] flex flex-col">
            <div className="w-full justify-between flex flex-col md:flex-row ">
              <div className="md:w-[20%]"></div>
              <div className="max-w-screen-xl text-center">
                <div className="flex flex-col my-[2rem]  text-[#A87E6E] font-extrabold">
                  <span className="text-2xl">{`제 ${data.data.pastTestId}회`}</span>
                  <span className="text-6xl pt-3"> 과거시험</span>
                </div>
              </div>
              <div className="flex md:w-[20%] md:h-full h-[3rem] ">
                <Timer mm="" ss="" />
                {/* <tIMMER hh="5"  /> */}
              </div>
            </div>
          </div>
        </>
      ) : null}
    </>
  );
};

const item = "flex flex-row items-center py-2";
const labletage =
  " text-sm font-medium text-gray-900 dark:text-gray-300 flex flex-row";

const Question = (
  PastDetail: any,
  na: any,
  inputStatus: ScoreBoard | undefined,
  answer: any,
  setanswer: Function,
  setInputStatus: Function,
) => {
  let a = 0;

  const [postStudyPastResult, loading] = usePostStudyPastResultMutation();

  // var list = new Array(11);
  const handleClickRadioButton = (e: any) => {
    var copy = answer;
    switch (e.target.name) {
      case "1":
        copy[1] = e.target.value;
        break;
      case "2":
        copy[2] = e.target.value;
        break;
      case "3":
        copy[3] = e.target.value;
        break;
      case "4":
        copy[4] = e.target.value;
        break;
      case "5":
        copy[5] = e.target.value;
        break;
      case "6":
        copy[6] = e.target.value;
        break;
      case "7":
        copy[7] = e.target.value;
        break;
      case "8":
        copy[8] = e.target.value;
        break;
      case "9":
        copy[9] = e.target.value;
        break;
      case "10":
        copy[10] = e.target.value;
        break;
    }
    setanswer(copy);
  };

  const radioClick = () => {
    var result = 0;
    PastDetail.data.map((it: any) => {
      // console.log(it.pastAnswer);

      if (answer[it.pastQuestionId] == it.pastAnswer) {
        result += 10;
      } else {
      }
    });
    // console.log(result);
    // console.log(na.data);

    const data = {
      pastTestId: na.data.pastTestId,
      score: result,
      userId: localStorage.getItem("userId"),
    };

    postStudyPastResult(data).then((r: any) => {
      if (r.data.message === "success") alert(`결과는 ${result} 입니다`);
    });
  };

  return (
    <div className="flex flex-col justify-center max-w-screen-xl px-5 lg:px-0">
      {PastDetail.data.map((it: any) => {
        return (
          <div className="flex flex-col justify-center w-full">
            <br />
            <br />
            <div className="flex flex-col w-full text-[1.1rem]">
              <div className="absolute w-[30%] lg:w-[10%] pt-2 min-h-[3rem] text-center font-extrabold text-white bg-[#F7CCB7] rounded-t-xl">
                문제 {it.pastQuestionId}번
              </div>
              <div className="text-justify mt-9 z-10 rounded-xl p-4 bg-[#F4EFEC]">
                {it.pastQuestion}
              </div>
            </div>
            {/* <보기> 없음 */}
            {it.pastText === "" ? (
              <div>
                <br />
                <div className="flex flex-col">
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-1`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-1`}
                        type="radio"
                        value="1"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                        // onChange={.handleChange}
                      />
                      <div>&nbsp;&nbsp;&nbsp;1.</div>
                      <ReactMarkdown children={it.pastChoice1} />
                    </label>
                  </div>
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-2`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-2`}
                        type="radio"
                        value="2"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                        // onChange={}
                      />
                      <div>&nbsp;&nbsp;&nbsp;2.</div>
                      <ReactMarkdown children={it.pastChoice2} />
                    </label>
                  </div>
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-3`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-3`}
                        type="radio"
                        value="3"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                      />
                      <div>&nbsp;&nbsp;&nbsp;3.</div>
                      <ReactMarkdown children={`${it.pastChoice3}`} />
                    </label>
                  </div>
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-4`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-4`}
                        type="radio"
                        value="4"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                      />
                      <div>&nbsp;&nbsp;&nbsp;4.</div>
                      <ReactMarkdown children={it.pastChoice4} />
                    </label>
                  </div>
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-5`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-5`}
                        type="radio"
                        value="5"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                      />
                      <div>&nbsp;&nbsp;&nbsp;5.</div>
                      <ReactMarkdown children={it.pastChoice5} />
                    </label>
                  </div>
                </div>
              </div>
            ) : (
              <div>
                {/* <보기> 있음 */}
                <br />
                <div className="border-2 text-center rounded-xl p-4">
                  <ReactMarkdown children={it.pastText} />
                </div>
                <br />
                <div className="flex flex-col">
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-1`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-1`}
                        type="radio"
                        value="1"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                      />
                      <div>&nbsp;&nbsp;&nbsp;1.</div>

                      <ReactMarkdown children={it.pastChoice1} />
                    </label>
                  </div>
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-2`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-2`}
                        type="radio"
                        value="2"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                      />
                      <div>&nbsp;&nbsp;&nbsp;2.</div>

                      <ReactMarkdown children={it.pastChoice2} />
                    </label>
                  </div>
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-3`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-3`}
                        type="radio"
                        value="3"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                      />
                      <div>&nbsp;&nbsp;&nbsp;3.</div>

                      <ReactMarkdown children={it.pastChoice3} />
                    </label>
                  </div>
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-4`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-4`}
                        type="radio"
                        value="4"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                      />
                      <div>&nbsp;&nbsp;&nbsp;4.</div>

                      <ReactMarkdown children={it.pastChoice4} />
                    </label>
                  </div>
                  <div className={item}>
                    <label
                      htmlFor={`${it.pastQuestionId}-5`}
                      className={labletage}
                    >
                      <input
                        id={`${it.pastQuestionId}-5`}
                        type="radio"
                        value="5"
                        name={`${it.pastQuestionId}`}
                        className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
                        onClick={handleClickRadioButton}
                      />
                      <div className="">&nbsp;&nbsp;&nbsp;5.</div>

                      <ReactMarkdown children={it.pastChoice5} />
                    </label>
                  </div>
                </div>
              </div>
            )}
          </div>
        );
      })}
      <div className="relative w-full h-[5rem] mt-6">
        <button
          className="absolute right-0 border-2 border-[#A87E6E] bg-[#F0ECE9] text-[#A87E6E] rounded-lg w-[30%] py-3"
          onClick={radioClick}
        >
          제출
        </button>
      </div>
    </div>
  );
};

const intToString = (num: any) => {
  return String(num).padStart(2, "0");
};
const Timer = ({ mm, ss }: { mm: any; ss: any }): JSX.Element => {
  const MM = mm ? mm : 15;
  const SS = ss ? ss : 0;

  const count = useRef<number>(MM * 60 + SS);
  const interval = useRef<any>(null);

  const [minute, setMinute] = useState(intToString(MM));
  const [second, setSecond] = useState(intToString(SS));

  useEffect(() => {
    interval.current = setInterval(() => {
      count.current -= 1;
      setMinute(intToString(Math.floor(count.current / 60)));
      setSecond(intToString(count.current % 60));
    }, 1000);
  }, []);

  useEffect(() => {
    if (count.current <= 0) {
      clearInterval(interval.current);
    }
  }, [second]);

  return (
    <div className="w-full  h-[3rem] md:h-full border-2 flex justify-center items-center">
      {minute} 분 {second} 초
    </div>
  );
};

export default PastTest;
