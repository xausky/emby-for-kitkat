.class Lfr/bmartel/youtubetv/JavascriptInterface$4;
.super Landroid/os/AsyncTask;
.source "JavascriptInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/JavascriptInterface;->updateMediaSession(Ljava/lang/String;ZIJFLjava/lang/String;Landroid/media/session/MediaSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

.field final synthetic val$mediaSession:Landroid/media/session/MediaSession;

.field final synthetic val$playbackState:I

.field final synthetic val$position:J

.field final synthetic val$rebuildMedia:Z

.field final synthetic val$speed:F

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/JavascriptInterface;ZLjava/lang/String;Landroid/media/session/MediaSession;IJF)V
    .locals 0

    .line 379
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    iput-boolean p2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$rebuildMedia:Z

    iput-object p3, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$mediaSession:Landroid/media/session/MediaSession;

    iput p5, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$playbackState:I

    iput-wide p6, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$position:J

    iput p8, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$speed:F

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 379
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfr/bmartel/youtubetv/JavascriptInterface$4;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10

    const/4 v0, 0x0

    .line 384
    aget-object v1, p1, v0

    iget-object v2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$600(Lfr/bmartel/youtubetv/JavascriptInterface;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->getThumbnailURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    :try_start_0
    aget-object p1, p1, v0

    iget-object v2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$600(Lfr/bmartel/youtubetv/JavascriptInterface;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->getThumbnailQuality(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 388
    iget-object v2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v2}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$700(Lfr/bmartel/youtubetv/JavascriptInterface;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getThumbnailQuality"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v1

    .line 394
    :goto_0
    iget-boolean v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$rebuildMedia:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 397
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 400
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$700(Lfr/bmartel/youtubetv/JavascriptInterface;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapFactory.decodeStream"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v2

    .line 403
    :goto_1
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v1, "android.media.metadata.TITLE"

    .line 404
    iget-object v3, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    if-eqz p1, :cond_0

    const-string v1, "android.media.metadata.ART"

    .line 406
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    :cond_0
    const/4 p1, 0x1

    move-object v4, v0

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    move-object v4, v2

    const/4 v3, 0x0

    .line 411
    :goto_2
    iget-object v5, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$mediaSession:Landroid/media/session/MediaSession;

    iget v6, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$playbackState:I

    iget-wide v7, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$position:J

    iget v9, p0, Lfr/bmartel/youtubetv/JavascriptInterface$4;->val$speed:F

    invoke-static/range {v3 .. v9}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->updateMediaSession(ZLandroid/media/MediaMetadata$Builder;Landroid/media/session/MediaSession;IJF)V

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 379
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfr/bmartel/youtubetv/JavascriptInterface$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 418
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
