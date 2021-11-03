.class final Ltv/emby/embyatv/util/Utils$12;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLjava/lang/Long;IILjava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/content/Context;

.field final synthetic val$audioStreamNdx:I

.field final synthetic val$mediaSourceId:Ljava/lang/String;

.field final synthetic val$position:Ljava/lang/Long;

.field final synthetic val$shuffle:Z

.field final synthetic val$subtitleStreamNdx:I


# direct methods
.method constructor <init>(Ljava/lang/Long;ZIILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 962
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$12;->val$position:Ljava/lang/Long;

    iput-boolean p2, p0, Ltv/emby/embyatv/util/Utils$12;->val$shuffle:Z

    iput p3, p0, Ltv/emby/embyatv/util/Utils$12;->val$subtitleStreamNdx:I

    iput p4, p0, Ltv/emby/embyatv/util/Utils$12;->val$audioStreamNdx:I

    iput-object p5, p0, Ltv/emby/embyatv/util/Utils$12;->val$mediaSourceId:Ljava/lang/String;

    iput-object p6, p0, Ltv/emby/embyatv/util/Utils$12;->val$activity:Landroid/content/Context;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 971
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving item for playback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 972
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$12;->val$activity:Landroid/content/Context;

    const v0, 0x7f100661

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 962
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$12;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 8

    .line 965
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$12;->val$position:Ljava/lang/Long;

    const-wide/16 v1, 0x2710

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$12;->val$position:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long/2addr v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResumePreroll()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v3, v0

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v2

    iget-boolean v3, p0, Ltv/emby/embyatv/util/Utils$12;->val$shuffle:Z

    iget v4, p0, Ltv/emby/embyatv/util/Utils$12;->val$subtitleStreamNdx:I

    iget v5, p0, Ltv/emby/embyatv/util/Utils$12;->val$audioStreamNdx:I

    iget-object v6, p0, Ltv/emby/embyatv/util/Utils$12;->val$mediaSourceId:Ljava/lang/String;

    iget-object v7, p0, Ltv/emby/embyatv/util/Utils$12;->val$activity:Landroid/content/Context;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ltv/emby/embyatv/util/Utils;->play(Lmediabrowser/model/dto/BaseItemDto;IZIILjava/lang/String;Landroid/content/Context;)V

    return-void
.end method
