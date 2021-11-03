.class Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "UnlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

.field final synthetic val$save:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->this$3:Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

    iput-object p2, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->val$save:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 163
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->this$3:Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->this$3:Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v1, 0x7f10062f

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 149
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->val$save:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->this$3:Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iput-object p1, v0, Ltv/emby/embyatv/validation/UnlockActivity;->email:Ljava/lang/String;

    .line 155
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->this$3:Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->this$3:Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->val$monthlyProduct:Ltv/emby/iap/InAppProduct;

    invoke-static {p1, v0}, Ltv/emby/embyatv/validation/UnlockActivity;->access$000(Ltv/emby/embyatv/validation/UnlockActivity;Ltv/emby/iap/InAppProduct;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->this$3:Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;->this$3:Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v1, 0x7f10062b

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
