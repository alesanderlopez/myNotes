# Universal image loader

## Gradle
compile 'com.squareup.picasso:picasso:2.5.2'

```java
Picasso.with(context)
        .load(urlImage)
        .placeholder(R.drawable.artist_placeholder)
        .into(image);
```
