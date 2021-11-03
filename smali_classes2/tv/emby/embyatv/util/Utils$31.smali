.class final Ltv/emby/embyatv/util/Utils$31;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->launchAfterLogin(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$directEntryItemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 2102
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$31;->val$directEntryItemId:Ljava/lang/String;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$31;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 2105
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$31;->val$directEntryItemId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2106
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$31;->val$activity:Landroid/app/Activity;

    const-class v2, Ltv/emby/embyatv/browsing/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2108
    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$31;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2110
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$31;->val$activity:Landroid/app/Activity;

    const-class v2, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ItemId"

    .line 2111
    iget-object v2, p0, Ltv/emby/embyatv/util/Utils$31;->val$directEntryItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "directplay"

    .line 2112
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    iget-boolean v2, v2, Ltv/emby/embyatv/TvApp;->DirectPlay:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2113
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Ltv/emby/embyatv/TvApp;->DirectPlay:Z

    .line 2114
    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$31;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2118
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/Utils$31$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/Utils$31$1;-><init>(Ltv/emby/embyatv/util/Utils$31;)V

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetPublicUsersAsync(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
