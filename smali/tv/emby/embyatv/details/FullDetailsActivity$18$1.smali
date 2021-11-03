.class Ltv/emby/embyatv/details/FullDetailsActivity$18$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$18;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

.field final synthetic val$msg:Ltv/emby/embyatv/util/DelayedMessage;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$18;Ltv/emby/embyatv/util/DelayedMessage;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->val$msg:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1132
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->val$msg:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/DelayedMessage;->Cancel()V

    .line 1133
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse()V
    .locals 5

    .line 1122
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->val$msg:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/DelayedMessage;->Cancel()V

    .line 1123
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v2, 0x7f100664

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iget-object v3, v3, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->GetSubName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastDeletedItemId(Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastLibraryChange(Ljava/util/Calendar;)V

    .line 1126
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastPlayedItem(Lmediabrowser/model/dto/BaseItemDto;)V

    .line 1127
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$18;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->finish()V

    return-void
.end method
