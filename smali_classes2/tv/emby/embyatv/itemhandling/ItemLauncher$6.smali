.class final Ltv/emby/embyatv/itemhandling/ItemLauncher$6;
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


# direct methods
.method constructor <init>(Landroid/app/Activity;Ltv/emby/embyatv/TvApp;)V
    .locals 0

    .line 299
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 336
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving full object"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/TvApp;->setLaunchingActivity(Z)V

    .line 338
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 3

    .line 302
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Series"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MusicArtist"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MusicAlbum"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$activity:Landroid/app/Activity;

    const-class v2, Ltv/emby/embyatv/browsing/GenericGridActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Folder"

    .line 305
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "Audio"

    .line 309
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AudioPodcast"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AudioBook"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "TvChannel"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "MusicAlbum"

    .line 315
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$activity:Landroid/app/Activity;

    const-class v2, Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ItemId"

    .line 317
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Program"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ItemType"

    .line 319
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 323
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$activity:Landroid/app/Activity;

    const-class v2, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ItemId"

    .line 324
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Program"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ItemType"

    .line 326
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ChannelId"

    .line 327
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ProgramInfo"

    .line 328
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 310
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    return-void
.end method
