.class Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "EditSubPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/EditSubPopup$4$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/ui/EditSubPopup$4$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/EditSubPopup$4$1;)V
    .locals 0

    .line 229
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$4$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 238
    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$4$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$4;

    iget-object p1, p1, Ltv/emby/embyatv/ui/EditSubPopup$4;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const v0, 0x7f1003e0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 5

    .line 232
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$4$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$4;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$4$1;

    iget-object v1, v1, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$4;

    iget-object v1, v1, Ltv/emby/embyatv/ui/EditSubPopup$4;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    const v2, 0x7f100664

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$4$1;

    iget-object v3, v3, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$4;

    iget-object v3, v3, Ltv/emby/embyatv/ui/EditSubPopup$4;->val$title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$4$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$4;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$1000(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$4$1;

    iget-object v1, v1, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
