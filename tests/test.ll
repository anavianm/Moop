; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

@main_ptr = global i32 ()* @main
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define i32 @Mainmain() {
entry:
  %result = alloca i32
  %test = alloca i1
  store i32 0, i32* %result
  store i1 true, i1* %test
  %test1 = load i1, i1* %test
  %tmp = icmp eq i1 %test1, true
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else, %then
  %result2 = load i32, i32* %result
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %result2)
  ret i32 0

then:                                             ; preds = %entry
  store i32 1, i32* %result
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}
