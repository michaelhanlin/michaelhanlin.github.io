
## 如何上传图片并显示？

第一步，登录 http://github.com

第二步，在 [source/images 这个页面](https://github.com/michaelhanlin/michaelhanlin.github.io/tree/src/source/images) 使用`Upload file`按钮上面上传图片，图片的文件名需要按YYYY.mm.dd-name来命名，比如：

    2013.07.30-fish.png
    2013.05.01-violin-and-flowers.png

第三步，在 [source/_posts 这个页面](https://github.com/michaelhanlin/michaelhanlin.github.io/tree/src/source/_posts) 使用`Create new file`来创建新的文件，文件名规则同图片等命名规则，但是扩展名为必须为 `.md`，比如：

    2013.07.30-fish.md
    2013.05.01-violin-and-flowers.md
    
文件的内容使用下面的格式：

    ---
    title: 採摘的蘋果
    cover_image: images/2013.09.24-apple.png
    ---

    《採摘的蘋果》900cm x 700cm布面油畫 2013年9月 作於撫順


`title` 是要显示的图片标题，`cover_image` 是要显示的图片的路径。在下面可以有更多的关于图片的描述。


第四步，等待10分钟后刷新 [michaelhanlin.github.io](https://michaelhanlin.github.io)，新上传的图片就应该能显示出来了。

