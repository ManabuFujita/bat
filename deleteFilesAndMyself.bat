@echo off

REM -------------------------------
REM 引数で指定したファイルを削除
REM -------------------------------

for %%f in (%*) do (
  if exist %%f (
    del %%f
  )
)

REM -------------------------------
REM 自分自身を削除
REM -------------------------------

del "%~dp0%~nx0"

exit /b 0