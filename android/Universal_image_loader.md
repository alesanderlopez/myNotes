# Universal image loader

## URL
https://github.com/nostra13/Android-Universal-Image-Loader

## Gradle
compile 'com.nostra13.universalimageloader:universal-image-loader:1.9.4'

```java
imageLoader.displayImage(imageUri, imageView, options, new ImageLoadingListener() {
    @Override
    public void onLoadingStarted(String imageUri, View view) {
        ...
    }
    @Override
    public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
        ...
    }
    @Override
    public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
        ...
    }
    @Override
    public void onLoadingCancelled(String imageUri, View view) {
        ...
    }
}, new ImageLoadingProgressListener() {
    @Override
    public void onProgressUpdate(String imageUri, View view, int current, int total) {
        ...
    }
});
```

```java
ImageLoader imageLoader = ImageLoader.getInstance();
Bitmap bmp = imageLoader.loadImageSync(urlImage);
image.setImageBitmap(bmp);                  
```