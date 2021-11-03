.class public Ltv/emby/embyatv/details/FullDetailsActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "FullDetailsActivity.java"

# interfaces
.implements Ltv/emby/embyatv/ui/IRecordingIndicatorView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;,
        Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;,
        Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;
    }
.end annotation


# static fields
.field public static BACKDROP_ROTATION_INTERVAL:I = 0x1f40

.field private static buttonTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static buttonTypes:[Ljava/lang/String;

.field private static directPlayableTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static directPlayableTypes:[Ljava/lang/String;


# instance fields
.field private BUTTON_SIZE:I

.field collapsedOptions:I

.field private deleteButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private directPlayed:Z

.field private favButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private goToSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field gotRandomContentBd:Z

.field private lastBdUrl:Ljava/lang/String;

.field private mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

.field private mApplication:Ltv/emby/embyatv/TvApp;

.field private mBackdropLoop:Ljava/lang/Runnable;

.field private mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

.field private mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

.field protected mChannelId:Ljava/lang/String;

.field private mClockLoop:Ljava/lang/Runnable;

.field protected mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

.field protected mCurrentRow:Landroidx/leanback/widget/ListRow;

.field private mDefaultStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

.field private mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

.field private mDorPresenter:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

.field protected mItemId:Ljava/lang/String;

.field private mLastUpdated:Ljava/util/Calendar;

.field private mListRowPresenter:Ltv/emby/embyatv/presentation/CustomListRowPresenter;

.field private mLoopHandler:Landroid/os/Handler;

.field protected mNextUpRow:Landroidx/leanback/widget/ListRow;

.field private mPrevButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private mPrevItemId:Ljava/lang/String;

.field protected mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

.field private mRecSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private mRecordButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

.field private mRecordingSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private mResumeButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

.field private mSeriesSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private mThemeSong:Lmediabrowser/model/dto/BaseItemDto;

.field private mWatchedToggleButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private markWatchedListener:Landroid/view/View$OnClickListener;

.field private moreButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field moreMenuListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private playButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private posterHeight:I

.field private posterWidth:I

.field private queueButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private refreshButton:Ltv/emby/embyatv/ui/TextUnderButton;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "Episode"

    const-string v1, "Movie"

    const-string v2, "BoxSet"

    const-string v3, "Series"

    const-string v4, "Season"

    const-string v5, "Folder"

    const-string v6, "Video"

    const-string v7, "Recording"

    const-string v8, "Program"

    const-string v9, "ChannelVideoItem"

    const-string v10, "Trailer"

    const-string v11, "MusicArtist"

    const-string v12, "Person"

    const-string v13, "MusicVideo"

    const-string v14, "SeriesTimer"

    .line 350
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/details/FullDetailsActivity;->buttonTypes:[Ljava/lang/String;

    .line 351
    sget-object v0, Ltv/emby/embyatv/details/FullDetailsActivity;->buttonTypes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/details/FullDetailsActivity;->buttonTypeList:Ljava/util/List;

    const-string v0, "Episode"

    const-string v1, "Movie"

    const-string v2, "Video"

    const-string v3, "Recording"

    const-string v4, "Program"

    .line 352
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/details/FullDetailsActivity;->directPlayableTypes:[Ljava/lang/String;

    .line 353
    sget-object v0, Ltv/emby/embyatv/details/FullDetailsActivity;->directPlayableTypes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/details/FullDetailsActivity;->directPlayableTypeList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLoopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->directPlayed:Z

    .line 599
    iput-boolean v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->gotRandomContentBd:Z

    const/4 v1, 0x0

    .line 1165
    iput-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->favButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1166
    iput-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->goToSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1167
    iput-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->queueButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1168
    iput-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->deleteButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1169
    iput-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1171
    iput-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->playButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1634
    iput v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    .line 1672
    new-instance v0, Ltv/emby/embyatv/details/FullDetailsActivity$39;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$39;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->moreMenuListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 1778
    new-instance v0, Ltv/emby/embyatv/details/FullDetailsActivity$42;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$42;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->markWatchedListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private ShowPremiereMessage()V
    .locals 3

    .line 1149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Emby Premiere Required"

    .line 1150
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Recording functionality requires an active Emby Premiere subscription.  Learn more at http://emby.media/premiere."

    .line 1151
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1003b8

    const/4 v2, 0x0

    .line 1152
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$19;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$19;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    const v2, 0x7f1003b6

    .line 1153
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->showMoreButtonIfNeeded()V

    return-void
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->updatePlayedDate()V

    return-void
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->updateWatched()V

    return-void
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->updatePoster()V

    return-void
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ljava/lang/String;
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getEndTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDorPresenter:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    return-object p0
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroid/os/Handler;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLoopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    return-object p0
.end method

.method static synthetic access$1800(Ltv/emby/embyatv/details/FullDetailsActivity;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->processPlay(I)V

    return-void
.end method

.method static synthetic access$1902(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mThemeSong:Lmediabrowser/model/dto/BaseItemDto;

    return-object p1
.end method

.method static synthetic access$200(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshCurrentItem()V

    return-void
.end method

.method static synthetic access$2000(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->playThemeSong()V

    return-void
.end method

.method static synthetic access$2100(Ltv/emby/embyatv/details/FullDetailsActivity;)I
    .locals 0

    .line 104
    iget p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->posterHeight:I

    return p0
.end method

.method static synthetic access$2102(Ltv/emby/embyatv/details/FullDetailsActivity;I)I
    .locals 0

    .line 104
    iput p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->posterHeight:I

    return p1
.end method

.method static synthetic access$2202(Ltv/emby/embyatv/details/FullDetailsActivity;I)I
    .locals 0

    .line 104
    iput p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->posterWidth:I

    return p1
.end method

.method static synthetic access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    return-object p0
.end method

.method static synthetic access$2302(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/MyDetailsOverviewRow;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    return-object p1
.end method

.method static synthetic access$2400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/api/StreamInfo;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDefaultStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    return-object p0
.end method

.method static synthetic access$2402(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/api/StreamInfo;)Ltv/emby/embyatv/api/StreamInfo;
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDefaultStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    return-object p1
.end method

.method static synthetic access$2500(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/presentation/CustomListRowPresenter;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mListRowPresenter:Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    return-object p0
.end method

.method static synthetic access$2502(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/presentation/CustomListRowPresenter;)Ltv/emby/embyatv/presentation/CustomListRowPresenter;
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mListRowPresenter:Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    return-object p1
.end method

.method static synthetic access$2600(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object p0
.end method

.method static synthetic access$2602(Ltv/emby/embyatv/details/FullDetailsActivity;Landroidx/leanback/widget/ArrayObjectAdapter;)Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object p1
.end method

.method static synthetic access$2700(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroidx/leanback/app/RowsSupportFragment;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    return-object p0
.end method

.method static synthetic access$2800(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->updateInfo(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method static synthetic access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    return-object p0
.end method

.method static synthetic access$3000(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->favButton:Ltv/emby/embyatv/ui/TextUnderButton;

    return-object p0
.end method

.method static synthetic access$3100(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemToQueue()V

    return-void
.end method

.method static synthetic access$3200(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->ShowPremiereMessage()V

    return-void
.end method

.method static synthetic access$3300(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->toggleFavorite()V

    return-void
.end method

.method static synthetic access$3400(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->deleteItem()V

    return-void
.end method

.method static synthetic access$3500(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->queueRefresh()V

    return-void
.end method

.method static synthetic access$3600(Ltv/emby/embyatv/details/FullDetailsActivity;)Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mPrevItemId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3602(Ltv/emby/embyatv/details/FullDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mPrevItemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mPrevButton:Ltv/emby/embyatv/ui/TextUnderButton;

    return-object p0
.end method

.method static synthetic access$3800(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->gotoSeries()V

    return-void
.end method

.method static synthetic access$3900(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->queueButton:Ltv/emby/embyatv/ui/TextUnderButton;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/details/FullDetailsActivity;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->directPlayed:Z

    return p0
.end method

.method static synthetic access$4000(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->goToSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    return-object p0
.end method

.method static synthetic access$402(Ltv/emby/embyatv/details/FullDetailsActivity;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->directPlayed:Z

    return p1
.end method

.method static synthetic access$4100(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshButton:Ltv/emby/embyatv/ui/TextUnderButton;

    return-object p0
.end method

.method static synthetic access$4200(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->markUnPlayed()V

    return-void
.end method

.method static synthetic access$4300(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->markPlayed()V

    return-void
.end method

.method static synthetic access$4400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mWatchedToggleButton:Ltv/emby/embyatv/ui/TextUnderButton;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p0
.end method

.method static synthetic access$502(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p1
.end method

.method static synthetic access$600(Ltv/emby/embyatv/details/FullDetailsActivity;)Ljava/util/Calendar;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLastUpdated:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$602(Ltv/emby/embyatv/details/FullDetailsActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLastUpdated:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$700(Ltv/emby/embyatv/details/FullDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->loadItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mResumeButton:Ltv/emby/embyatv/ui/TextUnderButton;

    return-object p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;
    .locals 0

    .line 104
    iget-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->playButton:Ltv/emby/embyatv/ui/TextUnderButton;

    return-object p0
.end method

.method private addButtons(I)V
    .locals 13

    .line 1174
    new-instance v7, Ltv/emby/embyatv/ui/TextUnderButton;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v0, "Series"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f10054b

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_2

    :cond_0
    const v0, 0x7f100590

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v2

    const-wide/16 v5, 0x2710

    div-long/2addr v2, v5

    iget-object v5, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getResumePreroll()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$20;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$20;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    const v2, 0x7f080175

    move-object v0, v7

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v7, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mResumeButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1209
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->CanPlay(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v0

    const/16 v7, 0x8

    if-eqz v0, :cond_b

    .line 1210
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mResumeButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1211
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mResumeButton:Ltv/emby/embyatv/ui/TextUnderButton;

    const-string v1, "Series"

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getCanResume()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    const-string v0, "Program"

    .line 1214
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->programIsRecording(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1215
    new-instance v11, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f080162

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f100549

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$21;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$21;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v11

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1221
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    invoke-virtual {v0, v11}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1222
    invoke-virtual {v11, v7}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1224
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$22;

    invoke-direct {v1, p0, v11}, Ltv/emby/embyatv/details/FullDetailsActivity$22;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/ui/TextUnderButton;)V

    invoke-static {v0, v1}, Ltv/emby/embyatv/livetv/TvManager;->findRecordingByTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    .line 1235
    :cond_5
    new-instance v11, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f080162

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "MusicArtist"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const v0, 0x7f100546

    goto :goto_5

    :cond_7
    :goto_4
    const v0, 0x7f100547

    :goto_5
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$23;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$23;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v11

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v11, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->playButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1241
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->playButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1243
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "MusicArtist"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1244
    :cond_8
    iget-object v11, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    new-instance v12, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f08018f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f1005b4

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$24;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$24;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v12

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v12}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    :cond_9
    const-string v0, "Audio"

    .line 1252
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isLiveTv(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1253
    new-instance v11, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f080057

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f10043f

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$25;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$25;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v11

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v11, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->queueButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1259
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->queueButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    :cond_a
    const-string v0, "MusicArtist"

    .line 1262
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1263
    new-instance v6, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f080141

    const v0, 0x7f1004eb

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ltv/emby/embyatv/details/FullDetailsActivity$26;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$26;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1270
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    invoke-virtual {v0, v6}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1275
    :cond_b
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getLocalTrailerCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getLocalTrailerCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getRemoteTrailers()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getRemoteTrailers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    if-lez v0, :cond_e

    .line 1277
    new-instance v6, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f080142

    const v0, 0x7f1005f7

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ltv/emby/embyatv/details/FullDetailsActivity$27;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$27;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1316
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    invoke-virtual {v0, v6}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1319
    :cond_e
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->canManageRecordings()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1320
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 1322
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v11, 0x4

    if-eqz v0, :cond_11

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1323
    new-instance v12, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const v0, 0x7f080169

    const v2, 0x7f080169

    goto :goto_8

    :cond_f
    const v0, 0x7f08016a

    const v2, 0x7f08016a

    :goto_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f100579

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$28;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$28;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v12

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v12, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1394
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1396
    new-instance v12, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f080087

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f1005a7

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$29;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$29;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v12, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mSeriesSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1403
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mSeriesSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    goto :goto_9

    :cond_10
    const/16 v10, 0x8

    :goto_9
    invoke-virtual {v0, v10}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1405
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mSeriesSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1408
    :cond_11
    new-instance v10, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const v0, 0x7f080166

    const v2, 0x7f080166

    goto :goto_a

    :cond_12
    const v0, 0x7f08016c

    const v2, 0x7f08016c

    :goto_a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f100576

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$30;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$30;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v10

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v10, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1470
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1471
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addRecordingSettingsButton(I)V

    .line 1476
    :cond_13
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 1477
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    if-nez v0, :cond_17

    const-string v0, "MusicArtist"

    .line 1478
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "Person"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1479
    new-instance v10, Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v6}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f08016e

    const v2, 0x7f08016e

    goto :goto_b

    :cond_14
    const v0, 0x7f0801b7

    const v2, 0x7f0801b7

    :goto_b
    const v0, 0x7f100552

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->markWatchedListener:Landroid/view/View$OnClickListener;

    move-object v0, v10

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v10, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mWatchedToggleButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1480
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mWatchedToggleButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1484
    :cond_15
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->CanRate(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1485
    new-instance v10, Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v6}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f080171

    const v2, 0x7f080171

    goto :goto_c

    :cond_16
    const v0, 0x7f0801b9

    const v2, 0x7f0801b9

    :goto_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f1004b4

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$31;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$31;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v10

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v10, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->favButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1491
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->favButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    :cond_17
    const-string v0, "Recording"

    .line 1495
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Movie"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Episode"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Video"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Series"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCanDelete()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1496
    new-instance v6, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f0801a6

    const v0, 0x7f100486

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ltv/emby/embyatv/details/FullDetailsActivity$32;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$32;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v6, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->deleteButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1502
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->deleteButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1506
    :cond_19
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    if-eq v0, v1, :cond_1a

    const-string v0, "Program"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getPolicy()Lmediabrowser/model/users/UserPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/users/UserPolicy;->getIsAdministrator()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1507
    new-instance v10, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f080172

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f10057d

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$33;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$33;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v10

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v10, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1513
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    :cond_1a
    const-string v0, "Episode"

    .line 1516
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1518
    new-instance v8, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f080164

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f10056e

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$34;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$34;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v8, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mPrevButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1529
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mPrevButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v7}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1530
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mPrevButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1533
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v9, :cond_1b

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v9, :cond_1b

    .line 1534
    new-instance v0, Lmediabrowser/model/querying/EpisodeQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/EpisodeQuery;-><init>()V

    .line 1535
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/EpisodeQuery;->setUserId(Ljava/lang/String;)V

    .line 1536
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/EpisodeQuery;->setSeriesId(Ljava/lang/String;)V

    .line 1537
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/EpisodeQuery;->setAdjacentTo(Ljava/lang/String;)V

    .line 1538
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/FullDetailsActivity$35;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$35;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetEpisodesAsync(Lmediabrowser/model/querying/EpisodeQuery;Lmediabrowser/apiinteraction/Response;)V

    .line 1554
    :cond_1b
    new-instance v6, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f0801a9

    const v0, 0x7f1004d1

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ltv/emby/embyatv/details/FullDetailsActivity$36;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$36;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v6, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->goToSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1560
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->goToSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1564
    :cond_1c
    new-instance v6, Ltv/emby/embyatv/ui/TextUnderButton;

    const v2, 0x7f080111

    const v0, 0x7f100513

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ltv/emby/embyatv/details/FullDetailsActivity$37;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$37;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v6, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->moreButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1610
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->moreButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v7}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1611
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->moreButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    .line 1612
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->showMoreButtonIfNeeded()V

    return-void
.end method

.method private addIncludedRow(Landroidx/leanback/widget/ArrayObjectAdapter;I)I
    .locals 5

    .line 957
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.3.0"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const/4 v1, 0x1

    .line 959
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/ItemQuery;->setListItemIds([Ljava/lang/String;)V

    const-string v2, "BoxSet"

    const-string v3, "Playlist"

    .line 960
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    .line 962
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/ItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    const/16 v2, 0x32

    .line 963
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 964
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    const/16 v4, 0x12c

    invoke-direct {v3, v1, v4}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    invoke-direct {v2, v0, v3, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    add-int/lit8 v0, p2, 0x1

    .line 965
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const v3, 0x7f1004ea

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v2, p2, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    move p2, v0

    :cond_0
    return p2
.end method

.method private addInfoRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 6

    .line 972
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_enable_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 973
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 974
    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 975
    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media Details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const-string v4, ""

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 976
    new-instance v3, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v4, Ltv/emby/embyatv/presentation/InfoCardPresenter;

    invoke-direct {v4}, Ltv/emby/embyatv/presentation/InfoCardPresenter;-><init>()V

    invoke-direct {v3, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 977
    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmediabrowser/model/entities/MediaStream;

    .line 978
    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 981
    :cond_3
    new-instance v1, Landroidx/leanback/widget/ListRow;

    invoke-direct {v1, v2, v3}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private addItemToQueue()V
    .locals 4

    const-string v0, "Audio"

    .line 1035
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lmediabrowser/model/dto/BaseItemDto;

    const/4 v2, 0x0

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->addToAudioQueue(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private addRecordingSettingsButton(I)V
    .locals 8

    .line 1617
    new-instance v7, Ltv/emby/embyatv/ui/TextUnderButton;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f1005a9

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$38;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$38;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    const v2, 0x7f080087

    move-object v0, v7

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v7, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordingSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

    .line 1624
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordingSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1626
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordingSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V

    return-void
.end method

.method private deleteItem()V
    .locals 9

    const-string v0, "Series"

    .line 1077
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1078
    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_1

    const v5, 0x7f10064e

    .line 1081
    invoke-virtual {p0, v5}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v7

    invoke-static {v7}, Ltv/emby/embyatv/util/Utils;->GetSubName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const v5, 0x7f10064d

    .line 1082
    invoke-virtual {p0, v5}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const v5, 0x7f10063c

    .line 1083
    invoke-virtual {p0, v5}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1084
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f100486

    .line 1085
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1086
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    if-eqz v0, :cond_3

    const-string v0, "%s %s"

    new-array v6, v4, [Ljava/lang/Object;

    .line 1087
    invoke-virtual {p0, v7}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    const v8, 0x7f1005a5

    invoke-virtual {p0, v8}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v7}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$17;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$17;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v5, 0x7f100464

    .line 1108
    invoke-virtual {p0, v5}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/details/FullDetailsActivity$16;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$16;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v3, :cond_4

    const-string v3, "%s %s"

    .line 1115
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const v2, 0x7f1004a8

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/FullDetailsActivity$18;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$18;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1142
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private getEndTime()Ljava/lang/String;
    .locals 8

    .line 1018
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_2

    const-string v0, "MusicArtist"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Person"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1019
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getOriginalRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1020
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const-string v1, "Program"

    .line 1021
    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x2710

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v2

    add-long/2addr v4, v6

    .line 1022
    :goto_0
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getCanResume()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v6, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v6}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v6

    sub-long/2addr v0, v6

    div-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 1024
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1026
    :cond_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private getRunTime()Ljava/lang/String;
    .locals 6

    .line 1013
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getOriginalRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x23c34600

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const v0, 0x7f100510

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private gotoSeries()V
    .locals 3

    .line 1056
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    const-class v2, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ItemId"

    .line 1057
    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private loadItem(Ljava/lang/String;)V
    .locals 3

    .line 367
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mChannelId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    if-nez v0, :cond_0

    .line 370
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mChannelId:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/FullDetailsActivity$5;

    invoke-direct {v2, p0, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$5;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvChannelAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/FullDetailsActivity$6;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$6;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    .line 418
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLastUpdated:Ljava/util/Calendar;

    return-void
.end method

.method private markPlayed()V
    .locals 5

    .line 1810
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/details/FullDetailsActivity$43;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$43;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lmediabrowser/apiinteraction/ApiClient;->MarkPlayedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private markUnPlayed()V
    .locals 4

    .line 1830
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/details/FullDetailsActivity$44;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$44;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->MarkUnplayedAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private playThemeSong()V
    .locals 2

    .line 422
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mThemeSong:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mThemeSong:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->playThemeSong(Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->stopThemeSong()V

    :goto_0
    return-void
.end method

.method private processPlay(I)V
    .locals 2

    .line 1631
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->play(Lmediabrowser/model/dto/BaseItemDto;IZ)V

    return-void
.end method

.method private queueRefresh()V
    .locals 3

    .line 1706
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->QueueRefresh(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    const v0, 0x7f100646

    .line 1707
    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method private refreshCurrentItem()V
    .locals 2

    .line 1062
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_0

    const-string v0, "Photo"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MusicArtist"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MusicAlbum"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 1063
    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Playlist"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AllEpisodes"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$15;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$15;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->refresh(Lmediabrowser/apiinteraction/EmptyResponse;)V

    :cond_0
    return-void
.end method

.method private rotateBackdrops()V
    .locals 4

    .line 1884
    new-instance v0, Ltv/emby/embyatv/details/FullDetailsActivity$46;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$46;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackdropLoop:Ljava/lang/Runnable;

    .line 1892
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackdropLoop:Ljava/lang/Runnable;

    sget v2, Ltv/emby/embyatv/details/FullDetailsActivity;->BACKDROP_ROTATION_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showMoreButtonIfNeeded()V
    .locals 5

    .line 1637
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDetailsOverviewRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getVisibleActions()I

    move-result v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->moreButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v1}, Ltv/emby/embyatv/ui/TextUnderButton;->isVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    const/4 v1, 0x6

    const/16 v3, 0x8

    if-le v0, v1, :cond_5

    .line 1641
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->favButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mResumeButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mResumeButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/TextUnderButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->favButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1643
    iget v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    .line 1645
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->queueButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_2

    .line 1646
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->queueButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1647
    iget v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    .line 1649
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->goToSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_3

    .line 1650
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->goToSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1651
    iget v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    .line 1653
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_4

    .line 1654
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1655
    iget v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    .line 1658
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->moreButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    goto :goto_2

    .line 1660
    :cond_5
    iput v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->collapsedOptions:I

    .line 1661
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->favButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->favButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1662
    :cond_6
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->queueButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->queueButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1663
    :cond_7
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->goToSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->goToSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1664
    :cond_8
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->deleteButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->deleteButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1665
    :cond_9
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshButton:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1667
    :cond_a
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->moreButton:Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->CanEditSubs(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->CanPlay(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "TvChannel"

    iget-object v4, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    const/16 v2, 0x8

    :cond_c
    :goto_1
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private startClock()V
    .locals 4

    .line 331
    new-instance v0, Ltv/emby/embyatv/details/FullDetailsActivity$4;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$4;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mClockLoop:Ljava/lang/Runnable;

    .line 341
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mClockLoop:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopClock()V
    .locals 2

    .line 345
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLoopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mClockLoop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mClockLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private stopRotate()V
    .locals 2

    .line 1896
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLoopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackdropLoop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackdropLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private toggleFavorite()V
    .locals 5

    .line 1044
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    .line 1045
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v4, Ltv/emby/embyatv/details/FullDetailsActivity$14;

    invoke-direct {v4, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$14;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lmediabrowser/apiinteraction/ApiClient;->UpdateFavoriteStatusAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private updateInfo(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 989
    sget-object v0, Ltv/emby/embyatv/details/FullDetailsActivity;->buttonTypeList:Ljava/util/List;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->BUTTON_SIZE:I

    invoke-direct {p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->addButtons(I)V

    :cond_0
    const-string v0, "Person"

    .line 992
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->updateBackground(Ljava/lang/String;)V

    .line 994
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLastUpdated:Ljava/util/Calendar;

    return-void
.end method

.method private updatePlayedDate()V
    .locals 0

    return-void
.end method

.method private updatePoster()V
    .locals 7

    .line 356
    invoke-virtual {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->posterHeight:I

    invoke-static/range {v1 .. v6}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDorPresenter:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    invoke-virtual {v2}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->getPosterView()Landroid/widget/ImageView;

    move-result-object v2

    iget v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->posterWidth:I

    iget v4, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->posterHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method private updateWatched()V
    .locals 2

    .line 361
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mWatchedToggleButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mWatchedToggleButton:Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08016e

    goto :goto_0

    :cond_0
    const v1, 0x7f0801b7

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/TextUnderButton;->setImageResource(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 601
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v7, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "BoxSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "MusicVideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "Trailer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "Episode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v2, "Video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_5
    const-string v2, "Movie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v2, "Series"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "MusicArtist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v2, "Person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const v14, 0x7f100517

    const v15, 0x7f10046a

    const/16 v6, 0xf0

    const/16 v16, 0x14

    const v5, 0x7f100467

    const v4, 0x7f100515

    const/16 v2, 0x168

    const/16 v13, 0x12c

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_b

    .line 940
    :pswitch_0
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 941
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v1, v12}, Ltv/emby/embyatv/util/Utils;->buildChapterItems(Lmediabrowser/model/dto/BaseItemDto;Z)Ljava/util/List;

    move-result-object v1

    .line 942
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 943
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3, v12, v6}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    invoke-direct {v2, v1, v3, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 944
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v1, v15}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v2, v9, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    const/4 v9, 0x1

    .line 948
    :cond_1
    invoke-direct {v0, v8, v9}, Ltv/emby/embyatv/details/FullDetailsActivity;->addIncludedRow(Landroidx/leanback/widget/ArrayObjectAdapter;I)I

    .line 949
    invoke-direct/range {p0 .. p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addInfoRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_b

    .line 895
    :pswitch_1
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 897
    new-instance v2, Lmediabrowser/model/querying/EpisodeQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/EpisodeQuery;-><init>()V

    .line 898
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/EpisodeQuery;->setSeasonId(Ljava/lang/String;)V

    .line 899
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/EpisodeQuery;->setSeriesId(Ljava/lang/String;)V

    .line 900
    new-array v1, v11, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v9

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v12

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/EpisodeQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 901
    new-instance v10, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    const/16 v1, 0x118

    invoke-direct {v5, v12, v1}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    move-object v1, v10

    const/16 v14, 0xf0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/EpisodeQuery;IZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 902
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v10, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentItemIndex(I)V

    const v1, 0x7f100514

    .line 903
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getSeasonName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v10, v7, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    move-result-object v1

    .line 904
    new-instance v2, Ltv/emby/embyatv/details/FullDetailsActivity$13;

    invoke-direct {v2, v0, v10, v8, v1}, Ltv/emby/embyatv/details/FullDetailsActivity$13;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ArrayObjectAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v10, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_3

    :cond_3
    const/16 v14, 0xf0

    .line 916
    :goto_3
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_6

    .line 917
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 918
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    const-string v6, "GuestStar"

    .line 919
    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemPerson;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 921
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 922
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lmediabrowser/model/dto/BaseItemPerson;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmediabrowser/model/dto/BaseItemPerson;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3, v12, v13}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    invoke-direct {v2, v1, v3, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>([Lmediabrowser/model/dto/BaseItemPerson;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 923
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v3, 0x7f1004d4

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v2, v9, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    const/4 v9, 0x1

    .line 928
    :cond_6
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 929
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->buildChapterItems(Lmediabrowser/model/dto/BaseItemDto;)Ljava/util/List;

    move-result-object v1

    .line 930
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3, v12, v14}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    invoke-direct {v2, v1, v3, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    add-int/lit8 v1, v9, 0x1

    .line 931
    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v3, v15}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v2, v9, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    goto :goto_5

    :cond_7
    move v1, v9

    .line 934
    :goto_5
    invoke-direct {v0, v8, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addIncludedRow(Landroidx/leanback/widget/ArrayObjectAdapter;I)I

    .line 935
    invoke-direct/range {p0 .. p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addInfoRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_b

    .line 824
    :pswitch_2
    new-instance v1, Lmediabrowser/model/querying/NextUpQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/NextUpQuery;-><init>()V

    .line 825
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/NextUpQuery;->setUserId(Ljava/lang/String;)V

    .line 826
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/NextUpQuery;->setSeriesId(Ljava/lang/String;)V

    .line 827
    new-array v2, v11, [Lmediabrowser/model/querying/ItemFields;

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v2, v9

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->LocationType:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v2, v12

    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/NextUpQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 828
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v1, v9, v6, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/NextUpQuery;ZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 829
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const v6, 0x7f100524

    invoke-virtual {v1, v6}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v2, v9, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mNextUpRow:Landroidx/leanback/widget/ListRow;

    .line 830
    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$11;

    invoke-direct {v1, v0, v2}, Ltv/emby/embyatv/details/FullDetailsActivity$11;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 844
    new-instance v1, Lmediabrowser/model/querying/SeasonQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/SeasonQuery;-><init>()V

    .line 845
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/SeasonQuery;->setSeriesId(Ljava/lang/String;)V

    .line 846
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/SeasonQuery;->setUserId(Ljava/lang/String;)V

    .line 847
    new-array v2, v11, [Lmediabrowser/model/querying/ItemFields;

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v2, v9

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v2, v12

    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/SeasonQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 848
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v1, v6, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SeasonQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 849
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v6, 0x7f10059e

    invoke-virtual {v1, v6}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v2, v12, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 850
    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$12;

    invoke-direct {v1, v0, v2}, Ltv/emby/embyatv/details/FullDetailsActivity$12;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 870
    new-instance v1, Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;-><init>()V

    .line 871
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setUserId(Ljava/lang/String;)V

    .line 872
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setParentId(Ljava/lang/String;)V

    .line 873
    new-array v2, v12, [Lmediabrowser/model/querying/ItemFields;

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v2, v9

    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 874
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v1, v6, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/UpcomingEpisodesQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 875
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v6, 0x7f100605

    invoke-virtual {v1, v6}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v2, v11, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 877
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_8

    .line 878
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v2

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6, v12, v13}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    invoke-direct {v1, v2, v6, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>([Lmediabrowser/model/dto/BaseItemPerson;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 879
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2, v5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v1, v10, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    goto :goto_6

    :cond_8
    const/4 v3, 0x3

    .line 883
    :goto_6
    invoke-direct {v0, v8, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->addIncludedRow(Landroidx/leanback/widget/ArrayObjectAdapter;I)I

    move-result v1

    .line 885
    new-instance v2, Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/SimilarItemsQuery;-><init>()V

    .line 886
    new-array v3, v11, [Lmediabrowser/model/querying/ItemFields;

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v9

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v12

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 887
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setUserId(Ljava/lang/String;)V

    .line 888
    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setId(Ljava/lang/String;)V

    .line 889
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 890
    new-instance v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    sget-object v5, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v3, v2, v5, v6, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 891
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v2, v4}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v3, v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    goto/16 :goto_b

    .line 786
    :pswitch_3
    new-instance v2, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 787
    new-array v1, v12, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 788
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    const-string v1, "ProductionYear"

    .line 789
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 790
    sget-object v1, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 791
    new-array v1, v12, [Ljava/lang/String;

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setAlbumArtistIds([Ljava/lang/String;)V

    .line 792
    invoke-virtual {v2, v12}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    .line 793
    invoke-virtual {v2, v12}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    const-string v1, "MusicAlbum"

    .line 794
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 795
    new-instance v7, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/16 v3, 0x64

    const/4 v5, 0x0

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    move-object v1, v7

    const v10, 0x7f100515

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 796
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f100443

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v7, v9, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 798
    invoke-direct {v0, v8, v12}, Ltv/emby/embyatv/details/FullDetailsActivity;->addIncludedRow(Landroidx/leanback/widget/ArrayObjectAdapter;I)I

    move-result v7

    .line 801
    new-instance v2, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 802
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 803
    new-array v1, v12, [Ljava/lang/String;

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setContributingArtistIds([Ljava/lang/String;)V

    .line 804
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 805
    invoke-virtual {v2, v12}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    .line 806
    new-array v1, v11, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v9

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->ProductionYear:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v12

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 807
    invoke-virtual {v2, v9}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    const-string v1, "MusicAlbum"

    .line 808
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    const-string v1, "ProductionYear"

    .line 809
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 810
    sget-object v1, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 811
    new-instance v13, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    move-object v1, v13

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    add-int/lit8 v1, v7, 0x1

    const v2, 0x7f1000fc

    .line 812
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v13, v7, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 814
    new-instance v2, Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/SimilarItemsQuery;-><init>()V

    .line 815
    new-array v3, v11, [Lmediabrowser/model/querying/ItemFields;

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v3, v9

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v3, v12

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 816
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setUserId(Ljava/lang/String;)V

    .line 817
    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setId(Ljava/lang/String;)V

    .line 818
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 819
    new-instance v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    sget-object v4, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v3, v2, v4, v5, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 820
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v2, v10}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v3, v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    goto/16 :goto_b

    .line 747
    :pswitch_4
    new-instance v3, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v3}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 748
    new-array v1, v12, [Lmediabrowser/model/querying/ItemFields;

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v1, v9

    invoke-virtual {v3, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 749
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 750
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmediabrowser/model/querying/ItemQuery;->setParentId(Ljava/lang/String;)V

    const-string v1, "Movie"

    const-string v4, "BoxSet"

    .line 751
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 752
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmediabrowser/model/querying/ItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 753
    invoke-virtual {v3, v12}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    .line 754
    new-instance v15, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-instance v1, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v1, v12, v2}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    move-object/from16 v16, v1

    move-object v1, v15

    const/16 v10, 0x168

    move-object v2, v3

    move v3, v4

    move v4, v6

    const v6, 0x7f100467

    move v5, v7

    const v7, 0x7f100467

    move-object/from16 v6, v16

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 755
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1, v14}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v15, v9, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 757
    new-instance v2, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 758
    new-array v1, v11, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v9

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v12

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 759
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 760
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setParentId(Ljava/lang/String;)V

    const-string v1, "Series"

    const-string v3, "Episode"

    .line 761
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 762
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 763
    invoke-virtual {v2, v12}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    .line 764
    new-instance v14, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6, v12, v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 765
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f1005fd

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v14, v12, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 767
    new-instance v2, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 768
    new-array v1, v11, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v9

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v12

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 769
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 770
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setParentId(Ljava/lang/String;)V

    const-string v1, "Video"

    const-string v3, "MusicVideo"

    const-string v4, "TvChannel"

    .line 771
    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 772
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 773
    invoke-virtual {v2, v12}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    .line 774
    new-instance v9, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/16 v3, 0x64

    const/4 v4, 0x0

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6, v12, v13}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 775
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f100610

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v9, v11, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 778
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_12

    .line 779
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3, v12, v13}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    invoke-direct {v1, v2, v3, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>([Lmediabrowser/model/dto/BaseItemPerson;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 780
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v3, 0x7f100467

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v8, v1, v3, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    goto/16 :goto_b

    :pswitch_5
    const/16 v10, 0x168

    .line 666
    new-instance v2, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 667
    new-array v1, v12, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 668
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 669
    new-array v1, v12, [Ljava/lang/String;

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setPersonIds([Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2, v12}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    const-string v1, "Movie"

    .line 671
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 672
    new-instance v11, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6, v12, v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    move-object v1, v11

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 673
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1, v14}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v11, v9, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 674
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropCount()I

    move-result v1

    if-nez v1, :cond_9

    .line 675
    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$8;

    invoke-direct {v1, v0, v11}, Ltv/emby/embyatv/details/FullDetailsActivity$8;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v11, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 691
    :cond_9
    new-instance v2, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 692
    new-array v1, v12, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 693
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 694
    new-array v1, v12, [Ljava/lang/String;

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setPersonIds([Ljava/lang/String;)V

    .line 695
    invoke-virtual {v2, v12}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    const-string v1, "Series"

    .line 696
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 697
    new-instance v11, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6, v12, v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    move-object v1, v11

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 698
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f1005fd

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v11, v12, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 699
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropCount()I

    move-result v1

    if-nez v1, :cond_a

    .line 700
    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$9;

    invoke-direct {v1, v0, v11}, Ltv/emby/embyatv/details/FullDetailsActivity$9;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v11, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 713
    :cond_a
    new-instance v2, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 714
    new-array v1, v12, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 715
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 716
    new-array v1, v12, [Ljava/lang/String;

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setPersonIds([Ljava/lang/String;)V

    .line 717
    invoke-virtual {v2, v12}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    const-string v1, "Episode"

    .line 718
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 719
    new-instance v11, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/16 v3, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6, v12, v13}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    move-object v1, v11

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 720
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f1004aa

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v11, v12, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 721
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropCount()I

    move-result v1

    if-nez v1, :cond_b

    .line 722
    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$10;

    invoke-direct {v1, v0, v11}, Ltv/emby/embyatv/details/FullDetailsActivity$10;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v11, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 735
    :cond_b
    new-instance v2, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 736
    new-array v1, v12, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 737
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 738
    new-array v1, v12, [Ljava/lang/String;

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setPersonIds([Ljava/lang/String;)V

    .line 739
    invoke-virtual {v2, v12}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    const-string v1, "Trailer"

    .line 740
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 741
    new-instance v9, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6, v12, v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    move-object v1, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 742
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f1005f7

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v9, v12, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    goto/16 :goto_b

    :pswitch_6
    const v3, 0x7f100467

    const v10, 0x7f100515

    .line 646
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_c

    .line 647
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v2

    new-instance v4, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v4, v12, v13}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    invoke-direct {v1, v2, v4, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>([Lmediabrowser/model/dto/BaseItemPerson;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 648
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v1, v9, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 652
    :goto_7
    new-instance v2, Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/SimilarItemsQuery;-><init>()V

    .line 653
    new-array v3, v12, [Lmediabrowser/model/querying/ItemFields;

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 654
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setUserId(Ljava/lang/String;)V

    .line 655
    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setId(Ljava/lang/String;)V

    const/16 v3, 0xa

    .line 656
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 658
    invoke-direct {v0, v8, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addIncludedRow(Landroidx/leanback/widget/ArrayObjectAdapter;I)I

    move-result v1

    .line 660
    new-instance v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    sget-object v4, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v3, v2, v4, v5, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 661
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v2, v10}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v3, v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 662
    invoke-direct/range {p0 .. p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addInfoRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_b

    :pswitch_7
    const v3, 0x7f100467

    const v10, 0x7f100515

    const/16 v14, 0xf0

    .line 607
    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_d

    .line 608
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v2

    new-instance v4, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v4, v12, v13}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    invoke-direct {v1, v2, v4, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>([Lmediabrowser/model/dto/BaseItemPerson;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 609
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v1, v9, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 613
    :goto_8
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/querying/SpecialsQuery;

    iget-object v4, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ltv/emby/embyatv/querying/SpecialsQuery;-><init>(Ljava/lang/String;)V

    new-instance v4, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v4}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v3, v4, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ltv/emby/embyatv/querying/SpecialsQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v4, 0x7f1004b0

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v2, v11, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 616
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 617
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->buildChapterItems(Lmediabrowser/model/dto/BaseItemDto;)Ljava/util/List;

    move-result-object v2

    .line 618
    new-instance v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v4, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v4, v12, v14}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    invoke-direct {v3, v2, v4, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    add-int/lit8 v2, v1, 0x1

    .line 619
    iget-object v4, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v4, v15}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v3, v1, v4}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    move v1, v2

    .line 623
    :cond_e
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getLocalTrailerCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getLocalTrailerCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    :goto_9
    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getRemoteTrailers()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getRemoteTrailers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v2, v3

    if-le v2, v12, :cond_11

    .line 625
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/querying/TrailersQuery;

    iget-object v4, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v3, v4}, Ltv/emby/embyatv/querying/TrailersQuery;-><init>(Lmediabrowser/model/dto/BaseItemDto;)V

    new-instance v4, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v4}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v3, v4, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ltv/emby/embyatv/querying/TrailersQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    add-int/lit8 v3, v1, 0x1

    iget-object v4, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v5, 0x7f1005f7

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v2, v1, v4}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    move v1, v3

    .line 628
    :cond_11
    invoke-direct {v0, v8, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addIncludedRow(Landroidx/leanback/widget/ArrayObjectAdapter;I)I

    move-result v1

    .line 631
    new-instance v2, Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/SimilarItemsQuery;-><init>()V

    .line 632
    new-array v3, v12, [Lmediabrowser/model/querying/ItemFields;

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 633
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setUserId(Ljava/lang/String;)V

    .line 634
    iget-object v3, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setId(Ljava/lang/String;)V

    const/16 v3, 0xa

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/querying/SimilarItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 637
    new-instance v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    sget-object v4, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v3, v2, v4, v5, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 638
    iget-object v2, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v2, v10}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v3, v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;

    .line 640
    invoke-direct/range {p0 .. p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->addInfoRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    :cond_12
    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71b7788b -> :sswitch_8
        -0x711b8e54 -> :sswitch_7
        -0x6c991569 -> :sswitch_6
        0x4714f10 -> :sswitch_5
        0x4ed245b -> :sswitch_4
        0x72a55db -> :sswitch_3
        0x239c2d13 -> :sswitch_2
        0x47d02176 -> :sswitch_1
        0x76f3dab7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected addItemRow(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILjava/lang/String;)Landroidx/leanback/widget/ListRow;
    .locals 3

    .line 591
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    int-to-long v1, p3

    invoke-direct {v0, v1, v2, p4}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 592
    new-instance p3, Landroidx/leanback/widget/ListRow;

    invoke-direct {p3, v0, p2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 593
    invoke-virtual {p1, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 594
    invoke-virtual {p2, p3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 595
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    return-object p3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 148
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 153
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const p1, 0x7f0d0020

    .line 155
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->setContentView(I)V

    const/16 p1, 0x28

    .line 157
    invoke-static {p0, p1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->BUTTON_SIZE:I

    .line 158
    iput-object p0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mActivity:Ltv/emby/embyatv/details/FullDetailsActivity;

    const p1, 0x7f0a005b

    .line 160
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/BackgroundFrame;

    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    .line 161
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setFullMode(Z)V

    .line 162
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getFullBackdropDimLayer()I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDimLayer(I)V

    .line 163
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const-string v0, "light"

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setBlurRadius(I)V

    .line 164
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    const p1, 0x7f0a0117

    .line 166
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ClockUserView;

    if-eqz p1, :cond_2

    .line 167
    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ClockUserView;->setSmallPresentation()V

    .line 169
    :cond_2
    new-instance p1, Landroidx/leanback/app/RowsSupportFragment;

    invoke-direct {p1}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 170
    invoke-virtual {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a0267

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 172
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    new-instance v0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity$1;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 173
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    new-instance v0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;

    invoke-direct {v0, p0, v2}, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity$1;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 175
    new-instance p1, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    invoke-direct {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDorPresenter:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    .line 176
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDorPresenter:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->setSelectEffectEnabled(Z)V

    .line 178
    invoke-virtual {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ItemId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mItemId:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ChannelId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mChannelId:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ProgramInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 182
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    const-class v1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    .line 184
    :cond_3
    new-instance p1, Ltv/emby/embyatv/details/FullDetailsActivity$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->registerMessageListener(Ltv/emby/embyatv/base/IMessageListener;)V

    .line 203
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mItemId:Ljava/lang/String;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->loadItem(Ljava/lang/String;)V

    goto :goto_2

    .line 150
    :cond_4
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltv/emby/embyatv/startup/StartupActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->finish()V

    :goto_2
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 315
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-static {p1, v0, p0}, Ltv/emby/embyatv/util/KeyProcessor;->HandleKey(ILtv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ltv/emby/embyatv/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/16 v0, 0x55

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_4

    .line 318
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->CanPlay(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide p1

    const-wide/16 v3, 0x2710

    div-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 321
    iget-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->play(Lmediabrowser/model/dto/BaseItemDto;IZ)V

    return v2

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 324
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->stopThemeSong()V

    .line 327
    :cond_5
    invoke-super {p0, p1, p2}, Ltv/emby/embyatv/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 299
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onPause()V

    .line 300
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiEventListener()Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->setItemChangeListener(Ltv/emby/embyatv/model/IItemChangeListener;)V

    .line 301
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->stopClock()V

    .line 302
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->stopRotate()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 210
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onResume()V

    .line 212
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isShuttingDown()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 215
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastDeletedItemId()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->finish()V

    goto :goto_1

    .line 220
    :cond_2
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->startClock()V

    .line 221
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->rotateBackdrops()V

    .line 222
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mThemeSong:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->playThemeSong()V

    .line 226
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastPlayback()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mLastUpdated:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->directPlayed:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_5

    const-string v0, "MusicArtist"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$2;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    const-wide/16 v2, 0x4e2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 269
    :cond_5
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_6

    .line 270
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->refreshCurrentItem()V

    .line 271
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mNextUpRow:Landroidx/leanback/widget/ListRow;

    if-eqz v0, :cond_6

    .line 272
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mNextUpRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->ReRetrieveIfNeeded()Z

    .line 276
    :cond_6
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiEventListener()Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$3;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->setItemChangeListener(Ltv/emby/embyatv/model/IItemChangeListener;)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 307
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onStop()V

    .line 308
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->stopClock()V

    .line 309
    invoke-direct {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->stopRotate()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 290
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onUserLeaveHint()V

    .line 291
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isLaunchingActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->stopThemeSong()V

    :cond_0
    return-void
.end method

.method protected play(Lmediabrowser/model/dto/BaseItemDto;IZ)V
    .locals 2

    if-nez p2, :cond_0

    .line 1850
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$45;

    invoke-direct {v1, p0, p1, p0, p2}, Ltv/emby/embyatv/details/FullDetailsActivity$45;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;I)V

    invoke-static {p1, v0, p3, v1}, Ltv/emby/embyatv/util/Utils;->getItemsToPlay(Lmediabrowser/model/dto/BaseItemDto;ZZLmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method protected play([Lmediabrowser/model/dto/BaseItemDto;IZ)V
    .locals 4

    .line 1874
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1875
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_0

    .line 1876
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1877
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    const-string p1, "Position"

    .line 1878
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1879
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 9

    .line 542
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 543
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_5

    .line 544
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mChannelId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setParentId(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setPremiereDate(Ljava/util/Date;)V

    .line 547
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setEndDate(Ljava/util/Date;)V

    .line 548
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setRunTimeTicks(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const-string v0, "Recording"

    .line 549
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRecordingStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->InProgress:Lmediabrowser/model/livetv/RecordingStatus;

    if-ne v0, v1, :cond_1

    .line 550
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    iput-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    .line 552
    :cond_1
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->allowMediaSelection(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 554
    new-instance v4, Ltv/emby/embyatv/api/VideoOptions;

    invoke-direct {v4}, Ltv/emby/embyatv/api/VideoOptions;-><init>()V

    .line 555
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/api/VideoOptions;->setDeviceId(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/api/VideoOptions;->setItemId(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/api/VideoOptions;->setItemType(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/api/VideoOptions;->setMediaSources(Ljava/util/ArrayList;)V

    .line 559
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->getMaxBitrate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/api/VideoOptions;->setMaxBitrate(Ljava/lang/Integer;)V

    const/16 v0, 0x8

    .line 560
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/api/VideoOptions;->setMaxAudioChannels(Ljava/lang/Integer;)V

    .line 561
    invoke-static {v2}, Ltv/emby/embyatv/util/ProfileHelper;->getBaseProfile(Z)Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object v0

    .line 562
    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/MediaManager;->getSupportedAudio()Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-static {v0, v3, v2}, Ltv/emby/embyatv/util/ProfileHelper;->addExtendedStreamingAudio(Lmediabrowser/model/dlna/DeviceProfile;Ljava/lang/String;Z)V

    .line 565
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->downMixAudio()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/MediaManager;->getMaxAudioChannels()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/MediaManager;->getSupportedAudio()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    :goto_1
    const-string v2, ",ac3,eac3,dca,dts,dtshd,flac,alac,mp1,truehd"

    :goto_2
    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/MediaManager;->getMaxAudioChannels()I

    move-result v3

    invoke-static {v0, v1, v1, v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->setExoOptions(Lmediabrowser/model/dlna/DeviceProfile;ZZLjava/lang/String;I)V

    .line 566
    invoke-virtual {v4, v0}, Ltv/emby/embyatv/api/VideoOptions;->setProfile(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 567
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object v3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v7

    new-instance v8, Ltv/emby/embyatv/details/FullDetailsActivity$7;

    invoke-direct {v8, p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$7;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual/range {v3 .. v8}, Ltv/emby/embyatv/api/PlaybackManager;->getVideoStreamInfo(Ltv/emby/embyatv/api/VideoOptions;Ljava/lang/Long;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 582
    iput-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDefaultStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    .line 583
    new-instance v3, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;

    invoke-direct {v3, p0, v0}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity$1;)V

    new-array v0, v2, [Lmediabrowser/model/dto/BaseItemDto;

    aput-object p1, v0, v1

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 586
    :goto_3
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_5

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    :cond_5
    return-void
.end method

.method public setRecSeriesTimer(Ljava/lang/String;)V
    .locals 2

    .line 440
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setSeriesTimerId(Ljava/lang/String;)V

    .line 441
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecSeriesButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-nez p1, :cond_1

    const v1, 0x7f08016a

    goto :goto_0

    :cond_1
    const v1, 0x7f080169

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/TextUnderButton;->setImageResource(I)V

    .line 442
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mSeriesSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mSeriesSettingsButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-nez p1, :cond_3

    const/16 p1, 0x8

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setRecTimer(Ljava/lang/String;)V
    .locals 1

    .line 431
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setTimerId(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordButton:Ltv/emby/embyatv/ui/TextUnderButton;

    if-nez p1, :cond_0

    const p1, 0x7f08016c

    goto :goto_0

    :cond_0
    const p1, 0x7f080166

    :goto_0
    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/TextUnderButton;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 999
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mDorPresenter:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showRecordingOptions(Ljava/lang/String;Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 8

    .line 1712
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    if-nez v0, :cond_0

    const/16 v0, 0x258

    .line 1713
    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v6

    .line 1714
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1715
    invoke-virtual {p0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1716
    new-instance v7, Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroidx/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v6, 0x2

    sub-int v4, v0, v1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v5, v0, 0x28

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/ui/RecordPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;Landroid/view/View;III)V

    iput-object v7, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    :cond_0
    if-eqz p3, :cond_1

    .line 1720
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$40;

    invoke-direct {v1, p0, p2, p3}, Ltv/emby/embyatv/details/FullDetailsActivity$40;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;Z)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvSeriesTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 1729
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$41;

    invoke-direct {v1, p0, p2, p3}, Ltv/emby/embyatv/details/FullDetailsActivity$41;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;Z)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method

.method protected updateBackground(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1903
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->lastBdUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1904
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setImageUrl(Ljava/lang/String;)V

    .line 1905
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity;->lastBdUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method
