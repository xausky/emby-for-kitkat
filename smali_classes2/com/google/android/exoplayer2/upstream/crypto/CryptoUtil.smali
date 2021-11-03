.class final Lcom/google/android/exoplayer2/upstream/crypto/CryptoUtil;
.super Ljava/lang/Object;
.source "CryptoUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFNV64Hash(Ljava/lang/String;)J
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 39
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const/4 v3, 0x1

    shl-long v3, v0, v3

    const/4 v5, 0x4

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/4 v5, 0x5

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/4 v5, 0x7

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0x8

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0x28

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method
