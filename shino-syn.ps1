#!/usr/bin/env pwsh
Param( $word )

if ( $word -in @("-h","--help")){
    Write-Host 単語の読み方を表示します。
    Write-Host 用法
    Write-Host ">.\shino-syn.ps1 調べる単語"
} elseif ( $word -in @("", $null)){
    Write-Host 引数が空です。-hもしくは--helpで使い方を表示
} else {
    Write-Host "$word" -NoNewLine
    Write-Host "の読み方知らなくてずっと" -NoNewLine
    Write-Host "$word" -NoNewLine
    Write-Host "って読んでた"
    Write-Host "$word" -NoNewLine
    Write-Host "って読むのか"
}