# spring-mybatis-generator

##### mybatis generator로 생성하는 방법

###### 1. Eclipse에서 Mybatis Generator plugin 설치
<div>
  <img width="500" src="https://user-images.githubusercontent.com/42959261/48535361-6d650e80-e8ee-11e8-80fa-577d2b616386.JPG">
</div>

###### 2. generatorConfig.xml파일을 생성할 위치에 마우스 오른쪽 클릭 후 
######    New > MyBatis > MyBatis Generator Configuration File 생성
<div>
  <img width="500" src="https://user-images.githubusercontent.com/42959261/48535369-7655e000-e8ee-11e8-9c34-01597086c812.JPG">
</div>

###### 3. generatorConfiguration.xml에 환경에 맞게 설정
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE generatorConfiguration PUBLIC "-//mybatis.org//DTD MyBatis Generator Configuration 1.0//EN" "http://mybatis.org/dtd/mybatis-generator-config_1_0.dtd">
<generatorConfiguration>
  <context id="context1">
  
    <jdbcConnection connectionURL="jdbc:mysql://localhost:3306/topcredue?autoreconnect=true" driverClass="com.mysql.jdbc.Driver" password="elin0827" userId="root" />
    <!-- com.example.demo.model 디렉토리 안에 java model 파일 -->
    <javaModelGenerator targetPackage="com.example.demo.model" targetProject="spring-mybatis-generator\src\main\java" />
    
    <!-- com.example.demo.mapper 디렉토리 안에 xml mapper 파일 -->
    <sqlMapGenerator targetPackage="com.example.demo.mapper" targetProject="spring-mybatis-generator\src\main\resources" />
    
    <!-- com.example.demo.mapper 디렉토리 안에 java mapper 파일 -->
    <javaClientGenerator targetPackage="com.example.demo.mapper" targetProject="spring-mybatis-generator\src\main\java" type="XMLMAPPER" />
    
    <table schema="emp" tableName="emp">
      <!--  <columnOverride column="empno" property="empno" /> -->
    </table>
    <table schema="member" tableName="member"/>
  
  </context>
</generatorConfiguration>
```

<img width="250" src="https://user-images.githubusercontent.com/42959261/48535678-72768d80-e8ef-11e8-857a-b08fd1c198ea.JPG">

###### Run As > Run MyBatis Generator 클릭해서 실행
<img https://user-images.githubusercontent.com/42959261/48535680-74405100-e8ef-11e8-9f6f-b30ffe8b0686.png>
