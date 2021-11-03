.class Ltv/emby/embyatv/util/Utils$26$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils$26;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/util/Utils$26;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/Utils$26;)V
    .locals 0

    .line 2030
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$26$1;->this$0:Ltv/emby/embyatv/util/Utils$26;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 2039
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$26$1;->this$0:Ltv/emby/embyatv/util/Utils$26;

    iget-object p1, p1, Ltv/emby/embyatv/util/Utils$26;->val$context:Landroid/content/Context;

    const-string v0, "Unable to send report.  Try again later."

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse()V
    .locals 3

    .line 2033
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$26$1;->this$0:Ltv/emby/embyatv/util/Utils$26;

    iget-object v0, v0, Ltv/emby/embyatv/util/Utils$26;->val$context:Landroid/content/Context;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$26$1;->this$0:Ltv/emby/embyatv/util/Utils$26;

    iget-object v1, v1, Ltv/emby/embyatv/util/Utils$26;->val$context:Landroid/content/Context;

    const v2, 0x7f10064a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
