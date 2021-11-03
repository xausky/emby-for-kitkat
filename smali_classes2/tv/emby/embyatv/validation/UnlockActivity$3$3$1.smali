.class Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;
.super Lmediabrowser/apiinteraction/Response;
.source "UnlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/UnlockActivity$3$3;->onClick(Landroid/view/View;)V
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
.field final synthetic this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/UnlockActivity$3$3;)V
    .locals 0

    .line 143
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 172
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

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

    .line 143
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iget-object v1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    iget-object v1, v1, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v1, v1, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v2, 0x7f10062a

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/validation/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1$1;-><init>(Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/validation/UnlockActivity;->access$100(Ltv/emby/embyatv/validation/UnlockActivity;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :cond_0
    return-void
.end method
