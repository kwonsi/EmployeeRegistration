console.log("회원등록js실행");

let eNo = document.querySelector(".eNo-input");
let eRegistration = document.querySelector(".eRegistration-input");
let eName = document.querySelector(".eName-input");
let eTel = document.querySelector(".eTel-input");
let eMail = document.querySelector(".eMail-input");
let registBtn = document.getElementById("registBtn");

let noMessage = document.querySelector(".noMessage");
let telMessage = document.querySelector(".telMessage");
let mailMessage = document.querySelector(".mailMessage");

let confirm = document.querySelector(".confirm");
let error = document.querySelector(".error");


let checkR = {
    "eNo" : false,
    "eRegistration" : false,
    "eName" : false,
    "eTel" : false,
    "eMail" : false};


    //직원번호 유효성 검사
    const noReg = /^\d{3}/;
    eNo.addEventListener("input", function() {
        if(noReg.test(eNo.value)) {
            noMessage.innerText = "올바른 형식입니다.";
            noMessage.classList.add("confirm");
            noMessage.classList.remove("error");

            checkR.eNo = true;
        }else{
            noMessage.innerText = "형식(숫자3자리)에 맞지 않습니다.";
            noMessage.classList.add("error");
            noMessage.classList.remove("confirm");

            checkR.eNo = false;
        };
    });
    

    //전화번호 유효성 검사
    const telReg = /^010\d{4}\d{4}$/;
    eTel.addEventListener("input", function() {
        if(telReg.test(eTel.value)) {
            telMessage.innerText = "올바른 형식입니다.";
            telMessage.classList.add("confirm");
            telMessage.classList.remove("error");

            checkR.eTel = true;
        }else{
            telMessage.innerText = "전화번호 형식에 맞지 않습니다.";
            telMessage.classList.add("error");
            telMessage.classList.remove("confirm");

            checkR.eTel = false;
        };
    });
    
    
    //이메일 유효성 검사
    const mailReg = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    eMail.addEventListener("input", function() {
        if(mailReg.test(eMail.value)) {
            mailMessage.innerText = "올바른 형식입니다.";
            mailMessage.classList.add("confirm");
            mailMessage.classList.remove("error");

            checkR.eMail = true;
        }else{
            mailMessage.innerText = "이메일 형식에 맞지 않습니다.";
            mailMessage.classList.add("error");
            mailMessage.classList.remove("confirm");

            checkR.eMail = false;
        };
    });
    
   //직급 입력 유무 확인
    eRegistration.addEventListener("input", function() {
        if(eRegistration.value == null) {
            checkR.eRegistration = false;
        }else{
            checkR.eRegistration = true;
        }
    });

    //이름 입력 유무 확인
    eName.addEventListener("input", function() {
        if(eName.value == null) {
            checkR.eName = false;
        }else {
            checkR.eName = true;
        }
    });


    //등록 버튼 클릭 시 전체 유효성 검사 확인
    function regist() {

        let st;

        for(let key in checkR) {
            if(!checkR[key]) {
                switch(key){
                    case "eNo" : st="직원번호가 "; 
                    break;
                    case "eRegistration" : st="직급이 ";
                    break;
                    case "eName" : st="이름이 ";
                    break;
                    case "eTel" : st="전화번호가 ";
                    break;
                    case "eMail" : st="이메일이 ";
                    break;
                }
                st += "유효하지 않습니다.";
                alert(st);
                return false;
            }
        }
        return true;
    }



    //직원 정보 삭제
    function emplDelete(employeeNo){
        console.log("삭제 할 직원번호 : " + employeeNo) ;

        let cf = window.confirm("정말 삭제하시겠습니까?");

        if(cf){
            $.ajax({
                url: "employeeDelete",
                type: "POST",
                data: {"employeeNo" : employeeNo},

                success: function(result){
                    if(result>0){
                        alert("직원 정보가 삭제 되었습니다.");
                        location.reload();
                    }else{
                        alert("삭제에 실패하였습니다.");
                    }
                }, error: function() {
                    console.log("직원 정보 삭제 ajax 에러");
                }
            })
        }else{
            console.log("삭제 취소");
        };

    };