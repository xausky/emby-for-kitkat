.class final Ltv/emby/embyatv/itemhandling/ItemLauncher$4;
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
        "Ljava/util/List<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$application:Ltv/emby/embyatv/TvApp;

.field final synthetic val$baseItem:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ltv/emby/embyatv/TvApp;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 237
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;->val$application:Ltv/emby/embyatv/TvApp;

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 240
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;->val$application:Ltv/emby/embyatv/TvApp;

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    const-string p1, "Position"

    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
