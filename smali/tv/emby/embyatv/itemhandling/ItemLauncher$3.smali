.class final Ltv/emby/embyatv/itemhandling/ItemLauncher$3;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/entities/DisplayPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$application:Ltv/emby/embyatv/TvApp;

.field final synthetic val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$noHistory:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Ltv/emby/embyatv/TvApp;Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 0

    .line 210
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->val$application:Ltv/emby/embyatv/TvApp;

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->val$noHistory:Z

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 3

    .line 213
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/browsing/GenericGridActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Folder"

    .line 214
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->val$noHistory:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
