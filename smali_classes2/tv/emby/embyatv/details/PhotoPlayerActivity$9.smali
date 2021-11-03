.class Ltv/emby/embyatv/details/PhotoPlayerActivity$9;
.super Ljava/lang/Object;
.source "PhotoPlayerActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/PhotoPlayerActivity;->setupPopupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V
    .locals 0

    .line 404
    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$9;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 413
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$9;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 407
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$9;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupArea:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
