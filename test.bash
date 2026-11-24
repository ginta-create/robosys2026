#!/bin/bash
# SPDX-FileCopyrightText: 2026 Ginta Uchiyama
# SPDX-License-Identifier: BSD-3-Clause

output=$(python3 unpush)
expected="エラー: 引数にファイル名を指定してください。"
if echo "$output" | grep -q "$expected"; then
    echo "テスト 1 (引数なし): 成功"
else
    echo "テスト 1 (引数なし): 失敗 (出力: $output)"
    exit 1
fi

touch dummy_untracked.txt
output=$(python3 unpush dummy_untracked.txt)

if echo "$output" | grep -q "はまだコミットされていません。"; then
    echo "テスト 2 (未コミットファイル): 成功"
else
    echo "テスト 2 (未コミットファイル): 失敗 (出力: $output)"
    rm -f dummy_untracked.txt
    exit 1
fi
rm -f dummy_untracked.txt

echo "-----------------------------------"
echo " すべてのテストが正常に終了しました"
