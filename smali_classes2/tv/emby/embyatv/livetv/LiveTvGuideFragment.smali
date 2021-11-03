.class public Ltv/emby/embyatv/livetv/LiveTvGuideFragment;
.super Landroid/app/Fragment;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Ltv/emby/embyatv/livetv/ILiveTvGuide;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;,
        Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;,
        Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;
    }
.end annotation


# static fields
.field public static final FILTERED_HOURS:I

.field public static final NORMAL_HOURS:I

.field public static final PIXELS_PER_MINUTE:I

.field public static ROW_HEIGHT:I


# instance fields
.field private final PRELOAD_CHANNEL_COUNT:I

.field private clearNumDisplay:Ljava/lang/Runnable;

.field dateDialog:Landroid/app/AlertDialog;

.field datePickedListener:Landroid/view/View$OnClickListener;

.field private detailUpdateTask:Ljava/lang/Runnable;

.field private focusAtEnd:Z

.field private guideIsFastScrolling:Z

.field isPaging:Z

.field private keyListener:Ltv/emby/embyatv/base/IKeyListener;

.field private lastNavKeyLoopStart:J

.field private lastNavKeyUp:J

.field private mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field private mAllChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/livetv/ChannelInfoDto;",
            ">;"
        }
    .end annotation
.end field

.field private mBackdrop:Landroid/widget/ImageView;

.field private mChainedKeyListener:Ltv/emby/embyatv/base/IKeyListener;

.field private mChannelButton:Landroid/view/View;

.field private mChannelPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

.field private mChannelStatus:Landroid/widget/TextView;

.field private mCurrentDisplayChannelEndNdx:I

.field private mCurrentDisplayChannelStartNdx:I

.field private mCurrentGuideEnd:Ljava/util/Calendar;

.field private mCurrentGuideStart:Ljava/util/Calendar;

.field private mCurrentLocalGuideEnd:J

.field private mCurrentLocalGuideStart:J

.field private mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

.field private mDisplayDate:Landroid/widget/TextView;

.field private mFavoriteButton:Landroid/widget/ImageButton;

.field private mFilterPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

.field private mFilterStatus:Landroid/widget/TextView;

.field private mFilters:Ltv/emby/embyatv/livetv/GuideFilters;

.field private mFirstFocusChannelId:Ljava/lang/String;

.field mFirstFocusNdx:I

.field private mFirstLoad:Z

.field private mFragment:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mInfoRow:Landroid/widget/LinearLayout;

.field private mLastLoad:J

.field private mLoadLastChannel:Z

.field private mMaxGuideEnd:Ljava/util/Calendar;

.field private mNumberDisplay:Landroid/widget/TextView;

.field private mOptionsPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

.field private mOverlayMode:Z

.field private mProgramAdapter:Ltv/emby/embyatv/livetv/GuideProgramAdapter;

.field private mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

.field private mProgramScroller:Landroid/view/View;

.field mProgressLoop:Ljava/lang/Runnable;

.field private mProgressShade:Landroid/widget/FrameLayout;

.field private mResetButton:Landroid/view/View;

.field private mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

.field private mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

.field private mSpinner:Landroid/view/View;

.field private mSummary:Landroid/widget/TextView;

.field private mTabActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

.field private mTimeline:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;

