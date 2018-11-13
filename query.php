<?php

if (isset($_POST['query_submit'])) {
    require 'conn.php';
    $stu_no = $_POST['stu_no'];
    $name = $_POST['name'];
    $sub_no = "12345";

    $sql_check_query = "SELECT stu_name FROM sys.stu_info WHERE stu_no=?;";
    $stmt = mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($stmt, $sql_check_query)) {
        header("location:login.html?error=sqlerror");
        exit();
    }
    else {
        mysqli_stmt_bind_param($stmt, "s", $stu_no);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if ($row = mysqli_fetch_assoc($result)) {
            if ($name == $row['stu_name']) {
                $sql_grade_query = "SELECT sub1_grade,sub2_grade,sub3_grade,sub4_grade,sub5_grade,sub6_grade,sub7_grade,sub8_grade,sub9_grade 
                                    FROM sys.stu_grade WHERE stu_no=? ;";
                $stmt = mysqli_stmt_init($conn);
                if (!mysqli_stmt_prepare($stmt, $sql_grade_query)) {
                    header("location:login.html?error=failtogetgrade");
                    exit();
                } else {
                    mysqli_stmt_bind_param($stmt, "s", $stu_no);
                    mysqli_stmt_execute($stmt);
                    $result = mysqli_stmt_get_result($stmt);
                    if ($row = mysqli_fetch_assoc($result)) {
                        $array = array();
//                        for ($i = 1; $i <= 9; $i++) {
//                            $mean = "sub" . $i . "_grade";
//                            $fol = "sub" . $i;
//                            if ($row['$mean'] = null) {
//                                $array['$fol'] = "未参加考试";
//                            } else {
//                                $array['$fol'] = $row[$mean];
//                            }
//                        }
                        foreach($row as $key=>$value) {
                            if ($value == null) {
                                global $value;
                                $value = "未考试";
                            }
                        }

//                        foreach($row as $x=>$x_value) {
//                            if ($x_value == null) {
//                                $x_value = 1.2;
//                            }

                        echo "<p>科目1的考试成绩是：" . $row['sub1_grade'] . "</p><br>";
                        echo "<p>科目2的考试成绩是：" . $row['sub2_grade'] . "</p><br>";
                        echo "<p>科目3的考试成绩是：" . $row['sub3_grade'] . "</p><br>";
                        echo "<p>科目4的考试成绩是：" . $row['sub4_grade'] . "</p><br>";
                        echo "<p>科目5的考试成绩是：" . $row['sub5_grade'] . "</p><br>";
                        echo "<p>科目6的考试成绩是：" . $row['sub6_grade'] . "</p><br>";
                        echo "<p>科目7的考试成绩是：" . $row['sub7_grade'] . "</p><br>";
                        echo "<p>科目8的考试成绩是：" . $row['sub8_grade'] . "</p><br>";
                        echo "<p>科目9的考试成绩是：" . $row['sub9_grade'] . "</p><br>";
                    }
                    else {
                        header ("location:login.html?error=nostuexistingrade");
                        exit();
                    }

                }
            }
             else if ($name != $row['stu_name']) {
                       header("location:login.html?error=wrongname1");
                       exit();
             } else {
                       header("location:login.html?error=wrongname2");
                       exit();
              }

        } else {
            header("location:login.html?error=nouserexist");
            exit();
        }
    }
}
else {
     header("location:login.html?:error=nosubmit");
     exit();
}












//    if (empty($username) || empty($password)) {
//        header("location:login.html?error=emptyfields");
//        exit();
//    }
//    else {
//        $sql_select = "SELECT * FROM ceshi.login WHERE username=? OR email=?;";
//        $stmt = mysqli_stmt_init($conn);
//        if (!mysqli_stmt_prepare($stmt,$sql_select)){
//            header("location:login.html?error=sqlerror");
//            exit();
//        }
//        else {
//            mysqli_stmt_bind_param($stmt,"ss",$username,$username);
//            mysqli_stmt_execute($stmt);
//            $result = mysqli_stmt_get_result($stmt);
//            if ($row = mysqli_fetch_assoc($result)) {
//                $passwordcheck = password_verify($password,$row['password']);
//                if ($passwordcheck == false) {
//                    header("location:login.html?error=wrongpassword1");
//                    exit();
//                }
//                else if($passwordcheck == true) {
//                    session_start();
//                    $_SESSION['userID']=$row['id'];
//                    $_SESSION['username']=$row['username'];
//
//                    header("location:login.html?login=success");
//                    exit();
//                }
//                else {
//                    header("location:login.html?error=wrongpassword2");
//                    exit();
//                }
//            }
//            else {
//                header("location:login.html?error=nouserexist");
//                exit();
//            }
//        }
//    }
//
//}
//else {
//    header("location:login.html");
//    exit();
//}