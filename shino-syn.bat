@echo off
if "%1" EQU "--help" (
    echo �P��̓ǂݕ���\�����܂��B
    echo �p�@
    echo >shino-syn ���ׂ�P��
) else if "%1" EQU "-h" (
    echo �P��̓ǂݕ���\�����܂��B
    echo �p�@
    echo >shino-syn ���ׂ�P��
) else if "%1" EQU "" (
    echo ��������ł��B-h��������--help�Ŏg������\��
) else (
    echo %1�̓ǂݕ��m��Ȃ��Ă�����%1���ēǂ�ł�
    echo %1���ēǂނ̂�
)
