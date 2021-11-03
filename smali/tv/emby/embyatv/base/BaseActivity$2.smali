.class Ltv/emby/embyatv/base/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/base/BaseActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/base/BaseActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Ltv/emby/embyatv/base/BaseActivity$2;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity$2;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v0}, Ltv/emby/embyatv/base/BaseActivity;->access$100(Ltv/emby/embyatv/base/BaseActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity$2;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity$2;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v0}, Ltv/emby/embyatv/base/BaseActivity;->access$100(Ltv/emby/embyatv/base/BaseActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/base/BaseActivity$2;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v1}, Ltv/emby/embyatv/base/BaseActivity;->access$500(Ltv/emby/embyatv/base/BaseActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