.field private movingForward:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->ROW_HEIGHT:I

    .line 72
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->PIXELS_PER_MINUTE:I

    .line 73
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    const/4 v0, 0x2

    sput v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->NORMAL_HOURS:I

    .line 74
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    sput v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->FILTERED_HOURS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/16 v0, 0x10

    .line 75
    iput v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->PRELOAD_CHANNEL_COUNT:I

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mLastLoad:J

    const/4 v2, 0x1

    .line 102
    iput-boolean v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstLoad:Z

    .line 107
    new-instance v3, Ltv/emby/embyatv/livetv/GuideFilters;

    invoke-direct {v3}, Ltv/emby/embyatv/livetv/GuideFilters;-><init>()V

    iput-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilters:Ltv/emby/embyatv/livetv/GuideFilters;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideStart:J

    const/4 v3, 0x0

    .line 114
    iput v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentDisplayChannelStartNdx:I

    .line 115
    iput v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentDisplayChannelEndNdx:I

    .line 118
    iput-boolean v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->movingForward:Z

    .line 119
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mHandler:Landroid/os/Handler;

    .line 314
    iput-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyUp:J

    const-wide/16 v0, -0x1

    .line 315
    iput-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyLoopStart:J

    .line 358
    iput-boolean v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->guideIsFastScrolling:Z

    .line 385
    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$12;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$12;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgressLoop:Ljava/lang/Runnable;

    .line 465
    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$13;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$13;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->clearNumDisplay:Ljava/lang/Runnable;

    .line 472
    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    .line 613
    iput-boolean v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->isPaging:Z

    .line 628
    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$16;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$16;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->datePickedListener:Landroid/view/View$OnClickListener;

    .line 1044
    iput v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusNdx:I

    .line 1204
    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->detailUpdateTask:Ljava/lang/Runnable;

    .line 1272
    iput-boolean v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOverlayMode:Z

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->showChannelEntry()V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->showDatePicker()V

    return-void
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideEnd:J

    return-wide v0
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/ProgramGridCell;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    return-object p0
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyUp:J

    return-wide v0
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyLoopStart:J

    return-wide v0
.end method

.method static synthetic access$1302(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;J)J
    .locals 0

    .line 69
    iput-wide p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyLoopStart:J

    return-wide p1
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideProgramAdapter;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramAdapter:Ltv/emby/embyatv/livetv/GuideProgramAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->guideIsFastScrolling:Z

    return p0
.end method

