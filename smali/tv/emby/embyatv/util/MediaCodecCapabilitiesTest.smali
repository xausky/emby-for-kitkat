.class public Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;
.super Ljava/lang/Object;
.source "MediaCodecCapabilitiesTest.java"


# instance fields
.field private supportedDecoders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportedDecoders:Ljava/util/Set;

    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 14
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    iget-object v2, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportedDecoders:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public supportsHevc()Z
    .locals 2

    .line 23
    iget-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportedDecoders:Ljava/util/Set;

    const-string v1, "video/hevc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public supportsHevcMain10()Z
    .locals 2

    .line 27
    iget-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportedDecoders:Ljava/util/Set;

    const-string v1, "video/hevc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public supportsMpeg2()Z
    .locals 2

    .line 31
    iget-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportedDecoders:Ljava/util/Set;

    const-string v1, "video/mpeg2"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public supportsVc1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method