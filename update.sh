#!/usr/bin/env zsh

# スクリプトの実行中にエラーが発生した場合、処理を中断します。
set -e

# --- my-app ディレクトリの更新 ---
echo "--- Updating my-app (submodule) ---"

# my-appディレクトリに移動します。
cd my-app

# すべての変更をステージングします。
echo "Adding all changes in my-app..."
git add .

# "update blog"というメッセージでコミットします。
# git commitが何もコミットするものがない場合にエラーになるのを防ぐため、|| true を追加します。
echo "Committing changes in my-app..."
git commit -m "update blog" || true

# mainブランチにプッシュします。
echo "Pushing changes from my-app..."
git push origin main

# --- 親ディレクトリの更新 ---
echo ""
echo "--- Updating homepage (parent repository) ---"

# 元のディレクトリ（homepage）に戻ります。
cd ..

# すべての変更（サブモジュールの更新を含む）をステージングします。
echo "Adding submodule update..."
git add .

# "update submodule to latest"というメッセージでコミットします。
echo "Committing submodule update..."
git commit -m "update submodule to latest" || true

# mainブランチにプッシュします。
echo "Pushing changes from homepage..."
git push origin main

echo ""
echo "✅ All repositories have been updated successfully!"
