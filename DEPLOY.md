# 💰 存钱小工具 - PWA 部署指南

## 什么是 PWA？
PWA（渐进式 Web 应用）让你可以把网页像 APP 一样安装到手机，**无需应用商店**，有独立图标、能离线使用！

---

## 🚀 快速部署（3 种方式）

### 方式一：GitHub Pages（免费，推荐）

1. **注册 GitHub 账号**（已有则跳过）
   - 访问 https://github.com/signup

2. **创建新仓库**
   - 点击右上角 `+` → `New repository`
   - 仓库名填 `savings-tracker`
   - 选 `Public`
   - 点击 `Create repository`

3. **上传文件**
   - 点击 `uploading an existing file`
   - 把 `index.html`, `manifest.json`, `sw.js`, `icon-192.svg`, `icon-512.svg` 拖进去
   - 点击 `Commit changes`

4. **开启 GitHub Pages**
   - 仓库页面点击 `Settings`
   - 左侧选 `Pages`
   - Source 选 `Deploy from a branch` → `main` → `/ (root)`
   - 点击 `Save`
   - 等待 1-2 分钟，会显示访问链接：`https://你的用户名.github.io/savings-tracker`

5. **手机访问安装**
   - 安卓 Chrome 浏览器打开上面的链接
   - 点击菜单（⋮）→ **"添加到主屏幕"**
   - 完成！桌面出现 APP 图标

---

### 方式二：Netlify（最简单）

1. 访问 https://app.netlify.com/drop
2. 直接把 PWA 文件夹拖到网页里
3. 自动生成链接，手机访问安装即可

---

### 方式三：本地测试

```bash
# 1. 进入 PWA 文件夹
cd savings-pwa

# 2. 用 Python 启动本地服务器
python3 -m http.server 8080

# 3. 同一 WiFi 下的手机访问：
# http://你的电脑IP:8080
```

---

## 📱 安卓手机安装步骤

### 方法一：Chrome 安装（推荐）
1. 用 Chrome 浏览器打开部署好的网页
2. 点击右上角菜单（⋮）
3. 选择 **"添加到主屏幕"** 或 **"安装应用"**
4. 确认添加
5. 桌面出现 💰 图标，完成！

### 方法二：地址栏提示
- 首次访问时，底部会出现 **"添加到主屏幕"** 横幅
- 直接点击即可安装

### 方法三：三星/华为/小米浏览器
- 菜单里找 **"添加到主屏幕"** 或 **"快捷方式"**

---

## ✅ 安装成功标志

- 桌面出现 💰 图标
- 点击后全屏打开（没有浏览器地址栏）
- 可以离线使用
- 数据和网页版互通

---

## 🎨 自定义

### 修改 APP 名称
编辑 `manifest.json`：
```json
{
  "name": "你的 APP 名称",
  "short_name": "短名称"
}
```

### 修改图标颜色
编辑 `manifest.json`：
```json
{
  "theme_color": "#你想要的颜色",
  "background_color": "#启动背景色"
}
```

### 替换图标
替换 `icon-192.svg` 和 `icon-512.svg` 文件

---

## 💾 数据说明

- 数据存储在手机浏览器本地
- 清除浏览器数据会丢失记录
- 建议定期备份（导出功能后续添加）

---

## 🔧 常见问题

**Q: 为什么没有看到"添加到主屏幕"？**
A: 确保用 Chrome 浏览器，且网页是通过 HTTPS 或 localhost 访问的

**Q: iPhone 可以用吗？**
A: 可以！Safari 打开 → 分享按钮 → "添加到主屏幕"

**Q: 换手机数据还在吗？**
A: 数据存在本地，换手机需要重新记录。云端同步功能开发中...

---

有问题随时问！🐾
