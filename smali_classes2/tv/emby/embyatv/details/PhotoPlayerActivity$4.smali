.class Ltv/emby/embyatv/details/PhotoPlayerActivity$4;
.super Ljava/lang/Object;
.source "PhotoPlayerActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/PhotoPlayerActivity;->transition(I)V
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

    .line 303
    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$4;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 311
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$4;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$400(Ltv/emby/embyatv/details/PhotoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
