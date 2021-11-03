.class public final synthetic Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;
.super Ljava/lang/Object;
.source "ContentMetadata.java"


# direct methods
.method public static getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J
    .locals 3

    const-string v0, "exo_len"

    const-wide/16 v1, -0x1

    .line 75
    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)Landroid/net/Uri;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "exo_redir"

    const/4 v1, 0x0

    .line 84
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1
.end method
