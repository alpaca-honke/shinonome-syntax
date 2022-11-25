@echo off
if "%1" EQU "--help" (
    echo 単語の読み方を表示します。
    echo 用法
    echo >shino-syn 調べる単語
) else if "%1" EQU "-h" (
    echo 単語の読み方を表示します。
    echo 用法
    echo >shino-syn 調べる単語
) else if "%1" EQU "" (
    echo 引数が空です。-hもしくは--helpで使い方を表示
) else (
    echo %1の読み方知らなくてずっと%1って読んでた
    echo %1って読むのか
)
