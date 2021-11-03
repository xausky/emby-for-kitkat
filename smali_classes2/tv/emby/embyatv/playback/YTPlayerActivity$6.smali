.class Ltv/emby/embyatv/playback/YTPlayerActivity$6;
.super Ljava/lang/Object;
.source "YTPlayerActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/YTPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$6;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 179
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$6;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/playback/YTPlayerActivity;->mBottomPanelMin:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
