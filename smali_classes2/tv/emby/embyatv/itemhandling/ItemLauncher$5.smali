.class final Ltv/emby/embyatv/itemhandling/ItemLauncher$5;
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
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$application:Ltv/emby/embyatv/TvApp;

.field final synthetic val$chapter:Ltv/emby/embyatv/model/ChapterItemInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ltv/emby/embyatv/TvApp;Ltv/emby/embyatv/model/ChapterItemInfo;)V
    .locals 0

    .line 267
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;->val$application:Ltv/emby/embyatv/TvApp;

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;->val$chapter:Ltv/emby/embyatv/model/ChapterItemInfo;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 267
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 5

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    .line 273
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;->val$chapter:Ltv/emby/embyatv/model/ChapterItemInfo;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/ChapterItemInfo;->getStartPositionTicks()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "Position"

    .line 275
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
