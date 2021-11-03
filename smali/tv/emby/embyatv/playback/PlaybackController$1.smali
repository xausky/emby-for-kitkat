.class Ltv/emby/embyatv/playback/PlaybackController$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->play(JIIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;

.field final synthetic val$audioStreamNdx:I

.field final synthetic val$currentSessionId:Ljava/lang/String;

.field final synthetic val$mediaSourceNdx:I

.field final synthetic val$position:J

.field final synthetic val$subtitleStreamNdx:I

.field final synthetic val$transcodedSubtitle:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;JIIIILjava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iput-wide p2, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$position:J

    iput p4, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$transcodedSubtitle:I

    iput p5, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$mediaSourceNdx:I

    iput p6, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$audioStreamNdx:I

    iput p7, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$subtitleStreamNdx:I

    iput-object p8, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$currentSessionId:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 383
    instance-of v0, p1, Lmediabrowser/model/net/HttpException;

    if-eqz v0, :cond_1

    .line 384
    check-cast p1, Lmediabrowser/model/net/HttpException;

    invoke-virtual {p1}, Lmediabrowser/model/net/HttpException;->getStatusCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x193

    if-ne p1, v0, :cond_0

    .line 385
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f1003d9

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f1006a1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$200(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController$1$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/PlaybackController$1$1;-><init>(Ltv/emby/embyatv/playback/PlaybackController$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 399
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100661

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 402
    :goto_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->finish()V

    :cond_2
    return-void
.end method

.method public onResponse()V
    .locals 8

    .line 378
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-wide v1, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$position:J

    iget v3, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$transcodedSubtitle:I

    iget v4, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$mediaSourceNdx:I

    iget v5, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$audioStreamNdx:I

    iget v6, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$subtitleStreamNdx:I

    iget-object v7, p0, Ltv/emby/embyatv/playback/PlaybackController$1;->val$currentSessionId:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Ltv/emby/embyatv/playback/PlaybackController;->access$000(Ltv/emby/embyatv/playback/PlaybackController;JIIIILjava/lang/String;)V

    return-void
.end method
