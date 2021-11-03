.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;
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

    .line 1347
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1355
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 1356
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanelMin:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const/4 v1, 0x0

    iput-boolean v1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    .line 1358
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTopPanel:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput-boolean v1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowTopWithMin:Z

    goto :goto_0

    .line 1361
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 1362
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanel:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTopPanel:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
