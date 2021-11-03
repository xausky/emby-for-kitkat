.class Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;
.super Ljava/lang/Object;
.source "ExternalPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/ExternalPlayerActivity;->startReportLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 160
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->access$000(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget v2, v2, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    if-le v0, v2, :cond_0

    .line 161
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->access$002(Ltv/emby/embyatv/playback/ExternalPlayerActivity;Z)Z

    .line 162
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget-object v3, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget v3, v3, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lmediabrowser/model/dto/BaseItemDto;

    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object v4, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object v5, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mPosition:Ljava/lang/Long;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "TimeUpdate"

    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->access$100(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)Lmediabrowser/apiinteraction/EmptyResponse;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 165
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Ltv/emby/embyatv/TvApp;->setLastUserInteraction(JZ)V

    .line 166
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
