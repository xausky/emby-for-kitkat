.class Ltv/emby/embyatv/details/PhotoPlayerActivity$5;
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

    .line 324
    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 341
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isTransitioning:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 332
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$500(Ltv/emby/embyatv/details/PhotoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 333
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget v0, v0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageNdx:I

    iput v0, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageNdx:I

    .line 334
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget v0, v0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageNdx:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageNdx:I

    .line 336
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iput-boolean v1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isTransitioning:Z

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
