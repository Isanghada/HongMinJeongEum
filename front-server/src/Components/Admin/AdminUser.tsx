import { MouseEventHandler, useEffect, useRef, useState } from "react"
import Navbar from "../Common/Navbar"
import styles from "./Admin.module.css";

function AdminUser():JSX.Element {
  return (
    <>
      <Navbar/>
      <AdminUserSection1/>
    </>
  )
}
export default AdminUser

interface UserListType {
  'user_id': number,
  'character_id': number,
  'username': string,
  'nickname': string,
  'phone_number': string,
  'level': number,
  'exp': number,
  'is_admin': boolean,
  'badge_id': number,
  'total_time': number,
  'total_right': number,
  'total_wrong': number
}

function AdminUserSection1():JSX.Element {
  

  const [isClickUser,setIsClickUser] = useState<boolean>(false) 
  const [clickUserData, setClickUserData] = useState<UserListType>()

  const userList:UserListType[] = [
    {'user_id': 1,
      'character_id': 1,
      'username': 'duck',
      'nickname': '오리',
      'phone_number': '010-1234-5678',
      'level': 2,
      'exp': 20,
      'is_admin': false,
      'badge_id': 1,
      'total_time': 9310,
      'total_right': 152,
      'total_wrong': 77
    },
    
  ] 

  const tbodyData = userList.map((e:UserListType, idx:number)=> {
    let 등급:string = ''
    switch (e.level) {
      case 1:
        등급 = '정구품'
        break;
      case 2:
        등급 = '정팔품'
        break;
      case 3:
        등급 = '정칠품'
        break;
      case 4:
        등급 = '정육품'
        break;
      case 5:
        등급 = '정오품'
        break;
      case 6:
        등급 = '정사품'
        break;
      case 7:
        등급 = '정삼품'
        break;
      case 8:
        등급 = '정이품'
        break;
      case 9:
        등급 = '정일품'
        break;
    }
    
    return (
      <tr key={idx} className={`border-b-2 border-b-[#B7B7B7] lg:text-[0.6rem] xl:text-[1rem] text-[#525252] cursor-pointer ${styles.userData}`} onClick={()=> {
        setIsClickUser(true)
        setClickUserData(e)
      }}>
        <th className="border-x-2 border-x-[#B7B7B7]">{idx}</th>
        <th className="border-x-2 border-x-[#B7B7B7]">{e.user_id}</th>
        <th className="border-x-2 border-x-[#B7B7B7]">{e.character_id}</th>
        <th className="border-x-2 border-x-[#B7B7B7]">{e.username}</th>
        <th className="border-x-2 border-x-[#B7B7B7]">{e.nickname}</th>
        <th className="border-x-2 border-x-[#B7B7B7]">{e.phone_number}</th>
        <th className="border-x-2 border-x-[#B7B7B7]">{등급}</th>
        <th className="border-x-2 border-x-[#B7B7B7]">{e.exp}</th>
        <th className="border-x-2 border-x-[#B7B7B7]">{e.is_admin? 'True':'False'}</th>
        <th className="border-x-2 border-x-[#B7B7B7]">{e.badge_id}</th>
      </tr>
    )
  })
  
  function UserDetail():JSX.Element {
    const ref = useRef<HTMLDivElement>(null)
    const click:MouseEventHandler<HTMLDivElement> = (e) => {
      const target = e.target as HTMLElement 
      if (target.ariaLabel === '취소') {
        setIsClickUser(false)
      } else {
        // setIsClickUser()
      }
    }
    return (
      <div ref={ref} className="flex justify-center absolute mx-auto w-full z-10" onClick={(e)=> {
        if (e.target === ref.current) {
          setIsClickUser(false)
      }}}>
        <div className="flex justify-center items-center w-[35rem] my-auto bg-white border-4 border-[#A87E6E] rounded-lg">
          <div className="flex flex-col w-full">
            <div className="flex justify-center items-center text-[1.3rem] text-[#A87E6E] font-semibold py-5">DETAIL</div>
            <div className="flex justify-evenly w-full">
              <div className="flex flex-col justify-center items-end w-1/2 mx-5 text-[1rem] text-[#A87E6E] font-semibold">
                <div className="py-[0.15rem]">user_id</div>
                <div className="py-[0.15rem]">character_id</div>
                <div className="py-[0.15rem]">username</div>
                <div className="py-[0.15rem]">nickname</div>
                <div className="py-[0.15rem]">phone_number</div>
                <div className="py-[0.15rem]">level</div>
                <div className="py-[0.15rem]">exp</div>
                <div className="py-[0.15rem]">is_admin</div>
                <div className="py-[0.15rem]">badge_id</div>
                <div className="py-[0.15rem]">total_time</div>
                <div className="py-[0.15rem]">total_right</div>
                <div className="py-[0.15rem]">total_wrong</div>
              </div>
              <div className="flex flex-col justify-center items-start w-1/2 mx-5 text-[1rem] text-[#767676] font-semibold">
                <div className="py-[0.15rem]">{clickUserData?.user_id}</div>
                <div className="py-[0.15rem]">{clickUserData?.character_id}</div>
                <div className="py-[0.15rem]">{clickUserData?.username}</div>
                <div className="py-[0.15rem]">{clickUserData?.nickname}</div>
                <div className="py-[0.15rem]">{clickUserData?.phone_number}</div>
                <div className="py-[0.15rem]">{clickUserData?.level}</div>
                <div className="py-[0.15rem]">{clickUserData?.exp}</div>
                <div className="py-[0.15rem]">{clickUserData?.is_admin? 'True': 'False'}</div>
                <div className="py-[0.15rem]">{clickUserData?.badge_id}</div>
                <div className="py-[0.15rem]">{clickUserData?.total_time}</div>
                <div className="py-[0.15rem]">{clickUserData?.total_right}개</div>
                <div className="py-[0.15rem]">{clickUserData?.total_wrong}개</div>
              </div>
            </div>
            <div className="flex justify-center  text-[1rem] text-[#A87E6E] font-semibold my-4">
              <div aria-label="취소" className={`bg-[#F0ECE9] border-[#A87E6E] border-2 px-6 py-1 mx-5 rounded-md ${styles.choiceBtn}`} onClick={click}>취소</div>
              <div aria-label="삭제" className={`bg-[#F0ECE9] border-[#A87E6E] border-2 px-6 py-1 mx-5 rounded-md ${styles.choiceBtn}`} onClick={click}>삭제</div>
            </div>
          </div>
        </div>
      </div>
    )
  }

  return (
    <>
      {
        isClickUser? <UserDetail/>: null
      }
      <div className="container max-w-screen-xl w-[70%] my-8 mx-auto ">
        <div className="w-full flex justify-center text-[2.2rem] text-[#A87E6E] font-bold mb-10">
          USER 관리
        </div>
        <div className="w-full mb-4 font-bold">
          <span className="text-[1.4rem] text-[#A87E6E] border-b-4 border-b-[#A87E6E]/70">
            USER
          </span>
        </div>
        <div className="overflow-y-auto h-[50vh] w-full">
          <div className="flex justify-center items-start ">
            <table className="w-full">
              <thead>
                <tr className="border-y-4 border-y-[#A87E6E] lg:text-[0.8rem] xl:text-[1.2rem] text-[#A87E6E]">
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">index</th>
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">user_id</th>
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">character_id</th>
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">username</th>
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">nickname</th>
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">phone_number</th>
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">level</th>
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">exp</th>
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">is_admin</th>
                  <th className="py-1 border-x-4 border-x-[#A87E6E]/80">badge_id</th>
                </tr>
              </thead>
              <tbody>
                {tbodyData}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </>
  )
}

