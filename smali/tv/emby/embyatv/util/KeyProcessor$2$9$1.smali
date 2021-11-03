.class Ltv/emby/embyatv/util/KeyProcessor$2$9$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "KeyProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/KeyProcessor$2$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/util/KeyProcessor$2$9;

.field final synthetic val$msg:Ltv/emby/embyatv/util/DelayedMessage;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/KeyProcessor$2$9;Ltv/emby/embyatv/util/DelayedMessage;)V
    .locals 0

    .line 532
    iput-object p1, p0, Ltv/emby/embyatv/util/KeyProcessor$2$9$1;->this$1:Ltv/emby/embyatv/util/KeyProcessor$2$9;

    iput-object p2, p0, Ltv/emby/embyatv/util/KeyProcessor$2$9$1;->val$msg:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 543
    iget-object v0, p0, Ltv/emby/embyatv/util/KeyProcessor$2$9$1;->val$msg:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/DelayedMessage;->Cancel()V

    .line 544
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse()V
    .locals 3

    .line 535
    iget-object v0, p0, Ltv/emby/embyatv/util/KeyProcessor$2$9$1;->val$msg:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/DelayedMessage;->Cancel()V

    .line 536
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$100()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$100()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastDeletedItemId(Ljava/lang/String;)V

    .line 538
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->RemoveCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    return-void
.end method
