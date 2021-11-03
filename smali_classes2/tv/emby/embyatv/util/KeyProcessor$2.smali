.class final Ltv/emby/embyatv/util/KeyProcessor$2;
.super Ljava/lang/Object;
.source "KeyProcessor.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/util/KeyProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11

    .line 380
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f100617

    const v1, 0x7f100526

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v2

    .line 435
    :pswitch_1
    new-instance p1, Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Ltv/emby/embyatv/ui/EditSubPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    .line 436
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$100()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/EditSubPopup;->show(Lmediabrowser/model/dto/BaseItemDto;)V

    return v3

    .line 431
    :pswitch_2
    new-instance p1, Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    .line 432
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$100()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->show(Lmediabrowser/model/dto/BaseItemDto;)V

    return v3

    .line 396
    :pswitch_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$300()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->playVideosFromMediaPosition(Landroid/content/Context;I)V

    return v3

    .line 399
    :pswitch_4
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$100()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/integration/OreoChannelHelper;->addWatchNext(Lmediabrowser/model/dto/BaseItemDto;)V

    return v3

    .line 526
    :pswitch_5
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100486

    .line 527
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This will PERMANENTLY DELETE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$100()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from your library.  Are you VERY sure?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Delete"

    new-instance v1, Ltv/emby/embyatv/util/KeyProcessor$2$9;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/KeyProcessor$2$9;-><init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V

    .line 529
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel"

    new-instance v1, Ltv/emby/embyatv/util/KeyProcessor$2$8;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/KeyProcessor$2$8;-><init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V

    .line 549
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 555
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    .line 556
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    return v3

    .line 571
    :pswitch_6
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->Beep()V

    .line 572
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->playInstantMix(Ljava/lang/String;)V

    return v3

    .line 561
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-class v1, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 565
    :pswitch_8
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$300()I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->removeFromAudioQueue(I)V

    return v3

    .line 568
    :pswitch_9
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$300()I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->playFrom(I)Z

    return v3

    .line 402
    :pswitch_a
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$400()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$100()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/util/KeyProcessor$2$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/util/KeyProcessor$2$1;-><init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V

    invoke-static {p1, v2, v2, v0}, Ltv/emby/embyatv/util/Utils;->getItemsToPlay(Lmediabrowser/model/dto/BaseItemDto;ZZLmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/util/KeyProcessor$2$2;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/util/KeyProcessor$2$2;-><init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V

    invoke-virtual {p1, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return v3

    .line 439
    :pswitch_b
    new-instance p1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {p1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    .line 440
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 442
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setIsVirtualUnaired(Ljava/lang/Boolean;)V

    .line 443
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setIsMissing(Ljava/lang/Boolean;)V

    const-string v0, "SortName"

    .line 444
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 445
    sget-object v0, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 446
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    const-string v4, "Series"

    const-string v5, "Season"

    const-string v6, "Folder"

    const-string v7, "MusicAlbum"

    const-string v8, "Playlist"

    const-string v9, "BoxSet"

    .line 447
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setExcludeItemTypes([Ljava/lang/String;)V

    .line 448
    new-array v0, v3, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsUnplayed:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 449
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/KeyProcessor$2$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/KeyProcessor$2$3;-><init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    return v3

    .line 389
    :pswitch_c
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FAV_SONGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 390
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$100()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Ltv/emby/embyatv/util/Utils;->play(Lmediabrowser/model/dto/BaseItemDto;IZIILjava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 392
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-static {p1, v3, v0}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    :goto_1
    return v3

    .line 382
    :pswitch_d
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FAV_SONGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 383
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$100()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Ltv/emby/embyatv/util/Utils;->play(Lmediabrowser/model/dto/BaseItemDto;IZIILjava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 385
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-static {p1, v2, v0}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    :goto_2
    return v3

    .line 495
    :pswitch_e
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$600()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 497
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10050c

    .line 498
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 499
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    const v4, 0x7f100473

    invoke-virtual {v2, v4}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 500
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/util/KeyProcessor$2$7;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/util/KeyProcessor$2$7;-><init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 505
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/KeyProcessor$2$6;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/KeyProcessor$2$6;-><init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 510
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 512
    :cond_3
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$800()V

    :goto_3
    return v3

    .line 473
    :pswitch_f
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$600()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 475
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10050b

    .line 476
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 477
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    const v4, 0x7f100474

    invoke-virtual {v2, v4}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 478
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/util/KeyProcessor$2$5;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/util/KeyProcessor$2$5;-><init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 483
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/KeyProcessor$2$4;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/KeyProcessor$2$4;-><init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4

    .line 491
    :cond_4
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$700()V

    :goto_4
    return v3

    :pswitch_10
    const/4 p1, 0x0

    .line 523
    invoke-static {p1}, Ltv/emby/embyatv/util/KeyProcessor;->access$900(Ljava/lang/Boolean;)V

    return v3

    .line 519
    :pswitch_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/KeyProcessor;->access$900(Ljava/lang/Boolean;)V

    return v3

    .line 516
    :pswitch_12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/KeyProcessor;->access$900(Ljava/lang/Boolean;)V

    return v3

    .line 470
    :pswitch_13
    invoke-static {v2}, Ltv/emby/embyatv/util/KeyProcessor;->access$500(Z)V

    return v3

    .line 467
    :pswitch_14
    invoke-static {v3}, Ltv/emby/embyatv/util/KeyProcessor;->access$500(Z)V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
