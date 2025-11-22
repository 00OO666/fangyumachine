# 网站预览指南

## 方法一：使用PHP内置服务器（推荐，最简单）

### 步骤：

1. **打开命令行/终端**
   - Windows: 按 `Win + R`，输入 `cmd` 或 `powershell`
   - Mac/Linux: 打开 Terminal

2. **进入项目目录**
   ```bash
   cd E:\Desktop\独立站源码
   ```

3. **启动PHP内置服务器**
   ```bash
   php -S localhost:8000
   ```
   或者指定完整路径：
   ```bash
   php -S 127.0.0.1:8000 -t .
   ```

4. **在浏览器中打开**
   ```
   http://localhost:8000
   ```

### 如果遇到端口被占用：
```bash
php -S localhost:8080
```
然后访问：`http://localhost:8080`

---

## 方法二：使用XAMPP/WAMP/MAMP（Windows/Mac）

### 如果已安装XAMPP/WAMP：

1. **复制项目到服务器目录**
   - XAMPP: `C:\xampp\htdocs\独立站源码`
   - WAMP: `C:\wamp64\www\独立站源码`

2. **启动Apache和MySQL服务**

3. **访问网站**
   ```
   http://localhost/独立站源码
   ```

---

## 方法三：使用Docker（高级用户）

### 创建 `docker-compose.yml`：

```yaml
version: '3.8'
services:
  web:
    image: php:7.4-apache
    ports:
      - "8000:80"
    volumes:
      - .:/var/www/html
    environment:
      - APACHE_DOCUMENT_ROOT=/var/www/html
```

### 运行：
```bash
docker-compose up -d
```

访问：`http://localhost:8000`

---

## 方法四：部署到在线服务器

### 快速部署选项：

1. **使用免费托管服务**：
   - **000webhost** (https://www.000webhost.com)
   - **InfinityFree** (https://infinityfree.net)
   - **Freehostia** (https://www.freehostia.com)

2. **部署步骤**：
   - 注册账号
   - 上传所有文件到服务器
   - 配置数据库（如果需要）
   - 访问提供的域名

---

## 查看优化效果的方法

### 1. 检查加载动画
- 刷新页面，应该看到加载动画和进度条
- 桌面端会显示加载百分比

### 2. 检查响应式设计
- 按 `F12` 打开开发者工具
- 点击设备工具栏图标（或按 `Ctrl+Shift+M`）
- 测试不同设备尺寸：
  - iPhone SE (375px)
  - iPhone 12 Pro (390px)
  - iPad (768px)
  - Desktop (1200px+)

### 3. 检查性能
- 打开 Chrome DevTools
- 进入 Network 标签
- 刷新页面查看加载时间
- 进入 Performance 标签录制性能

### 4. 检查SEO
- 查看页面源代码（`Ctrl+U`）
- 搜索 "og:" 查看 Open Graph 标签
- 搜索 "application/ld+json" 查看结构化数据

---

## 快速测试脚本

创建一个测试文件 `test.php`：

```php
<?php
echo "PHP版本: " . PHP_VERSION . "<br>";
echo "服务器运行正常！<br>";
echo "当前时间: " . date('Y-m-d H:i:s');
?>
```

访问 `http://localhost:8000/test.php` 测试PHP是否正常工作。

---

## 常见问题

### Q: PHP命令找不到？
**A:** 
- Windows: 需要将PHP添加到系统PATH，或使用完整路径
- Mac: 使用 `php -v` 检查是否安装
- Linux: `sudo apt install php` 或 `sudo yum install php`

### Q: 页面显示空白？
**A:** 
- 检查PHP错误日志
- 确保 `config/database.php` 配置正确
- 检查文件权限

### Q: 样式和JS不加载？
**A:** 
- 检查 `static` 文件夹路径是否正确
- 查看浏览器控制台错误信息
- 确保所有CSS/JS文件存在

---

## 推荐工具

1. **本地开发**：PHP内置服务器（最简单）
2. **在线预览**：ngrok（将本地服务器暴露到公网）
   ```bash
   ngrok http 8000
   ```
   会生成一个临时公网链接

3. **性能测试**：
   - Google PageSpeed Insights
   - GTmetrix
   - WebPageTest

---

**现在就开始预览吧！** 🚀


