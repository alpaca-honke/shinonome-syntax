@echo off
if "%1" EQU "--help" (
    echo 単語の読み方を表示します。
    echo 用法
    echo >東雲構文 調べる単語
) else if "%1" EQU "-h" (
    echo 単語の読み方を表示します。
    echo 用法
    echo >東雲構文 調べる単語
) else if "%1" EQU "" (
    echo 引数が空です。-hもしくは--helpで使い方を表示
) else (
    echo "%1" + "の読み方知らなくてずっと" + "%1" + "って読んでた"
    echo "%1" + "って読むのか"
)
