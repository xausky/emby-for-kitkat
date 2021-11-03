.class Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter$12$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/details/ListItemAdapter$12$1;

.field final synthetic val$msg:Ltv/emby/embyatv/util/DelayedMessage;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter$12$1;Ltv/emby/embyatv/util/DelayedMessage;)V
    .locals 0

    .line 545
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->this$2:Ltv/emby/embyatv/details/ListItemAdapter$12$1;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->val$msg:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 556
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->val$msg:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/DelayedMessage;->Cancel()V

    .line 557
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->this$2:Ltv/emby/embyatv/details/ListItemAdapter$12$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$12$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$12;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse()V
    .locals 3

    .line 548
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->val$msg:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/DelayedMessage;->Cancel()V

    .line 549
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->this$2:Ltv/emby/embyatv/details/ListItemAdapter$12$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$12$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$12;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->this$2:Ltv/emby/embyatv/details/ListItemAdapter$12$1;

    iget-object v2, v2, Ltv/emby/embyatv/details/ListItemAdapter$12$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;

    iget-object v2, v2, Ltv/emby/embyatv/details/ListItemAdapter$12;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$800(Ltv/emby/embyatv/details/ListItemAdapter;)Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 550
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->this$2:Ltv/emby/embyatv/details/ListItemAdapter$12$1;

    iget-object v1, v1, Ltv/emby/embyatv/details/ListItemAdapter$12$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;

    iget-object v1, v1, Ltv/emby/embyatv/details/ListItemAdapter$12;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$800(Ltv/emby/embyatv/details/ListItemAdapter;)Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastDeletedItemId(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->this$2:Ltv/emby/embyatv/details/ListItemAdapter$12$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$12$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$12;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;->this$2:Ltv/emby/embyatv/details/ListItemAdapter$12$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$12$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$12;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
