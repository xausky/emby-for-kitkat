.class public Ltv/emby/embyatv/details/ItemListActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "ItemListActivity.java"

# interfaces
.implements Ltv/emby/embyatv/ui/IRecordingIndicatorView;


# static fields
.field public static BUTTON_SIZE:I = 0x0

.field public static final FAV_SONGS:Ljava/lang/String; = "FAV_SONGS"

.field public static final VIDEO_QUEUE:Ljava/lang/String; = "VIDEO_QUEUE"


# instance fields
.field private firstTime:Z

.field private itemResponse:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;"
        }
    .end annotation
.end field

.field private lastBdUrl:Ljava/lang/String;

.field private lastUpdated:Ljava/util/Calendar;

.field private mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field private mApplication:Ltv/emby/embyatv/TvApp;

.field private mAudioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

.field private mBackdropLoop:Ljava/lang/Runnable;

.field private mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

.field private mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

.field private mCurrentRow:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

.field private mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

.field private mItemId:Ljava/lang/String;

.field private mItemList:Landroidx/recyclerview/widget/RecyclerView;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLoopHandler:Landroid/os/Handler;

.field protected mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

.field private trackAudioEvents:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLoopHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->firstTime:Z

    .line 88
    iput-boolean v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->trackAudioEvents:Z

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->lastUpdated:Ljava/util/Calendar;

    .line 402
    new-instance v0, Ltv/emby/embyatv/details/ItemListActivity$8;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ItemListActivity$8;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mAudioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    .line 669
    new-instance v0, Ltv/emby/embyatv/details/ItemListActivity$18;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ItemListActivity$18;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->itemResponse:Lmediabrowser/apiinteraction/Response;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mCurrentRow:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    return-object p0
.end method

