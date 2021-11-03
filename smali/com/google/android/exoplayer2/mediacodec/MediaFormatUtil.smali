.class public final Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;
.super Ljava/lang/Object;
.source "MediaFormatUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .locals 0
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 90
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public static maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/video/ColorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "color-transfer"

    .line 103
    iget v1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "color-standard"

    .line 104
    iget v1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "color-range"

    .line 105
    iget v1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "hdr-static-info"

    .line 106
    iget-object p1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public static maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public static maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
