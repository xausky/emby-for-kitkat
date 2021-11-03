.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;
.super Lmediabrowser/apiinteraction/Response;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 374
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 4

    .line 377
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 379
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$102(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)Z

    .line 380
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->toggleStats()V

    goto/16 :goto_0

    .line 385
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v2, "**** Long press right"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowVisualSeeking:Z

    if-eqz p1, :cond_0

    .line 387
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setCanFocus(Z)V

    .line 388
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setStartInChapterMode(Z)V

    .line 389
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin()V

    .line 390
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->requestFocus()Z

    goto :goto_0

    .line 392
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$102(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)Z

    .line 393
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    goto :goto_0

    .line 399
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v2, "**** Long press left"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowVisualSeeking:Z

    if-eqz p1, :cond_1

    .line 401
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setCanFocus(Z)V

    .line 402
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setStartInChapterMode(Z)V

    .line 403
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin()V

    .line 404
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->requestFocus()Z

    goto :goto_0

    .line 406
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$102(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)Z

    .line 407
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$300(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x59
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 374
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
