# Retrofit

## Gradle
    compile 'com.squareup.retrofit:retrofit:1.9.0'

## Log
```java
.setLogLevel(RestAdapter.LogLevel.BASIC)
.setLogLevel(RestAdapter.LogLevel.FULL)
.setLogLevel(RestAdapter.LogLevel.HEADERS)
.setLogLevel(RestAdapter.LogLevel.NONE)

@Override
public void log(String message) { ... }

@Override 
public void intercept(RequestFacade request) {
 request.addHeader("Accept", "application/json");
 request.addHeader("Authorization", "token " + token());
} ​​

```
