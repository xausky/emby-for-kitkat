.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$2;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 246
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$2;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 250
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$2;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$2;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->show()V

    .line 253
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$2;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mFadeEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$2;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 255
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Got touch event."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
