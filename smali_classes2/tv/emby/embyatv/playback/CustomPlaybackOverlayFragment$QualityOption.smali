.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QualityOption"
.end annotation


# instance fields
.field key:I

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1892
    iput p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;->key:I

    .line 1893
    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 1896
    iget v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;->key:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1897
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;->value:Ljava/lang/String;

    return-object v0
.end method
