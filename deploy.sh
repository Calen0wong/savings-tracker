#!/bin/bash
# 一键部署脚本到 GitHub Pages
# 用法: ./deploy.sh YOUR_GITHUB_USERNAME

USERNAME=$1

if [ -z "$USERNAME" ]; then
    echo "❌ 请提供 GitHub 用户名"
    echo "用法: ./deploy.sh your_username"
    exit 1
fi

echo "🚀 开始部署到 GitHub Pages..."
echo "用户名: $USERNAME"

# 检查 git
if ! command -v git &> /dev/null; then
    echo "❌ 请先安装 git"
    exit 1
fi

# 添加远程仓库
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$USERNAME/savings-tracker.git"

# 推送代码
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 代码推送成功！"
    echo ""
    echo "下一步：开启 GitHub Pages"
    echo "1. 访问: https://github.com/$USERNAME/savings-tracker"
    echo "2. 点击 Settings → Pages"
    echo "3. Source 选择 Deploy from a branch → main → / (root)"
    echo "4. 点击 Save"
    echo ""
    echo "等待 2-3 分钟后，访问:"
    echo "📱 https://$USERNAME.github.io/savings-tracker"
else
    echo "❌ 推送失败，请检查："
    echo "1. 是否在 GitHub 创建了 savings-tracker 仓库"
    echo "2. 用户名是否正确"
    echo "3. 是否配置了 git 凭据（git config --global credential.helper cache）"
fi