.method static synthetic access$002(Ltv/emby/embyatv/details/ItemListActivity;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;
    .locals 0

    .line 64
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mCurrentRow:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    return-object p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/details/ItemListActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/details/ItemListActivity;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->loadItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/details/ItemListActivity;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 64
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->getVideoQueueBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1202(Ltv/emby/embyatv/details/ItemListActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 64
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->lastUpdated:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->refreshVisibleRows()V

    return-void
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/base/BaseActivity;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-object p0
.end method

.method static synthetic access$1500(Ltv/emby/embyatv/details/ItemListActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->retrieveEpisodes()V

    return-void
.end method

.method static synthetic access$1700(Ltv/emby/embyatv/details/ItemListActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->trackAudioEvents:Z

    return p0
.end method

.method static synthetic access$1800(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/playback/AudioEventListener;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mAudioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    return-object p0
.end method

.method static synthetic access$1900(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->updateBackdrop()V

    return-void
.end method

.method static synthetic access$200(Ltv/emby/embyatv/details/ItemListActivity;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->processRowClicked(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V

    return-void
.end method

.method static synthetic access$2000(Ltv/emby/embyatv/details/ItemListActivity;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLoopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/details/ItemListActivity;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/details/ItemListActivity;->showMenu(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Z)V

    return-void
.end method

.method static synthetic access$400(Ltv/emby/embyatv/details/ItemListActivity;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Ltv/emby/embyatv/details/ItemListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 64
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    return-object p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/TvApp;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/details/ItemListActivity;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->loadTimers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemId:Ljava/lang/String;

    return-object p0
.end method

.method private getEndTime()Ljava/lang/String;
    .locals 7

    .line 750
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCumulativeRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f10049e

    invoke-virtual {p0, v3}, Ltv/emby/embyatv/details/ItemListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getRandomListItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 3

    .line 762
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->randInt(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVideoQueueBaseItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 10

    .line 512
    new-instance v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v0}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    const-string v1, "VIDEO_QUEUE"

    .line 513
    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    const v1, 0x7f100479

    .line 514
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/details/ItemListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    const v1, 0x7f1003ce

    .line 515
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/details/ItemListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setOverview(Ljava/lang/String;)V

    .line 516
    sget-object v1, Lmediabrowser/model/library/PlayAccess;->Full:Lmediabrowser/model/library/PlayAccess;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setPlayAccess(Lmediabrowser/model/library/PlayAccess;)V

    const-string v1, "Video"

    .line 517
    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setMediaType(Ljava/lang/String;)V

    const-string v1, "Playlist"

    .line 518
    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 519
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setIsFolder(Ljava/lang/Boolean;)V

    .line 520
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueue()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 523
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmediabrowser/model/dto/BaseItemDto;

    .line 524
    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_0
    move-wide v7, v3

    :goto_1
    const/4 v9, 0x0

    add-long/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setCumulativeRunTimeTicks(Ljava/lang/Long;)V

    .line 528
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setChildCount(Ljava/lang/Integer;)V

    :cond_2
    return-object v0
.end method

.method private loadItem(Ljava/lang/String;)V
    .locals 3

    .line 485
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x969b00d

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x570dbf9a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FAV_SONGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "VIDEO_QUEUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 501
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/ItemListActivity$14;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/ItemListActivity$14;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_2

    .line 498
    :pswitch_0
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->getVideoQueueBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_2

    .line 487
    :pswitch_1
    new-instance p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p1}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    const-string v0, "FAV_SONGS"

    .line 488
    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    const v0, 0x7f1004c2

    .line 489
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/ItemListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    const v0, 0x7f1003cb

    .line 490
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/ItemListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setOverview(Ljava/lang/String;)V

    .line 491
    sget-object v0, Lmediabrowser/model/library/PlayAccess;->Full:Lmediabrowser/model/library/PlayAccess;

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setPlayAccess(Lmediabrowser/model/library/PlayAccess;)V

    const-string v0, "Audio"

    .line 492
    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setMediaType(Ljava/lang/String;)V

    const-string v0, "Playlist"

    .line 493
    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    .line 494
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setIsFolder(Ljava/lang/Boolean;)V

    .line 495
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadItems()V
    .locals 8

    const-string v0, "Playlist"

    .line 581
    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemId:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x969b00d

    if-eq v6, v7, :cond_1

    const v7, 0x570dbf9a

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "FAV_SONGS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const-string v6, "VIDEO_QUEUE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 602
    new-instance v0, Lmediabrowser/model/playlists/PlaylistItemQuery;

    invoke-direct {v0}, Lmediabrowser/model/playlists/PlaylistItemQuery;-><init>()V

    .line 603
    iget-object v5, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmediabrowser/model/playlists/PlaylistItemQuery;->setId(Ljava/lang/String;)V

    .line 604
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmediabrowser/model/playlists/PlaylistItemQuery;->setUserId(Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 605
    new-array v5, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v3

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Genres:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v5, v4

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Chapters:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v5, v2

    const/4 v2, 0x3

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->MediaSourceCount:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v5, v2

    const/4 v2, 0x4

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->MediaSources:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v5, v2

    invoke-virtual {v0, v5}, Lmediabrowser/model/playlists/PlaylistItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 606
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/playlists/PlaylistItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 607
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->itemResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetPlaylistItems(Lmediabrowser/model/playlists/PlaylistItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_2

    .line 597
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 598
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyDataSetChanged()V

    .line 599
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->updateBackdrop()V

    goto/16 :goto_2

    .line 586
    :pswitch_1
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    new-array v1, v2, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v3

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Genres:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>([Lmediabrowser/model/querying/ItemFields;)V

    .line 587
    invoke-virtual {p0}, Ltv/emby/embyatv/details/ItemListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ParentId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    const-string v1, "Audio"

    .line 588
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 590
    new-array v1, v4, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v2, Lmediabrowser/model/querying/ItemFilter;->IsFavoriteOrLikes:Lmediabrowser/model/querying/ItemFilter;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v1, "Random"

    .line 591
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    const/16 v1, 0x1f4

    .line 592
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 593
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->itemResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "SeriesTimer"

    .line 610
    iget-object v5, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_4

    .line 611
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/details/ItemListActivity;->loadTimers(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "Season"

    .line 612
    iget-object v5, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Series"

    iget-object v5, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "TvChannel"

    .line 614
    iget-object v5, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 615
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->retrievePrograms()V

    goto :goto_2

    .line 617
    :cond_6
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    .line 618
    iget-object v5, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 620
    new-array v2, v2, [Lmediabrowser/model/querying/ItemFields;

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v2, v3

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Genres:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const-string v2, "Audio"

    .line 621
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 622
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 623
    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->itemResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_2

    .line 613
    :cond_7
    :goto_1
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->retrieveEpisodes()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadTimers(Ljava/lang/String;)V
    .locals 2

    .line 714
    new-instance v0, Lmediabrowser/model/livetv/TimerQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/TimerQuery;-><init>()V

    .line 715
    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/TimerQuery;->setSeriesTimerId(Ljava/lang/String;)V

    .line 716
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 717
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v1, Ltv/emby/embyatv/details/ItemListActivity$19;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/ItemListActivity$19;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvTimersAsync(Lmediabrowser/model/livetv/TimerQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private processRowClicked(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V
    .locals 7

    .line 326
    invoke-virtual {p1}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v0

    .line 327
    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/BaseItemDto;

    .line 328
    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6ca0a8fd

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_3

    const v4, -0x6c991569

    if-eq v3, v4, :cond_2

    const v4, -0xf27cd12

    if-eq v3, v4, :cond_1

    const v4, 0x17833001

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "TvChannel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :cond_1
    const-string v3, "SeriesTimer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "Series"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    const-string v3, "Season"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    const-string v0, "Audio"

    .line 396
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 393
    :pswitch_0
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {p1, v6, v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    const/4 v0, 0x0

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {p1, v0, v6, v1}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;)V

    goto :goto_3

    .line 330
    :pswitch_1
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getRecordingStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v2

    sget-object v3, Lmediabrowser/model/livetv/RecordingStatus;->Cancelled:Lmediabrowser/model/livetv/RecordingStatus;

    if-eq v2, v3, :cond_5

    .line 332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100465

    .line 333
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f100624

    .line 334
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Ltv/emby/embyatv/details/ItemListActivity$6;

    invoke-direct {v3, p0, v1, p1}, Ltv/emby/embyatv/details/ItemListActivity$6;-><init>(Ltv/emby/embyatv/details/ItemListActivity;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V

    .line 335
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 356
    :cond_5
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/details/ItemListActivity$7;

    invoke-direct {v3, p0, v1, v0}, Ltv/emby/embyatv/details/ItemListActivity$7;-><init>(Ltv/emby/embyatv/details/ItemListActivity;Lmediabrowser/model/dto/BaseItemDto;I)V

    invoke-virtual {p1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetDefaultLiveTvTimerInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_3

    :goto_2
    xor-int/2addr v0, v5

    .line 396
    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/details/ItemListActivity;->showMenu(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Z)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private refreshVisibleRows()V
    .locals 4

    .line 415
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 417
    :cond_0
    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object v3, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method private retrieveEpisodes()V
    .locals 9

    .line 641
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v7, "4.3"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Season"

    iget-object v7, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 642
    :cond_0
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v7, "Season"

    .line 643
    iget-object v8, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v8}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 644
    iget-object v7, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentIndexNumber(Ljava/lang/Integer;)V

    :cond_1
    const-string v7, "Series"

    .line 645
    iget-object v8, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v8}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    iget-object v7, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v0, v7}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 646
    iget-object v7, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ltv/emby/embyatv/querying/StdItemQuery;->setUserId(Ljava/lang/String;)V

    const-string v7, "Episode"

    .line 647
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 649
    invoke-virtual {v0, v6}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 650
    new-array v4, v4, [Lmediabrowser/model/querying/ItemFields;

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v4, v6

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v4, v5

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->MediaSourceCount:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v4, v3

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->MediaSources:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v4, v2

    invoke-virtual {v0, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 651
    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 652
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 653
    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->itemResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_2

    .line 655
    :cond_3
    new-instance v0, Lmediabrowser/model/querying/EpisodeQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/EpisodeQuery;-><init>()V

    const-string v7, "Season"

    .line 656
    iget-object v8, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v8}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 657
    iget-object v7, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lmediabrowser/model/querying/EpisodeQuery;->setSeasonId(Ljava/lang/String;)V

    :cond_4
    const-string v7, "Series"

    .line 658
    iget-object v8, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v8}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    iget-object v7, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v0, v7}, Lmediabrowser/model/querying/EpisodeQuery;->setSeriesId(Ljava/lang/String;)V

    .line 659
    iget-object v7, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lmediabrowser/model/querying/EpisodeQuery;->setUserId(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, v6}, Lmediabrowser/model/querying/EpisodeQuery;->setEnableTotalRecordCount(Z)V

    .line 661
    new-array v4, v4, [Lmediabrowser/model/querying/ItemFields;

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v4, v6

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v4, v5

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->MediaSourceCount:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v4, v3

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->MediaSources:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v4, v2

    invoke-virtual {v0, v4}, Lmediabrowser/model/querying/EpisodeQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 662
    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/EpisodeQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 663
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/EpisodeQuery;->setLimit(Ljava/lang/Integer;)V

    .line 664
    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->itemResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetEpisodesAsync(Lmediabrowser/model/querying/EpisodeQuery;Lmediabrowser/apiinteraction/Response;)V

    :goto_2
    return-void
.end method

.method private retrievePrograms()V
    .locals 5

    .line 628
    new-instance v0, Lmediabrowser/model/livetv/ProgramQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/ProgramQuery;-><init>()V

    .line 629
    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/ProgramQuery;->setUserId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 630
    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/ProgramQuery;->setChannelIds([Ljava/lang/String;)V

    .line 631
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/ProgramQuery;->setEnableImages(Ljava/lang/Boolean;)V

    .line 632
    invoke-virtual {v0, v4}, Lmediabrowser/model/livetv/ProgramQuery;->setEnableUserData(Z)V

    const/4 v2, 0x4

    .line 633
    new-array v2, v2, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->IsHD:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v4

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Width:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v1

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->OfficialRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/ProgramQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const-string v1, "StartDate"

    .line 634
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/ProgramQuery;->setSortBy([Ljava/lang/String;)V

    .line 635
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/ProgramQuery;->setMinEndDate(Ljava/util/Date;)V

    .line 636
    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->itemResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvProgramsAsync(Lmediabrowser/model/livetv/ProgramQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private rotateBackdrops()V
    .locals 4

    .line 768
    new-instance v0, Ltv/emby/embyatv/details/ItemListActivity$20;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ItemListActivity$20;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBackdropLoop:Ljava/lang/Runnable;

    .line 776
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBackdropLoop:Ljava/lang/Runnable;

    sget v2, Ltv/emby/embyatv/details/FullDetailsActivity;->BACKDROP_ROTATION_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showMenu(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Z)V
    .locals 7

    .line 421
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Ltv/emby/embyatv/util/Utils;->createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 422
    invoke-virtual {p1}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const v3, 0x7f100536

    invoke-interface {p2, v2, v2, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 426
    new-instance v3, Ltv/emby/embyatv/details/ItemListActivity$9;

    invoke-direct {v3, p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$9;-><init>(Ltv/emby/embyatv/details/ItemListActivity;I)V

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 435
    :goto_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    const v5, 0x7f10054a

    invoke-interface {v3, v2, v2, p2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 436
    new-instance v3, Ltv/emby/embyatv/details/ItemListActivity$10;

    invoke-direct {v3, p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$10;-><init>(Ltv/emby/embyatv/details/ItemListActivity;I)V

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 443
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    add-int/lit8 v3, v4, 0x1

    const v5, 0x7f100546

    invoke-interface {p2, v2, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 444
    new-instance v4, Ltv/emby/embyatv/details/ItemListActivity$11;

    invoke-direct {v4, p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$11;-><init>(Ltv/emby/embyatv/details/ItemListActivity;I)V

    invoke-interface {p2, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 451
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const/4 v4, 0x2

    add-int/lit8 v5, v3, 0x1

    const v6, 0x7f10043f

    invoke-interface {p2, v2, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 452
    new-instance v3, Ltv/emby/embyatv/details/ItemListActivity$12;

    invoke-direct {v3, p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$12;-><init>(Ltv/emby/embyatv/details/ItemListActivity;I)V

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const-string p2, "Audio"

    .line 467
    iget-object v3, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getSupportsResume()Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 468
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const v3, 0x7f1004eb

    invoke-interface {p2, v2, v1, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 469
    new-instance v1, Ltv/emby/embyatv/details/ItemListActivity$13;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$13;-><init>(Ltv/emby/embyatv/details/ItemListActivity;I)V

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 479
    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private stopRotate()V
    .locals 2

    .line 790
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLoopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBackdropLoop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBackdropLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateBackdrop()V
    .locals 3

    .line 780
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 782
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->getRandomListItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 783
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-static {v1, v0, v2}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 785
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/ItemListActivity;->updateBackground(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    .line 98
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->setContentView(I)V

    .line 100
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 101
    iput-object p0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 p1, 0x23

    .line 102
    invoke-static {p0, p1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    sput p1, Ltv/emby/embyatv/details/ItemListActivity;->BUTTON_SIZE:I

    const p1, 0x7f0a018e

    .line 104
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemList:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 106
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const p1, 0x7f0a0117

    .line 108
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ClockUserView;

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ClockUserView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 111
    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ClockUserView;->setSmallPresentation()V

    .line 115
    :cond_1
    new-instance p1, Ltv/emby/embyatv/details/ItemListActivity$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/details/ItemListActivity$1;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    const p1, 0x7f0a005b

    .line 175
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/BackgroundFrame;

    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    .line 176
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setFullMode(Z)V

    .line 177
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getFullBackdropDimLayer()I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDimLayer(I)V

    .line 178
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    .line 180
    invoke-virtual {p0}, Ltv/emby/embyatv/details/ItemListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ItemId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemId:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Ltv/emby/embyatv/details/ItemListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SeriesTimer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 183
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    const-class v1, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    .line 184
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz p1, :cond_3

    .line 186
    new-instance p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p1}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    .line 187
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setSeriesTimerId(Ljava/lang/String;)V

    const-string v0, "SeriesTimer"

    .line 189
    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->buildOverview(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setOverview(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V

    .line 194
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->setSeriesTimerInfo(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V

    .line 195
    new-instance p1, Ltv/emby/embyatv/details/ItemListActivity$2;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/details/ItemListActivity$2;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->registerMessageListener(Ltv/emby/embyatv/base/IMessageListener;)V

    goto :goto_1

    .line 221
    :cond_3
    new-instance p1, Ltv/emby/embyatv/details/ItemListActivity$3;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/details/ItemListActivity$3;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->registerMessageListener(Ltv/emby/embyatv/base/IMessageListener;)V

    .line 231
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemId:Ljava/lang/String;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->loadItem(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_4
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltv/emby/embyatv/startup/StartupActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Ltv/emby/embyatv/details/ItemListActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 314
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onPause()V

    .line 315
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->stopRotate()V

    .line 316
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->trackAudioEvents:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mAudioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->removeAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 238
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onResume()V

    .line 239
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->rotateBackdrops()V

    .line 240
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->trackAudioEvents:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mAudioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->addAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V

    .line 243
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mAudioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    goto :goto_0

    :cond_0
    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/AudioEventListener;->onPlaybackStateChange(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 247
    :cond_1
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->firstTime:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/details/ItemListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mCurrentRow:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mCurrentRow:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    invoke-virtual {v2}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mCurrentRow:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    invoke-virtual {v2}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mCurrentRow:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    invoke-virtual {v2}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLastDeletedItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLastDeletedItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/details/ListItemAdapter;->removeItem(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->refreshVisibleRows()V

    .line 250
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/TvApp;->setLastDeletedItemId(Ljava/lang/String;)V

    .line 251
    iput-boolean v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->firstTime:Z

    goto/16 :goto_1

    .line 252
    :cond_2
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->firstTime:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastDeletedItemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastDeletedItemId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    invoke-virtual {p0}, Ltv/emby/embyatv/details/ItemListActivity;->finish()V

    goto/16 :goto_1

    .line 255
    :cond_3
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->firstTime:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastPlayback()Ljava/util/Calendar;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->lastUpdated:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->isFavoriteOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastFavoriteUpdate()J

    move-result-wide v2

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->lastUpdated:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 256
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemId:Ljava/lang/String;

    const-string v2, "VIDEO_QUEUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Ltv/emby/embyatv/details/ItemListActivity$4;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/ItemListActivity$4;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    const-wide/16 v3, 0x2ee

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    const-string v0, "SeriesTimer"

    .line 273
    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Video"

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mCurrentRow:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    if-eqz v0, :cond_7

    .line 274
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mCurrentRow:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v0

    .line 276
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ltv/emby/embyatv/details/ItemListActivity$5;

    invoke-direct {v3, p0, v0}, Ltv/emby/embyatv/details/ItemListActivity$5;-><init>(Ltv/emby/embyatv/details/ItemListActivity;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 305
    :cond_6
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->firstTime:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSupportsResume()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastMusicPlayback()J

    move-result-wide v2

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->lastUpdated:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    .line 306
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->loadItems()V

    .line 309
    :cond_7
    :goto_1
    iput-boolean v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->firstTime:Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 321
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onStop()V

    .line 322
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->stopRotate()V

    return-void
.end method

.method public setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 535
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    const-string p1, "Season"

    .line 539
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "Series"

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "TvChannel"

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 541
    iput-boolean v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->trackAudioEvents:Z

    .line 542
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    const-string v1, "Video"

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setMediaType(Ljava/lang/String;)V

    .line 545
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    .line 546
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v0, Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v0, v1, p1}, Ltv/emby/embyatv/details/ListItemAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    .line 548
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->setItems(Ljava/util/List;)V

    .line 549
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 552
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    new-instance v0, Ltv/emby/embyatv/details/ItemListActivity$15;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ItemListActivity$15;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->setDetailGotFocusListener(Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;)V

    .line 560
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    new-instance v0, Ltv/emby/embyatv/details/ItemListActivity$16;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ItemListActivity$16;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->setRowSelectedListener(Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;)V

    const-string p1, "Video"

    .line 568
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 569
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->mItemAdapter:Ltv/emby/embyatv/details/ListItemAdapter;

    new-instance v0, Ltv/emby/embyatv/details/ItemListActivity$17;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ItemListActivity$17;-><init>(Ltv/emby/embyatv/details/ItemListActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->setOnFiltersChanged(Ltv/emby/embyatv/model/GenericEvent;)V

    .line 577
    :cond_2
    invoke-direct {p0}, Ltv/emby/embyatv/details/ItemListActivity;->loadItems()V

    return-void
.end method

.method public setRecSeriesTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRecTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected updateBackground(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 797
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->lastBdUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setImageUrl(Ljava/lang/String;)V

    .line 799
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity;->lastBdUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method
