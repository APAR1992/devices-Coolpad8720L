.class Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;
.super Lcom/android/gallery3d/ui/BitmapLoader;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private final mItem:Lcom/android/gallery3d/data/MediaItem;

.field private final mSlotIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "slotIndex"
    .parameter "item"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapLoader;-><init>()V

    .line 393
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    .line 394
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 395
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 412
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 399
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    .line 400
    .local v0, pool:Lcom/android/gallery3d/data/BitmapPool;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 401
    :cond_0
    return-void
.end method

.method protected submitBitmapTask(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, l:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/gallery3d/data/MediaItem;->requestImage(IIZ)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/util/JobLimiter;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method protected submitBitmapTask(Lcom/android/gallery3d/util/FutureListener;Z)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter
    .parameter "isLocalAlbum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, l:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateEntry()V
    .locals 5

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 416
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v1, v2, v3

    .line 422
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 424
    iget-object v2, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iput-object v2, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    .line 436
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v2

    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 438
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$606(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    .line 439
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$600(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #calls: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$700(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)V

    .line 440
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 442
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v2

    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto :goto_0
.end method
