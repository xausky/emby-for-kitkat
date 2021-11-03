.class Ltv/emby/embyatv/playback/SubtitleHelper$1;
.super Lmediabrowser/apiinteraction/Response;
.source "SubtitleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/SubtitleHelper;->downloadSubtitles(Lmediabrowser/model/entities/MediaStream;Ljava/io/File;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/apiinteraction/ResponseStreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/SubtitleHelper;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/SubtitleHelper;Lmediabrowser/apiinteraction/IResponse;Ljava/io/File;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 53
    iput-object p1, p0, Ltv/emby/embyatv/playback/SubtitleHelper$1;->this$0:Ltv/emby/embyatv/playback/SubtitleHelper;

    iput-object p3, p0, Ltv/emby/embyatv/playback/SubtitleHelper$1;->val$file:Ljava/io/File;

    iput-object p4, p0, Ltv/emby/embyatv/playback/SubtitleHelper$1;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lmediabrowser/apiinteraction/ResponseStreamInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/SubtitleHelper$1;->onResponse(Lmediabrowser/apiinteraction/ResponseStreamInfo;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ResponseStreamInfo;)V
    .locals 4

    .line 57
    iget-object p1, p1, Lmediabrowser/apiinteraction/ResponseStreamInfo;->Stream:Ljava/io/InputStream;

    .line 60
    :try_start_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/SubtitleHelper$1;->val$file:Ljava/io/File;

    invoke-static {v0}, Lcom/google/common/io/Files;->createParentDirs(Ljava/io/File;)V

    .line 61
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Ltv/emby/embyatv/playback/SubtitleHelper$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x2000

    .line 64
    :try_start_1
    new-array v1, v1, [B

    .line 66
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 67
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/SubtitleHelper$1;->val$response:Lmediabrowser/apiinteraction/Response;

    iget-object v0, p0, Ltv/emby/embyatv/playback/SubtitleHelper$1;->val$file:Ljava/io/File;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 71
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 72
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 75
    :try_start_5
    iget-object v1, p0, Ltv/emby/embyatv/playback/SubtitleHelper$1;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v1, v0}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 80
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void

    .line 80
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    :goto_4
    throw v0
.end method