.method static synthetic access$1502(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->guideIsFastScrolling:Z

    return p1
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/browsing/BaseTabActivity;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTabActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    return-object p0
.end method

.method static synthetic access$1700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mAllChannels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1802(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 69
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mAllChannels:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->movingForward:Z

    return p0
.end method

.method static synthetic access$2000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)I
    .locals 0

    .line 69
    iget p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentDisplayChannelStartNdx:I

    return p0
.end method

.method static synthetic access$2002(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)I
    .locals 0

    .line 69
    iput p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentDisplayChannelStartNdx:I

    return p1
.end method

.method static synthetic access$202(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->movingForward:Z

    return p1
.end method

.method static synthetic access$2102(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;J)J
    .locals 0

    .line 69
    iput-wide p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mLastLoad:J

    return-wide p1
.end method

.method static synthetic access$2200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->loadProgramData()V

    return-void
.end method

.method static synthetic access$2300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->showLoading(Z)V

    return-void
.end method

.method static synthetic access$2400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->setProgressShade()V

    return-void
.end method

.method static synthetic access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mNumberDisplay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/LiveProgramDetailPopup;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    return-object p0
.end method

.method static synthetic access$2700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilterPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    return-object p0
.end method

.method static synthetic access$2800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOptionsPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    return-object p0
.end method

.method static synthetic access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    return-object p0
.end method

.method static synthetic access$2902(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 69
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    return-object p1
.end method

.method static synthetic access$300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;J)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->pageGuideTo(J)V

    return-void
.end method

.method static synthetic access$3000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/BaseActivity;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-object p0
.end method

.method static synthetic access$3100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->scrollGuideToRow(I)V

    return-void
.end method

.method static synthetic access$3200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/IKeyListener;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChainedKeyListener:Ltv/emby/embyatv/base/IKeyListener;

    return-object p0
.end method

.method static synthetic access$3300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->clearNumDisplay:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->scrollToChannelNdx(I)V

    return-void
.end method

.method static synthetic access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilters:Ltv/emby/embyatv/livetv/GuideFilters;

    return-object p0
.end method

.method static synthetic access$3600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTimeline:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusChannelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFavoriteButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$4000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->onLoadFinished()V

    return-void
.end method

.method static synthetic access$4100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mResetButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/Calendar;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$4300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->detailUpdateInternal()V

    return-void
.end method

.method static synthetic access$500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->load()V

    return-void
.end method

.method static synthetic access$600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideStart:J

    return-wide v0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/Calendar;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mMaxGuideEnd:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/Calendar;
    .locals 0

    .line 69
    iget-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideEnd:Ljava/util/Calendar;

    return-object p0
.end method

.method private detailUpdateInternal()V
    .locals 9

    .line 1228
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    if-nez v0, :cond_0

    return-void

    .line 1230
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V

    .line 1232
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0801a8

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1235
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDisplayDate:Landroid/widget/TextView;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v4, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mInfoRow:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZLmediabrowser/model/entities/MediaStream;)V

    .line 1242
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOverlayMode:Z

    if-nez v0, :cond_7

    .line 1243
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    invoke-static {v0, v2}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mImage:Landroid/widget/ImageView;

    invoke-static {v2, v0, v3}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1246
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsNews()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1247
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1249
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsKids()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1250
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    const v1, 0x7f0800fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1252
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsSports()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1253
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    const v1, 0x7f080197

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1255
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsMovie()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1256
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1259
    :cond_5
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1265
    :cond_6
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1266
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1267
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private fillTimeLine(JI)V
    .locals 7

    .line 1166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    .line 1167
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1168
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt p2, v2, :cond_0

    const/16 p2, 0x1e

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1169
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1170
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1171
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideStart:J

    .line 1173
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDisplayDate:Landroid/widget/TextView;

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 1175
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideEnd:Ljava/util/Calendar;

    .line 1176
    sget p2, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->PIXELS_PER_MINUTE:I

    const/16 v1, 0x3c

    mul-int/lit8 p2, p2, 0x3c

    .line 1177
    sget v3, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->PIXELS_PER_MINUTE:I

    mul-int/lit8 v3, v3, 0x1e

    .line 1178
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v4, v2, :cond_1

    const/16 v4, 0x1e

    goto :goto_1

    :cond_1
    const/16 v4, 0x3c

    :goto_1
    mul-int/lit8 p3, p3, 0x3c

    .line 1180
    iget-object v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideEnd:Ljava/util/Calendar;

    invoke-virtual {v5, v0, p3}, Ljava/util/Calendar;->add(II)V

    .line 1181
    iget-object p3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideEnd:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Calendar;

    iput-object p3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mMaxGuideEnd:Ljava/util/Calendar;

    .line 1182
    iget-object p3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mMaxGuideEnd:Ljava/util/Calendar;

    const/4 v5, 0x6

    const/16 v6, 0xf

    invoke-virtual {p3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1183
    iget-object p3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideEnd:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideEnd:J

    .line 1184
    iget-object p3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTimeline:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1185
    :goto_2
    iget-object p3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideEnd:Ljava/util/Calendar;

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1186
    new-instance p3, Landroid/widget/TextView;

    iget-object v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41880000    # 17.0f

    .line 1187
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1188
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x3f666666    # 0.9f

    .line 1189
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1190
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1191
    iget-object v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v4, v2, :cond_2

    move v5, v3

    goto :goto_3

    :cond_2
    move v5, p2

    .line 1192
    :goto_3
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setWidth(I)V

    .line 1193
    iget-object v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTimeline:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1194
    invoke-virtual {p1, v0, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v4, 0x3c

    goto :goto_2

    .line 1198
    :cond_3
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->setProgressShade()V

    return-void
.end method

.method private getCellAtTime(Landroid/widget/LinearLayout;J)Landroid/view/View;
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1150
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1151
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/ui/ProgramGridCell;

    .line 1152
    invoke-virtual {v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->getProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1154
    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-lez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGuideHours()I
    .locals 1

    .line 311
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilters:Ltv/emby/embyatv/livetv/GuideFilters;

    invoke-virtual {v0}, Ltv/emby/embyatv/livetv/GuideFilters;->any()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->FILTERED_HOURS:I

    goto :goto_0

    :cond_0
    sget v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->NORMAL_HOURS:I

    :goto_0
    return v0
.end method

.method private load()V
    .locals 3

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getGuideHours()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->fillTimeLine(JI)V

    .line 362
    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$11;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-static {v0}, Ltv/emby/embyatv/livetv/TvManager;->loadAllChannels(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private loadProgramData()V
    .locals 5

    .line 1046
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilterStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1050
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentDisplayChannelStartNdx:I

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTabActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTabActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->blockFocus(Z)V

    .line 1061
    :cond_1
    iget v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentDisplayChannelStartNdx:I

    iget v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentDisplayChannelStartNdx:I

    add-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, v1

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideStart:Ljava/util/Calendar;

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentGuideEnd:Ljava/util/Calendar;

    new-instance v4, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;

    invoke-direct {v4, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-static {v0, v2, v1, v3, v4}, Ltv/emby/embyatv/livetv/TvManager;->getProgramsAsync(IILjava/util/Calendar;Ljava/util/Calendar;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1051
    :cond_2
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Attempt to show channels past end"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1052
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "Error loading guide"

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "No channels found - check filters..."

    :goto_2
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private onLoadFinished()V
    .locals 3

    .line 1083
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1098
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mAllChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 1099
    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$23;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$23;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1116
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** All channels were pre-loaded.  No secondary load needed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private pageGuideTo(J)V
    .locals 3

    const/4 v0, 0x1

    .line 666
    invoke-direct {p0, v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->showLoading(Z)V

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 668
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->forceReload()V

    .line 670
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusChannelId:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentDisplayChannelStartNdx:I

    .line 672
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getGuideHours()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->fillTimeLine(JI)V

    .line 673
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->loadProgramData()V

    return-void
.end method

.method private scrollGuideToRow(I)V
    .locals 2

    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->isPaging:Z

    .line 616
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$15;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$15;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 625
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private scrollToChannelNdx(I)V
    .locals 5

    if-ltz p1, :cond_0

    .line 975
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Adapter position is %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 977
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$18;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$18;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 986
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v0, "Unable to find channel"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setProgressShade()V
    .locals 4

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideStart:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x2d

    if-le v0, v1, :cond_0

    .line 451
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->load()V

    goto :goto_0

    .line 453
    :cond_0
    sget v1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->PIXELS_PER_MINUTE:I

    mul-int v0, v0, v1

    if-lez v0, :cond_1

    .line 455
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgressShade:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 456
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 457
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgressShade:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgressShade:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgressShade:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showChannelEntry()V
    .locals 2

    .line 992
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    if-nez v0, :cond_0

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v0, p0, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ltv/emby/embyatv/base/BaseActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    .line 993
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->show()V

    return-void
.end method

.method private showDatePicker()V
    .locals 13

    .line 640
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a026f

    .line 641
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 643
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    .line 644
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    if-lt v4, v5, :cond_0

    const/16 v4, 0xc

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 645
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 646
    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 647
    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    const-wide/16 v3, 0x1

    move-wide v5, v3

    :goto_1
    const-wide/16 v7, 0x1c

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    .line 649
    new-instance v7, Ltv/emby/embyatv/ui/FriendlyDateButton;

    iget-object v8, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    const-wide/32 v11, 0x2932e00

    mul-long v11, v11, v5

    add-long/2addr v9, v11

    iget-object v11, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->datePickedListener:Landroid/view/View$OnClickListener;

    invoke-direct {v7, v8, v9, v10, v11}, Ltv/emby/embyatv/ui/FriendlyDateButton;-><init>(Landroid/content/Context;JLandroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-long/2addr v5, v3

    goto :goto_1

    .line 652
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1005a1

    .line 653
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 654
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1003b1

    new-instance v2, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$17;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$17;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    .line 655
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->dateDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showLoading(Z)V
    .locals 2

    .line 1040
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSpinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method private startNavKeyCheckLoop()V
    .locals 4

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyLoopStart:J

    .line 326
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startProgressLoop()V
    .locals 2

    .line 393
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgressLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dismissProgramOptions()V
    .locals 1

    .line 998
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method protected doLoad()V
    .locals 6

    .line 417
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->shouldForceReload()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mLastLoad:J

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 418
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getLastLiveTvChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusChannelId:Ljava/lang/String;

    .line 419
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** First focus channel id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusChannelId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mAllChannels:Ljava/util/List;

    if-nez v0, :cond_1

    .line 422
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mAllChannels:Ljava/util/List;

    .line 425
    :cond_1
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->load()V

    :cond_2
    return-void
.end method

.method public findBestFocusView(Ltv/emby/embyatv/ui/ProgramGridCell;)Landroid/view/View;
    .locals 6

    .line 1121
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_3

    .line 1122
    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1123
    iget-boolean v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->isPaging:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->guideIsFastScrolling:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 1126
    :try_start_0
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    invoke-virtual {v3}, Ltv/emby/embyatv/ui/ProgramGridCell;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 1127
    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    sub-int p1, v2, p1

    .line 1128
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    if-lez p1, :cond_0

    const/4 v4, -0x1

    .line 1131
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v3, "**** Hopped a row - adjusting..."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {p1, v3, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;

    if-eqz p1, :cond_1

    .line 1134
    iget-object p1, p1, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;->mProgramRow:Landroid/widget/LinearLayout;

    move-object v0, p1

    .line 1137
    :cond_1
    iput-boolean v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->isPaging:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1139
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "Error looking for best focus view"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, p1, v1}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1142
    :cond_2
    :goto_0
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getCellAtTime(Landroid/widget/LinearLayout;J)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentLocalEndDate()J
    .locals 2

    .line 1202
    iget-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideEnd:J

    return-wide v0
.end method

.method public getCurrentLocalStartDate()J
    .locals 2

    .line 1201
    iget-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideStart:J

    return-wide v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 131
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/base/BaseActivity;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 133
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    instance-of p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    check-cast p1, Ltv/emby/embyatv/browsing/BaseTabActivity;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTabActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    .line 134
    :cond_0
    iput-object p0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFragment:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstLoad:Z

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideStart:J

    const-wide/16 v0, -0x1

    .line 137
    iput-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyLoopStart:J

    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyUp:J

    .line 139
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    .line 141
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "*** Live TV Guide fragment onActivityCreated"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00e3

    .line 144
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDisplayDate:Landroid/widget/TextView;

    .line 145
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDisplayDate:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0a0307

    .line 146
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTitle:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 148
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a02c9

    .line 149
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSummary:Landroid/widget/TextView;

    .line 150
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 151
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSummary:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getSummaryTextColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0099

    .line 152
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelStatus:Landroid/widget/TextView;

    const p1, 0x7f0a0123

    .line 153
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilterStatus:Landroid/widget/TextView;

    .line 154
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilterStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelStatus:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilterStatus:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0180

    .line 158
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mInfoRow:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0237

    .line 159
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f0a0061

    .line 160
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    const p1, 0x7f0a0304

    .line 161
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTimeline:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0236

    .line 162
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramScroller:Landroid/view/View;

    const p1, 0x7f0a0239

    .line 163
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0a02aa

    .line 164
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSpinner:Landroid/view/View;

    const p1, 0x7f0a0243

    .line 165
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgressShade:Landroid/widget/FrameLayout;

    .line 166
    new-instance p1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p1, v0, p0}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;-><init>(Landroid/content/Context;Ltv/emby/embyatv/livetv/ILiveTvGuide;)V

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramAdapter:Ltv/emby/embyatv/livetv/GuideProgramAdapter;

    .line 167
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const p1, 0x7f0a01ff

    .line 168
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mNumberDisplay:Landroid/widget/TextView;

    .line 169
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mNumberDisplay:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 173
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDisplayDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 174
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v2, 0x76

    invoke-static {v0, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 175
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-boolean v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOverlayMode:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xbe

    goto :goto_0

    :cond_1
    const/16 v2, 0x9b

    :goto_0
    invoke-static {v0, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 176
    iget-boolean p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOverlayMode:Z

    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTimeline:Landroid/widget/LinearLayout;

    const v0, 0x7f06001b

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 178
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDisplayDate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 179
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const p1, 0x3f7851ec    # 0.97f

    .line 180
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 182
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDisplayDate:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0122

    .line 184
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$1;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a020a

    .line 191
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$2;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0093

    .line 198
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelButton:Landroid/view/View;

    .line 199
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelButton:Landroid/view/View;

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$3;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v0, 0x7f0a00c5

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$4;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$4;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a025a

    .line 213
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mResetButton:Landroid/view/View;

    .line 214
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mResetButton:Landroid/view/View;

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$5;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$5;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0115

    .line 222
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFavoriteButton:Landroid/widget/ImageButton;

    .line 223
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFavoriteButton:Landroid/widget/ImageButton;

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$6;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$6;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p1, v3}, Ltv/emby/embyatv/base/BaseActivity;->setFocusContentOnEntry(Z)V

    .line 237
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 239
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTimeline:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 240
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTimeline:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 242
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    const p1, 0x7f0a01b8

    .line 244
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$7;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$7;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p1, 0x7f0a025f

    .line 259
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 275
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$9;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$9;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->registerMessageListener(Ltv/emby/embyatv/base/IMessageListener;)V

    .line 282
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    .line 284
    iget-boolean p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOverlayMode:Z

    const v0, 0x7f0a011e

    if-eqz p1, :cond_3

    .line 286
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getGuideBackgroundResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 294
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0600e9

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 295
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getGuideBackgroundResource()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDisplayDate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 297
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramScroller:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 298
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "loadLast"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mLoadLastChannel:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d0093

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 440
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 442
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Live TV Guide fragment destroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 443
    iput-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mLastLoad:J

    .line 445
    iget-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mCurrentLocalGuideStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->forceReload()V

    :cond_0
    return-void
.end method

.method public onNavKeyAction(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyUp:J

    goto :goto_0

    .line 319
    :cond_0
    iget-wide v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->lastNavKeyLoopStart:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 320
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->startNavKeyCheckLoop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 431
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 433
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->dismiss()V

    .line 434
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgressLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 435
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 398
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 400
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mLoadLastChannel:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mLoadLastChannel:Z

    .line 402
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getLastLiveTvChannel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v1, v0, v2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->doLoad()V

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->doLoad()V

    .line 413
    :goto_0
    invoke-direct {p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->startProgressLoop()V

    return-void
.end method

.method public setChainedKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V
    .locals 0

    .line 681
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChainedKeyListener:Ltv/emby/embyatv/base/IKeyListener;

    return-void
.end method

.method public setOverlayMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1274
    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOverlayMode:Z

    return-void
.end method

.method public setSelectedProgram(Ltv/emby/embyatv/ui/ProgramGridCell;)V
    .locals 3

    .line 1278
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->detailUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1279
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    if-eq v0, p1, :cond_0

    .line 1280
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    .line 1281
    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->getProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    .line 1282
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusChannelId:Ljava/lang/String;

    .line 1283
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->guideIsFastScrolling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    :try_start_0
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mChannelStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mProgramRows:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mAllChannels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100469

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :catch_0
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->detailUpdateTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public showFilterOptions()V
    .locals 2

    .line 1026
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilterPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    if-nez v0, :cond_0

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v0, p0, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ltv/emby/embyatv/base/BaseActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilterPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    .line 1027
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFilterPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->show()V

    return-void
.end method

.method public showOptions()V
    .locals 2

    .line 1034
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOptionsPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    if-nez v0, :cond_0

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v0, p0, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ltv/emby/embyatv/base/BaseActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOptionsPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    .line 1035
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mOptionsPopup:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->show()V

    return-void
.end method

.method public showProgramOptions()V
    .locals 6

    .line 1001
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Empty"

    .line 1002
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    goto :goto_0

    .line 1005
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    if-nez v0, :cond_2

    .line 1006
    new-instance v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v4, 0x28a

    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    new-instance v4, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$19;

    invoke-direct {v4, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$19;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    new-instance v5, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$20;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$20;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-direct {v0, v2, v3, v4, v5}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;ILmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/EmptyResponse;)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    .line 1018
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgram:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    invoke-virtual {v0, v2, v3}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V

    .line 1019
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mDetailPopup:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mBackdrop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1, v1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->show(Landroid/view/View;II)V

    :cond_3
    :goto_0
    return-void
.end method
