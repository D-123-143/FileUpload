<%-- 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body bgcolor="cyan">
    <h2>Hello World!</h2>

    <form action="FileUpload" method="post" enctype="multipart/form-data">
        <h5>Select file to upload:</h5> <br>
        <input type="file" name="file" multiple /> <br><br>
        <input type="submit" value="Upload File" /> <br>
    </form>
</body>
</html>
  --%>
  
  
  
  
 <!--  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secure File Upload | Professional</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            width: 100%;
            max-width: 850px;
            background: white;
            border-radius: 18px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.12);
            overflow: hidden;
            animation: fadeIn 0.6s ease-out;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .header {
            background: linear-gradient(135deg, #4b6cb7 0%, #182848 100%);
            color: white;
            padding: 30px 40px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .header::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 60%);
            transform: rotate(30deg);
        }
        
        .header h1 {
            font-weight: 700;
            font-size: 32px;
            margin-bottom: 8px;
            letter-spacing: 0.5px;
            position: relative;
        }
        
        .header p {
            opacity: 0.9;
            font-size: 17px;
            max-width: 500px;
            margin: 0 auto;
            position: relative;
        }
        
        .content {
            padding: 40px;
        }
        
        .upload-container {
            border: 2.5px dashed #d1d8e0;
            border-radius: 12px;
            padding: 50px 30px;
            text-align: center;
            margin-bottom: 30px;
            transition: all 0.4s ease;
            background: #f9fbfd;
            position: relative;
            overflow: hidden;
        }
        
        .upload-container::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, #4b6cb7, #182848);
            transform: translateX(-100%);
            transition: transform 0.6s ease;
        }
        
        .upload-container:hover::after {
            transform: translateX(0);
        }
        
        .upload-container:hover {
            border-color: #4b6cb7;
            background: #f1f7ff;
            transform: translateY(-5px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.07);
        }
        
        .upload-icon {
            display: inline-block;
            position: relative;
            margin-bottom: 20px;
        }
        
        .upload-icon i {
            font-size: 60px;
            color: #4b6cb7;
            z-index: 2;
            position: relative;
        }
        
        .upload-icon::after {
            content: '';
            position: absolute;
            width: 80px;
            height: 80px;
            background: rgba(75, 108, 183, 0.1);
            border-radius: 50%;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1;
        }
        
        .upload-container h3 {
            color: #2d3748;
            margin-bottom: 12px;
            font-weight: 600;
            font-size: 24px;
        }
        
        .upload-container p {
            color: #718096;
            margin-bottom: 25px;
            font-size: 16px;
            max-width: 500px;
            margin-left: auto;
            margin-right: auto;
        }
        
        .file-input-wrapper {
            position: relative;
            overflow: hidden;
            display: inline-block;
            cursor: pointer;
            margin-bottom: 20px;
        }
        
        .file-input-wrapper input[type=file] {
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
            cursor: pointer;
            width: 100%;
            height: 100%;
        }
        
        .browse-btn {
            background: linear-gradient(135deg, #4b6cb7 0%, #182848 100%);
            color: white;
            padding: 14px 32px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(75, 108, 183, 0.3);
        }
        
        .browse-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 7px 20px rgba(75, 108, 183, 0.4);
        }
        
        .browse-btn:active {
            transform: translateY(1px);
        }
        
        .browse-btn i {
            margin-right: 10px;
            font-size: 18px;
        }
        
        .file-info {
            margin-top: 30px;
            padding: 25px;
            background: linear-gradient(to right, #f1f7ff, #f9fbfd);
            border-radius: 12px;
            text-align: left;
            border-left: 4px solid #4b6cb7;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.03);
        }
        
        .file-info h4 {
            color: #2d3748;
            margin-bottom: 16px;
            font-weight: 700;
            font-size: 20px;
            display: flex;
            align-items: center;
        }
        
        .file-info h4 i {
            color: #4b6cb7;
            margin-right: 12px;
            font-size: 22px;
        }
        
        .file-info ul {
            list-style-type: none;
            padding-left: 10px;
        }
        
        .file-info li {
            margin-bottom: 12px;
            display: flex;
            align-items: center;
            padding: 8px 0;
            border-bottom: 1px dashed #e2e8f0;
        }
        
        .file-info li:last-child {
            border-bottom: none;
        }
        
        .file-info li i {
            color: #4b6cb7;
            margin-right: 15px;
            font-size: 16px;
            width: 24px;
            text-align: center;
        }
        
        .upload-btn {
            background: linear-gradient(135deg, #4b6cb7 0%, #182848 100%);
            color: white;
            border: none;
            padding: 18px 35px;
            width: 100%;
            border-radius: 10px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.4s ease;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0 5px 20px rgba(75, 108, 183, 0.35);
            position: relative;
            overflow: hidden;
        }
        
        .upload-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transform: translateX(-100%);
        }
        
        .upload-btn:hover::before {
            animation: shimmer 1.5s infinite;
        }
        
        @keyframes shimmer {
            100% {
                transform: translateX(100%);
            }
        }
        
        .upload-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(75, 108, 183, 0.5);
        }
        
        .upload-btn:active {
            transform: translateY(1px);
        }
        
        .upload-btn i {
            margin-right: 12px;
            font-size: 20px;
        }
        
        .footer {
            text-align: center;
            padding: 25px;
            color: #718096;
            font-size: 15px;
            border-top: 1px solid #eaeaea;
            background: #f8fafc;
        }
        
        .security-note {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
        }
        
        .security-note i {
            color: #4b6cb7;
            margin-right: 8px;
        }
        
        @media (max-width: 700px) {
            .content {
                padding: 25px;
            }
            
            .upload-container {
                padding: 30px 20px;
            }
            
            .header {
                padding: 25px 20px;
            }
            
            .header h1 {
                font-size: 26px;
            }
            
            .upload-container h3 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1><i class="fas fa-lock"></i> Secure File Upload</h1>
            <p>Transfer your files with enterprise-grade encryption and security</p>
        </div>
        
        <div class="content">
            <form action="FileUpload" method="post" enctype="multipart/form-data">
                <div class="upload-container">
                    <div class="upload-icon">
                        <i class="fas fa-cloud-upload-alt"></i>
                    </div>
                    <h3>Select Files to Upload</h3>
                    <p>Drag & drop your files here or click the button below. Maximum file size: 100MB. Multiple files allowed.</p>
                    
                    <div class="file-input-wrapper">
                        <div class="browse-btn">
                            <i class="fas fa-folder-open"></i> Browse Files
                        </div>
                        <input type="file" name="file" multiple>
                    </div>
                    
                    <div class="file-info">
                        <h4><i class="fas fa-info-circle"></i> Upload Guidelines</h4>
                        <ul>
                            <li><i class="fas fa-check"></i> All file types are supported</li>
                            <li><i class="fas fa-check"></i> Maximum file size: 100MB each</li>
                            <li><i class="fas fa-check"></i> You can select multiple files at once</li>
                            <li><i class="fas fa-check"></i> Files are encrypted during transfer</li>
                            <li><i class="fas fa-check"></i> Your files will be processed securely</li>
                        </ul>
                    </div>
                </div>
                
                <button type="submit" class="upload-btn">
                    <i class="fas fa-upload"></i> Upload Files
                </button>
            </form>
        </div>
        
        <div class="footer">
            <p>© 2023 Professional File Upload System | Secure & Reliable</p>
            <div class="security-note">
                <i class="fas fa-shield-alt"></i>
                <span>256-bit SSL Encryption | GDPR Compliant</span>
            </div>
        </div>
    </div>
</body>
</html> -->







<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secure File Upload | Professional</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            width: 100%;
            max-width: 850px;
            background: white;
            border-radius: 18px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.12);
            overflow: hidden;
            animation: fadeIn 0.6s ease-out;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .header {
            background: linear-gradient(135deg, #4b6cb7 0%, #182848 100%);
            color: white;
            padding: 30px 40px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .header::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 60%);
            transform: rotate(30deg);
        }
        
        .header h1 {
            font-weight: 700;
            font-size: 32px;
            margin-bottom: 8px;
            letter-spacing: 0.5px;
            position: relative;
        }
        
        .header p {
            opacity: 0.9;
            font-size: 17px;
            max-width: 500px;
            margin: 0 auto;
            position: relative;
        }
        
        .content {
            padding: 40px;
        }
        
        .upload-container {
            border: 2.5px dashed #d1d8e0;
            border-radius: 12px;
            padding: 50px 30px;
            text-align: center;
            margin-bottom: 30px;
            transition: all 0.4s ease;
            background: #f9fbfd;
            position: relative;
            overflow: hidden;
        }
        
        .upload-container.active {
            border-color: #4b6cb7;
            background: #f1f7ff;
            transform: translateY(-5px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.07);
        }
        
        .upload-container::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, #4b6cb7, #182848);
            transform: translateX(-100%);
            transition: transform 0.6s ease;
        }
        
        .upload-container:hover::after {
            transform: translateX(0);
        }
        
        .upload-icon {
            display: inline-block;
            position: relative;
            margin-bottom: 20px;
        }
        
        .upload-icon i {
            font-size: 60px;
            color: #4b6cb7;
            z-index: 2;
            position: relative;
        }
        
        .upload-icon::after {
            content: '';
            position: absolute;
            width: 80px;
            height: 80px;
            background: rgba(75, 108, 183, 0.1);
            border-radius: 50%;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1;
        }
        
        .upload-container h3 {
            color: #2d3748;
            margin-bottom: 12px;
            font-weight: 600;
            font-size: 24px;
        }
        
        .upload-container p {
            color: #718096;
            margin-bottom: 25px;
            font-size: 16px;
            max-width: 500px;
            margin-left: auto;
            margin-right: auto;
        }
        
        .file-input-wrapper {
            position: relative;
            overflow: hidden;
            display: inline-block;
            cursor: pointer;
            margin-bottom: 20px;
        }
        
        .file-input-wrapper input[type=file] {
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
            cursor: pointer;
            width: 100%;
            height: 100%;
        }
        
        .browse-btn {
            background: linear-gradient(135deg, #4b6cb7 0%, #182848 100%);
            color: white;
            padding: 14px 32px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(75, 108, 183, 0.3);
        }
        
        .browse-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 7px 20px rgba(75, 108, 183, 0.4);
        }
        
        .browse-btn:active {
            transform: translateY(1px);
        }
        
        .browse-btn i {
            margin-right: 10px;
            font-size: 18px;
        }
        
        .file-info {
            margin-top: 30px;
            padding: 25px;
            background: linear-gradient(to right, #f1f7ff, #f9fbfd);
            border-radius: 12px;
            text-align: left;
            border-left: 4px solid #4b6cb7;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.03);
        }
        
        .file-info h4 {
            color: #2d3748;
            margin-bottom: 16px;
            font-weight: 700;
            font-size: 20px;
            display: flex;
            align-items: center;
        }
        
        .file-info h4 i {
            color: #4b6cb7;
            margin-right: 12px;
            font-size: 22px;
        }
        
        .file-info ul {
            list-style-type: none;
            padding-left: 10px;
        }
        
        .file-info li {
            margin-bottom: 12px;
            display: flex;
            align-items: center;
            padding: 8px 0;
            border-bottom: 1px dashed #e2e8f0;
        }
        
        .file-info li:last-child {
            border-bottom: none;
        }
        
        .file-info li i {
            color: #4b6cb7;
            margin-right: 15px;
            font-size: 16px;
            width: 24px;
            text-align: center;
        }
        
        .upload-btn {
            background: linear-gradient(135deg, #4b6cb7 0%, #182848 100%);
            color: white;
            border: none;
            padding: 18px 35px;
            width: 100%;
            border-radius: 10px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.4s ease;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0 5px 20px rgba(75, 108, 183, 0.35);
            position: relative;
            overflow: hidden;
        }
        
        .upload-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transform: translateX(-100%);
        }
        
        .upload-btn:hover::before {
            animation: shimmer 1.5s infinite;
        }
        
        @keyframes shimmer {
            100% {
                transform: translateX(100%);
            }
        }
        
        .upload-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(75, 108, 183, 0.5);
        }
        
        .upload-btn:active {
            transform: translateY(1px);
        }
        
        .upload-btn i {
            margin-right: 12px;
            font-size: 20px;
        }
        
        .footer {
            text-align: center;
            padding: 25px;
            color: #718096;
            font-size: 15px;
            border-top: 1px solid #eaeaea;
            background: #f8fafc;
        }
        
        .security-note {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
        }
        
        .security-note i {
            color: #4b6cb7;
            margin-right: 8px;
        }
        
        /* New styles for file list and messages */
        .file-list {
            margin: 20px 0;
            max-height: 200px;
            overflow-y: auto;
            text-align: left;
            border: 1px solid #e2e8f0;
            border-radius: 8px;
            padding: 15px;
            background: white;
        }
        
        .file-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            border-bottom: 1px solid #f1f1f1;
        }
        
        .file-item:last-child {
            border-bottom: none;
        }
        
        .file-name {
            display: flex;
            align-items: center;
        }
        
        .file-name i {
            margin-right: 10px;
            color: #4b6cb7;
        }
        
        .file-size {
            color: #718096;
            font-size: 14px;
        }
        
        .message {
            padding: 15px;
            border-radius: 8px;
            margin: 20px 0;
            display: flex;
            align-items: center;
            animation: fadeIn 0.5s;
        }
        
        .error {
            background-color: #ffebee;
            color: #c62828;
            border: 1px solid #ffcdd2;
        }
        
        .success {
            background-color: #e8f5e9;
            color: #2e7d32;
            border: 1px solid #c8e6c9;
        }
        
        .message i {
            margin-right: 10px;
            font-size: 20px;
        }
        
        .file-count {
            text-align: center;
            margin: 15px 0;
            font-weight: 600;
            color: #4b6cb7;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .file-count i {
            margin-right: 10px;
        }
        
        .countdown {
            display: inline-block;
            margin-left: 10px;
            font-weight: bold;
            min-width: 25px;
        }
        
        @media (max-width: 700px) {
            .content {
                padding: 25px;
            }
            
            .upload-container {
                padding: 30px 20px;
            }
            
            .header {
                padding: 25px 20px;
            }
            
            .header h1 {
                font-size: 26px;
            }
            
            .upload-container h3 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1><i class="fas fa-lock"></i> Secure File Upload</h1>
            <p>Transfer your files with enterprise-grade encryption and security</p>
        </div>
        
        <div class="content">
            <form id="uploadForm" action="FileUpload" method="post" enctype="multipart/form-data">
                <div class="upload-container" id="dropZone">
                    <div class="upload-icon">
                        <i class="fas fa-cloud-upload-alt"></i>
                    </div>
                    <h3>Select Files to Upload</h3>
                    <p>Drag & drop your files here or click the button below. Maximum file size: 100MB. Multiple files allowed.</p>
                    
                    <div class="file-input-wrapper">
                        <div class="browse-btn">
                            <i class="fas fa-folder-open"></i> Browse Files
                        </div>
                        <input type="file" id="fileInput" name="file" multiple>
                    </div>
                    
                    <div id="fileCount" class="file-count" style="display: none;">
                        <i class="fas fa-file"></i> <span id="count">0</span> files selected
                    </div>
                    
                    <div id="fileList" class="file-list" style="display: none;"></div>
                    
                    <div id="errorMessage" class="message error" style="display: none;">
                        <i class="fas fa-exclamation-circle"></i> <span id="errorText"></span>
                    </div>
                    
                    <div id="successMessage" class="message success" style="display: none;">
                        <i class="fas fa-check-circle"></i> 
                        <span id="successText">Files uploaded successfully! Refreshing in <span class="countdown">5</span> seconds...</span>
                    </div>
                    
                    <div class="file-info">
                        <h4><i class="fas fa-info-circle"></i> Upload Guidelines</h4>
                        <ul>
                            <li><i class="fas fa-check"></i> All file types are supported</li>
                            <li><i class="fas fa-check"></i> Maximum file size: 100MB each</li>
                            <li><i class="fas fa-check"></i> You can select multiple files at once</li>
                            <li><i class="fas fa-check"></i> Files are encrypted during transfer</li>
                            <li><i class="fas fa-check"></i> Your files will be processed securely</li>
                        </ul>
                    </div>
                </div>
                
                <button type="submit" class="upload-btn">
                    <i class="fas fa-upload"></i> Upload Files
                </button>
            </form>
        </div>
        
        <div class="footer">
            <p>© 2023 Professional File Upload System | Secure & Reliable</p>
            <div class="security-note">
                <i class="fas fa-shield-alt"></i>
                <span>256-bit SSL Encryption | GDPR Compliant</span>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const fileInput = document.getElementById('fileInput');
            const dropZone = document.getElementById('dropZone');
            const fileList = document.getElementById('fileList');
            const fileCount = document.getElementById('fileCount');
            const countElement = document.getElementById('count');
            const errorMessage = document.getElementById('errorMessage');
            const errorText = document.getElementById('errorText');
            const successMessage = document.getElementById('successMessage');
            const successText = document.getElementById('successText');
            const uploadForm = document.getElementById('uploadForm');
            let countdownInterval;
            
            // Handle file selection
            fileInput.addEventListener('change', function() {
                handleFiles(this.files);
            });
            
            // Drag and drop functionality
            dropZone.addEventListener('dragover', function(e) {
                e.preventDefault();
                this.classList.add('active');
            });
            
            dropZone.addEventListener('dragleave', function() {
                this.classList.remove('active');
            });
            
            dropZone.addEventListener('drop', function(e) {
                e.preventDefault();
                this.classList.remove('active');
                if (e.dataTransfer.files.length) {
                    fileInput.files = e.dataTransfer.files;
                    handleFiles(e.dataTransfer.files);
                }
            });
            
            // Form submission validation
            uploadForm.addEventListener('submit', function(e) {
                if (!fileInput.files || fileInput.files.length === 0) {
                    e.preventDefault();
                    showError('Please select at least one file to upload.');
                    return false;
                }
                
                // In a real application, you would allow the form to submit to the server
                // For this demo, we'll simulate a successful upload
                e.preventDefault();
                simulateUpload();
            });
            
            // Function to handle selected files
            function handleFiles(files) {
                if (!files || files.length === 0) return;
                
                // Clear previous messages
                hideMessages();
                
                // Update file count
                countElement.textContent = files.length;
                fileCount.style.display = 'flex';
                
                // Display file list
                fileList.innerHTML = '';
                fileList.style.display = 'block';
                
                for (let i = 0; i < files.length; i++) {
                    const file = files[i];
                    const fileItem = document.createElement('div');
                    fileItem.className = 'file-item';
                    
                    const fileName = document.createElement('div');
                    fileName.className = 'file-name';
                    
                    // Choose icon based on file type
                    let iconClass = 'fas fa-file';
                    if (file.type.includes('image')) iconClass = 'fas fa-file-image';
                    else if (file.type.includes('audio')) iconClass = 'fas fa-file-audio';
                    else if (file.type.includes('video')) iconClass = 'fas fa-file-video';
                    else if (file.type.includes('pdf')) iconClass = 'fas fa-file-pdf';
                    else if (file.type.includes('zip')) iconClass = 'fas fa-file-archive';
                    else if (file.type.includes('text')) iconClass = 'fas fa-file-alt';
                    
                    fileName.innerHTML = `<i class="${iconClass}"></i> ${file.name}`;
                    
                    const fileSize = document.createElement('div');
                    fileSize.className = 'file-size';
                    fileSize.textContent = formatFileSize(file.size);
                    
                    fileItem.appendChild(fileName);
                    fileItem.appendChild(fileSize);
                    fileList.appendChild(fileItem);
                }
            }
            
            // Format file size to human readable format
            function formatFileSize(bytes) {
                if (bytes === 0) return '0 Bytes';
                const k = 1024;
                const sizes = ['Bytes', 'KB', 'MB', 'GB'];
                const i = Math.floor(Math.log(bytes) / Math.log(k));
                return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
            }
            
            // Show error message
            function showError(message) {
                errorText.textContent = message;
                errorMessage.style.display = 'flex';
                successMessage.style.display = 'none';
                
                // Scroll to error message
                errorMessage.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
            
            // Show success message and start countdown
            function showSuccess() {
                errorMessage.style.display = 'none';
                successMessage.style.display = 'flex';
                
                // Start countdown for refresh
                startCountdown();
                
                // Scroll to success message
                successMessage.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
            
            // Hide all messages
            function hideMessages() {
                errorMessage.style.display = 'none';
                successMessage.style.display = 'none';
            }
            
            // Start countdown timer for refresh
            function startCountdown() {
                let seconds = 5;
                const countdownElement = document.querySelector('.countdown');
                countdownElement.textContent = seconds;
                
                // Clear any existing interval
                if (countdownInterval) clearInterval(countdownInterval);
                
                countdownInterval = setInterval(function() {
                    seconds--;
                    countdownElement.textContent = seconds;
                    
                    if (seconds <= 0) {
                        clearInterval(countdownInterval);
                        refreshPage();
                    }
                }, 1000);
            }
            
            // Refresh the page
            function refreshPage() {
                window.location.reload();
            }
            
            // Simulate upload for demo purposes
            function simulateUpload() {
                // Show loading state
                const uploadBtn = document.querySelector('.upload-btn');
                const originalText = uploadBtn.innerHTML;
                uploadBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Uploading...';
                uploadBtn.disabled = true;
                
                // Simulate server request with delay
                setTimeout(function() {
                    // Show success message and start countdown
                    showSuccess();
                    
                    // Reset button
                    uploadBtn.innerHTML = originalText;
                    uploadBtn.disabled = false;
                }, 2000);
            }
        });
    </script>
</body>
</html>