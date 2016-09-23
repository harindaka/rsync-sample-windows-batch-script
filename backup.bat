@echo off
SET CUR_DIR=%~dp0
SET SOURCE_DIR=/cygdrive/c/directory-to-be-backed-up/
SET TARGET_DIR=/cygdrive/c/directory-to-store-the-backup/
SET RSYNC_DIR=%~dp0rsync

echo Backing up "%SOURCE_DIR%" to "%TARGET_DIR%"
cd "%RSYNC_DIR%"
rsync -a --inplace --no-whole-file --no-i-r --info=progress2 "%SOURCE_DIR%" "%TARGET_DIR%"
cd "%CUR_DIR%"
echo Backup complete
