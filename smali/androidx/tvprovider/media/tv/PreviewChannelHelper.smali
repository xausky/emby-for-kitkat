.class public Landroidx/tvprovider/media/tv/PreviewChannelHelper;
.super Ljava/lang/Object;
.source "PreviewChannelHelper.java"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# static fields
.field private static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x2710

.field private static final DEFAULT_URL_CONNNECTION_TIMEOUT_MILLIS:I = 0xbb8

.field private static final INVALID_CONTENT_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PreviewChannelHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUrlConnectionTimeoutMillis:I

.field private final mUrlReadTimeoutMillis:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0xbb8

    const/16 v1, 0x2710

    .line 76
    invoke-direct {p0, p1, v0, v1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    .line 86
    iput p2, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mUrlConnectionTimeoutMillis:I

    .line 87
    iput p3, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mUrlReadTimeoutMillis:I

    return-void
.end method

.method private addChannelLogo(JLandroidx/tvprovider/media/tv/PreviewChannel;)Z
    .locals 6
    .param p3    # Landroidx/tvprovider/media/tv/PreviewChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 265
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->isLogoChanged()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 268
    :cond_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Landroidx/tvprovider/media/tv/PreviewChannel;->getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->getLogoUri()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p3}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->getLogoFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    :cond_1
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelLogoUri(J)Landroid/net/Uri;

    move-result-object p3

    .line 273
    :try_start_0
    iget-object v2, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x0

    .line 275
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    :try_start_2
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_4

    .line 277
    :try_start_3
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v1

    move v1, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 273
    :goto_0
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    if-eqz p3, :cond_3

    if-eqz v2, :cond_2

    .line 277
    :try_start_5
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_3
    move-exception p3

    :try_start_6
    invoke-virtual {v2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_3
    :goto_2
    throw v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception p3

    move v0, v1

    goto :goto_3

    :catch_5
    move-exception p3

    const/4 v0, 0x0

    :goto_3
    const-string v1, "PreviewChannelHelper"

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add logo to the published channel (ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    return v0
.end method

.method private getLogoFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 290
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.resource"

    .line 295
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file"

    .line 296
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "content"

    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->downloadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 299
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 310
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    const-string v3, "PreviewChannelHelper"

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get logo from the URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_2

    .line 310
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    :goto_3
    return-object v1

    :catchall_2
    move-exception p1

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 313
    :catch_3
    :cond_3
    throw p1
.end method


# virtual methods
.method public deletePreviewChannel(J)V
    .locals 1

    .line 353
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 353
    invoke-virtual {v0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deletePreviewProgram(J)V
    .locals 1

    .line 418
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 419
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildPreviewProgramUri(J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 418
    invoke-virtual {v0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method protected downloadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 330
    :try_start_1
    iget v1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mUrlConnectionTimeoutMillis:I

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 331
    iget v1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mUrlReadTimeoutMillis:I

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 332
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    :try_start_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 337
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 342
    :catch_0
    :cond_0
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 343
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v1, p1

    move-object p1, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 337
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 342
    :catch_1
    :cond_2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    .line 343
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v1
.end method

.method public getAllChannels()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/tvprovider/media/tv/PreviewChannel;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroidx/tvprovider/media/tv/TvContractCompat$Channels;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroidx/tvprovider/media/tv/PreviewChannel$Columns;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 180
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    invoke-static {v0}, Landroidx/tvprovider/media/tv/PreviewChannel;->fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/PreviewChannel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return-object v1
.end method

.method public getPreviewChannel(J)Landroidx/tvprovider/media/tv/PreviewChannel;
    .locals 6

    .line 205
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 206
    iget-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroidx/tvprovider/media/tv/PreviewChannel$Columns;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 207
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 209
    invoke-static {p1}, Landroidx/tvprovider/media/tv/PreviewChannel;->fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/PreviewChannel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPreviewProgram(J)Landroidx/tvprovider/media/tv/PreviewProgram;
    .locals 6

    .line 381
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildPreviewProgramUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 382
    iget-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 383
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 384
    invoke-static {p1}, Landroidx/tvprovider/media/tv/PreviewProgram;->fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/PreviewProgram;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getWatchNextProgram(J)Landroidx/tvprovider/media/tv/WatchNextProgram;
    .locals 6

    .line 442
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildWatchNextProgramUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 443
    iget-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 444
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 445
    invoke-static {p1}, Landroidx/tvprovider/media/tv/WatchNextProgram;->fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/WatchNextProgram;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public publishChannel(Landroidx/tvprovider/media/tv/PreviewChannel;)J
    .locals 4
    .param p1    # Landroidx/tvprovider/media/tv/PreviewChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroidx/tvprovider/media/tv/TvContractCompat$Channels;->CONTENT_URI:Landroid/net/Uri;

    .line 127
    invoke-virtual {p1}, Landroidx/tvprovider/media/tv/PreviewChannel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 132
    invoke-direct {p0, v0, v1, p1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->addChannelLogo(JLandroidx/tvprovider/media/tv/PreviewChannel;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-wide v0

    .line 135
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->deletePreviewChannel(J)V

    .line 136
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add logo, so channel (ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") was not created"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Channel insertion failed"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "PreviewChannelHelper"

    const-string v1, "Your app\'s ability to insert data into the TvProvider may have been revoked."

    .line 141
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public publishDefaultChannel(Landroidx/tvprovider/media/tv/PreviewChannel;)J
    .locals 2
    .param p1    # Landroidx/tvprovider/media/tv/PreviewChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->publishChannel(Landroidx/tvprovider/media/tv/PreviewChannel;)J

    move-result-wide v0

    .line 169
    iget-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Landroidx/tvprovider/media/tv/TvContractCompat;->requestChannelBrowsable(Landroid/content/Context;J)V

    return-wide v0
.end method

.method public publishPreviewProgram(Landroidx/tvprovider/media/tv/PreviewProgram;)J
    .locals 2
    .param p1    # Landroidx/tvprovider/media/tv/PreviewProgram;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 364
    :try_start_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroidx/tvprovider/media/tv/TvContractCompat$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    .line 366
    invoke-virtual {p1}, Landroidx/tvprovider/media/tv/PreviewProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    .line 364
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 367
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    const-string v0, "PreviewChannelHelper"

    const-string v1, "Your app\'s ability to insert data into the TvProvider may have been revoked."

    .line 370
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public publishWatchNextProgram(Landroidx/tvprovider/media/tv/WatchNextProgram;)J
    .locals 2
    .param p1    # Landroidx/tvprovider/media/tv/WatchNextProgram;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 427
    :try_start_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    .line 428
    invoke-virtual {p1}, Landroidx/tvprovider/media/tv/WatchNextProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    .line 427
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 429
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    const-string v0, "PreviewChannelHelper"

    const-string v1, "Your app\'s ability to insert data into the TvProvider may have been revoked."

    .line 431
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public updatePreviewChannel(JLandroidx/tvprovider/media/tv/PreviewChannel;)V
    .locals 2
    .param p3    # Landroidx/tvprovider/media/tv/PreviewChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p1, p2}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->getPreviewChannel(J)Landroidx/tvprovider/media/tv/PreviewChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->hasAnyUpdatedValues(Landroidx/tvprovider/media/tv/PreviewChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2, p3}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->updatePreviewChannelInternal(JLandroidx/tvprovider/media/tv/PreviewChannel;)V

    .line 233
    :cond_0
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->isLogoChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->addChannelLogo(JLandroidx/tvprovider/media/tv/PreviewChannel;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to update channel (ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") logo."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    :goto_0
    return-void
.end method

.method protected updatePreviewChannelInternal(JLandroidx/tvprovider/media/tv/PreviewChannel;)V
    .locals 1
    .param p3    # Landroidx/tvprovider/media/tv/PreviewChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 250
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object p1

    .line 251
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->toContentValues()Landroid/content/ContentValues;

    move-result-object p2

    const/4 p3, 0x0

    .line 249
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updatePreviewProgram(JLandroidx/tvprovider/media/tv/PreviewProgram;)V
    .locals 1
    .param p3    # Landroidx/tvprovider/media/tv/PreviewProgram;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 395
    invoke-virtual {p0, p1, p2}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->getPreviewProgram(J)Landroidx/tvprovider/media/tv/PreviewProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p3}, Landroidx/tvprovider/media/tv/PreviewProgram;->hasAnyUpdatedValues(Landroidx/tvprovider/media/tv/PreviewProgram;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0, p1, p2, p3}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->updatePreviewProgramInternal(JLandroidx/tvprovider/media/tv/PreviewProgram;)V

    :cond_0
    return-void
.end method

.method updatePreviewProgramInternal(JLandroidx/tvprovider/media/tv/PreviewProgram;)V
    .locals 1
    .param p3    # Landroidx/tvprovider/media/tv/PreviewProgram;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildPreviewProgramUri(J)Landroid/net/Uri;

    move-result-object p1

    .line 411
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object p2

    const/4 p3, 0x0

    .line 409
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method updateWatchNextProgram(JLandroidx/tvprovider/media/tv/WatchNextProgram;)V
    .locals 1
    .param p3    # Landroidx/tvprovider/media/tv/WatchNextProgram;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 471
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildWatchNextProgramUri(J)Landroid/net/Uri;

    move-result-object p1

    .line 472
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/WatchNextProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object p2

    const/4 p3, 0x0

    .line 470
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateWatchNextProgram(Landroidx/tvprovider/media/tv/WatchNextProgram;J)V
    .locals 1
    .param p1    # Landroidx/tvprovider/media/tv/WatchNextProgram;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 456
    invoke-virtual {p0, p2, p3}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->getWatchNextProgram(J)Landroidx/tvprovider/media/tv/WatchNextProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0, p1}, Landroidx/tvprovider/media/tv/WatchNextProgram;->hasAnyUpdatedValues(Landroidx/tvprovider/media/tv/WatchNextProgram;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0, p2, p3, p1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->updateWatchNextProgram(JLandroidx/tvprovider/media/tv/WatchNextProgram;)V

    :cond_0
    return-void
.end method
