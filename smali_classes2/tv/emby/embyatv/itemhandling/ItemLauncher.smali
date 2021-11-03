.class public Ltv/emby/embyatv/itemhandling/ItemLauncher;
.super Ljava/lang/Object;
.source "ItemLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PlayYtItem(Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;)V
    .locals 2

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/emby/embyatv/playback/YTPlayerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Url"

    .line 480
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ServerSignIn(Lmediabrowser/apiinteraction/IConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Landroid/app/Activity;)V
    .locals 1

    .line 502
    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    invoke-direct {v0, p2, p1, p0}, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;-><init>(Landroid/app/Activity;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/IConnectionManager;)V

    invoke-interface {p0, p1, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, p1, p2, p3, v0}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;Z)V

    return-void
.end method

.method public static launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;Z)V
    .locals 11

    .line 54
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    const/4 p1, 0x1

    .line 56
    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setLaunchingActivity(Z)V

    .line 58
    sget-object v1, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    .line 472
    invoke-virtual {v0, v7}, Ltv/emby/embyatv/TvApp;->setLaunchingActivity(Z)V

    goto/16 :goto_3

    .line 421
    :pswitch_0
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getGridButton()Ltv/emby/embyatv/ui/GridButton;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/ui/GridButton;->getId()I

    move-result p0

    const/16 p1, 0x3e8

    if-eq p0, p1, :cond_6

    const/16 p1, 0x7d0

    if-eq p0, p1, :cond_5

    const/16 p1, 0xbb8

    if-eq p0, p1, :cond_2

    const/16 p1, 0xfa0

    if-eq p0, p1, :cond_1

    const/16 p1, 0x1388

    if-eq p0, p1, :cond_0

    goto/16 :goto_3

    .line 454
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-class p1, Ltv/emby/embyatv/browsing/LiveTvActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "Folder"

    .line 455
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getSerializedLiveTvLibrary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RequestedTab"

    .line 456
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 461
    :cond_1
    new-instance p0, Landroid/content/Intent;

    const-class p1, Ltv/emby/embyatv/browsing/LiveTvActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "Folder"

    .line 462
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getSerializedLiveTvLibrary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RequestedTab"

    .line 463
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 437
    :cond_2
    new-instance p0, Landroid/content/Intent;

    const-class p1, Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ItemId"

    const-string p2, "VIDEO_QUEUE"

    .line 438
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueue()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 442
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 443
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 444
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide p1

    const-wide/16 v0, 0x2710

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Position"

    .line 445
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    :cond_4
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 430
    :cond_5
    new-instance p0, Landroid/content/Intent;

    const-class p1, Ltv/emby/embyatv/browsing/LiveTvActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "Folder"

    .line 431
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getSerializedLiveTvLibrary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RequestedTab"

    .line 432
    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 423
    :cond_6
    new-instance p0, Landroid/content/Intent;

    const-class p1, Ltv/emby/embyatv/browsing/LiveTvActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "Folder"

    .line 424
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getSerializedLiveTvLibrary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RequestedTab"

    .line 425
    invoke-virtual {p0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 411
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class p2, Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "ItemId"

    .line 412
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ItemType"

    const-string p4, "SeriesTimer"

    .line 413
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "SeriesTimer"

    .line 414
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p4

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSeriesTimerInfo()Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    move-result-object p0

    invoke-virtual {p4, p0}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 379
    :pswitch_2
    sget-object p1, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$SelectAction:[I

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSelectAction()Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_3

    .line 389
    :pswitch_3
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getRecordingInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPlayAccess()Lmediabrowser/model/library/PlayAccess;

    move-result-object p1

    sget-object p2, Lmediabrowser/model/library/PlayAccess;->Full:Lmediabrowser/model/library/PlayAccess;

    if-ne p1, p2, :cond_7

    .line 391
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getRecordingInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemLauncher$8;

    invoke-direct {v1, p3, v0, p0}, Ltv/emby/embyatv/itemhandling/ItemLauncher$8;-><init>(Landroid/app/Activity;Ltv/emby/embyatv/TvApp;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    invoke-virtual {p1, p2, p4, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_3

    :cond_7
    const-string p0, "Item not playable at this time"

    .line 403
    invoke-static {p3, p0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 383
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class p2, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "ItemId"

    .line 384
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getRecordingInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 343
    :pswitch_5
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    .line 344
    sget-object p2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$SelectAction:[I

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSelectAction()Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ordinal()I

    move-result p0

    aget p0, p2, p0

    packed-switch p0, :pswitch_data_2

    goto/16 :goto_3

    .line 357
    :pswitch_6
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPlayAccess()Lmediabrowser/model/library/PlayAccess;

    move-result-object p0

    sget-object p2, Lmediabrowser/model/library/PlayAccess;->Full:Lmediabrowser/model/library/PlayAccess;

    if-ne p0, p2, :cond_8

    .line 359
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ltv/emby/embyatv/itemhandling/ItemLauncher$7;

    invoke-direct {p4, p3}, Ltv/emby/embyatv/itemhandling/ItemLauncher$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p1, p2, p4}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_3

    :cond_8
    const-string p0, "Item not playable at this time"

    .line 372
    invoke-static {p3, p0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, v7}, Ltv/emby/embyatv/TvApp;->setLaunchingActivity(Z)V

    goto/16 :goto_3

    .line 348
    :pswitch_7
    new-instance p0, Landroid/content/Intent;

    const-class p2, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "ItemId"

    .line 349
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ItemType"

    .line 350
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ChannelId"

    .line 351
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ProgramInfo"

    .line 352
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p4

    invoke-virtual {p4, p1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 297
    :pswitch_8
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSearchHint()Lmediabrowser/model/search/SearchHint;

    move-result-object p0

    .line 299
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p0}, Lmediabrowser/model/search/SearchHint;->getItemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;

    invoke-direct {p4, p3, v0}, Ltv/emby/embyatv/itemhandling/ItemLauncher$6;-><init>(Landroid/app/Activity;Ltv/emby/embyatv/TvApp;)V

    invoke-virtual {p1, p0, p2, p4}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_3

    .line 287
    :pswitch_9
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p0

    .line 288
    invoke-virtual {p0}, Lmediabrowser/model/dto/UserDto;->getHasPassword()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 289
    invoke-static {p3, p0}, Ltv/emby/embyatv/util/Utils;->processPasswordEntry(Landroid/app/Activity;Lmediabrowser/model/dto/UserDto;)V

    goto/16 :goto_3

    .line 292
    :cond_9
    invoke-virtual {p0}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Ltv/emby/embyatv/util/Utils;->loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 283
    :pswitch_a
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object p1

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object p0

    invoke-static {p1, p0, p3}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->ServerSignIn(Lmediabrowser/apiinteraction/IConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 265
    :pswitch_b
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getChapterInfo()Ltv/emby/embyatv/model/ChapterItemInfo;

    move-result-object p0

    .line 267
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p0}, Ltv/emby/embyatv/model/ChapterItemInfo;->getItemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;

    invoke-direct {v1, p3, v0, p0}, Ltv/emby/embyatv/itemhandling/ItemLauncher$5;-><init>(Landroid/app/Activity;Ltv/emby/embyatv/TvApp;Ltv/emby/embyatv/model/ChapterItemInfo;)V

    invoke-virtual {p1, p2, p4, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_3

    .line 257
    :pswitch_c
    new-instance p1, Landroid/content/Intent;

    const-class p2, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "ItemId"

    .line 258
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getPerson()Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object p0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemPerson;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_a

    .line 259
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    :cond_a
    invoke-virtual {p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 62
    :pswitch_d
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    if-nez v1, :cond_b

    .line 65
    :try_start_0
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v8

    const-string v9, "ItemLauncher called with null baseitem"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_b
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Item selected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "BoxSet"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x4

    goto/16 :goto_2

    :sswitch_1
    const-string p1, "Playlist"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "CollectionFolder"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_2

    :sswitch_3
    const-string p1, "AllEpisodes"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0x8

    goto/16 :goto_2

    :sswitch_4
    const-string p1, "MusicGenre"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xe

    goto/16 :goto_2

    :sswitch_5
    const-string p1, "MusicAlbum"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x5

    goto/16 :goto_2

    :sswitch_6
    const-string p1, "TvChannel"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0x9

    goto :goto_2

    :sswitch_7
    const-string p1, "Photo"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xf

    goto :goto_2

    :sswitch_8
    const-string p1, "Genre"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xd

    goto :goto_2

    :sswitch_9
    const-string p1, "Audio"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xa

    goto :goto_2

    :sswitch_a
    const-string p1, "UserView"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_2

    :sswitch_b
    const-string p1, "Series"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    goto :goto_2

    :sswitch_c
    const-string p1, "Season"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x7

    goto :goto_2

    :sswitch_d
    const-string p1, "AudioPodcast"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xb

    goto :goto_2

    :sswitch_e
    const-string p1, "MusicArtist"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x3

    goto :goto_2

    :sswitch_f
    const-string p1, "AudioBook"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xc

    goto :goto_2

    :cond_c
    :goto_1
    const/4 p1, -0x1

    :goto_2
    packed-switch p1, :pswitch_data_3

    .line 208
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 210
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getDisplayPreferencesId()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;

    invoke-direct {p1, p3, v0, v1, p4}, Ltv/emby/embyatv/itemhandling/ItemLauncher$3;-><init>(Landroid/app/Activity;Ltv/emby/embyatv/TvApp;Lmediabrowser/model/dto/BaseItemDto;Z)V

    invoke-virtual {v0, p0, p1}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_3

    .line 199
    :pswitch_e
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaPosition(I)V

    .line 200
    new-instance p0, Landroid/content/Intent;

    const-class p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 181
    :pswitch_f
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getDisplayPreferencesId()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemLauncher$2;

    invoke-direct {p1, p3, v1, p4}, Ltv/emby/embyatv/itemhandling/ItemLauncher$2;-><init>(Landroid/app/Activity;Lmediabrowser/model/dto/BaseItemDto;Z)V

    invoke-virtual {v0, p0, p1}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    :pswitch_10
    const/16 p1, 0x52

    .line 175
    check-cast p3, Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {p1, p0, p3}, Ltv/emby/embyatv/util/KeyProcessor;->HandleKey(ILtv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)Z

    return-void

    .line 163
    :pswitch_11
    new-instance p0, Landroid/content/Intent;

    const-class p1, Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ItemId"

    .line 164
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_d

    .line 165
    invoke-virtual {p0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    :cond_d
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 149
    :pswitch_12
    new-instance p0, Landroid/content/Intent;

    const-class p1, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ItemId"

    .line 150
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_e

    .line 151
    invoke-virtual {p0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    :cond_e
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 78
    :pswitch_13
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getDisplayPreferencesId()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;

    invoke-direct {p1, v1, v0, p3}, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;-><init>(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/TvApp;Landroid/app/Activity;)V

    invoke-virtual {v0, p0, p1}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 222
    :cond_f
    sget-object p1, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$SelectAction:[I

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSelectAction()Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_4

    goto :goto_3

    :pswitch_14
    const-string p0, "YtTrailer"

    .line 232
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 233
    invoke-static {v1, p3}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->PlayYtItem(Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;)V

    goto :goto_3

    .line 235
    :cond_10
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPlayAccess()Lmediabrowser/model/library/PlayAccess;

    move-result-object p0

    sget-object p1, Lmediabrowser/model/library/PlayAccess;->Full:Lmediabrowser/model/library/PlayAccess;

    if-ne p0, p1, :cond_11

    .line 237
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Movie"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;

    invoke-direct {p1, p3, v0, v1}, Ltv/emby/embyatv/itemhandling/ItemLauncher$4;-><init>(Landroid/app/Activity;Ltv/emby/embyatv/TvApp;Lmediabrowser/model/dto/BaseItemDto;)V

    invoke-static {v1, p0, v7, p1}, Ltv/emby/embyatv/util/Utils;->getItemsToPlay(Lmediabrowser/model/dto/BaseItemDto;ZZLmediabrowser/apiinteraction/Response;)V

    goto :goto_3

    :cond_11
    const-string p0, "Item not playable at this time"

    .line 247
    invoke-static {p3, p0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 226
    :pswitch_15
    new-instance p0, Landroid/content/Intent;

    const-class p1, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ItemId"

    .line 227
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_12

    .line 228
    invoke-virtual {p0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    :cond_12
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7d5e7041 -> :sswitch_f
        -0x711b8e54 -> :sswitch_e
        -0x6cef0992 -> :sswitch_d
        -0x6ca0a8fd -> :sswitch_c
        -0x6c991569 -> :sswitch_b
        -0xc06ded0 -> :sswitch_a
        0x3caabb6 -> :sswitch_9
        0x4181963 -> :sswitch_8
        0x4984e12 -> :sswitch_7
        0x17833001 -> :sswitch_6
        0x46a98b6a -> :sswitch_5
        0x46fb167e -> :sswitch_4
        0x480c5679 -> :sswitch_3
        0x4a5a0ccc -> :sswitch_2
        0x73e0e5f2 -> :sswitch_1
        0x76f3dab7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method
