.class public Ltv/emby/embyatv/browsing/StdGridFragment;
.super Ltv/emby/embyatv/ui/BaseGridFragment;
.source "StdGridFragment.java"

# interfaces
.implements Ltv/emby/embyatv/browsing/IGridLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;,
        Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;,
        Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_UPDATE_DELAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "StdGridFragment"


# instance fields
.field protected MainTitle:Ljava/lang/String;

.field protected ShowFanart:Z

.field protected determiningPosterSize:Z

.field protected justLoaded:Z

.field protected mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field protected mAllowFavFilter:Z

.field protected mAllowFilters:Z

.field protected mAllowGrouping:Z

.field protected mAllowLetterJump:Z

.field protected mAllowPlayButtons:Z

.field protected mAllowSearch:Z

.field protected mAllowSettings:Z

.field protected mAllowSort:Z

.field protected mAllowUnwatched:Z

.field protected mAllowViewSelection:Z

.field protected mAlreadyArrivedAtFirstRow:Z

.field protected mApplication:Ltv/emby/embyatv/TvApp;

.field protected mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

.field private mBackgroundTimer:Ljava/util/Timer;

.field private mBackgroundUrl:Ljava/lang/String;

.field private mCardHeight:I

.field mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

.field protected mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

.field protected mCollectionType:Ljava/lang/String;

.field protected mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

.field private final mDelayedSetItem:Ljava/lang/Runnable;

.field protected mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

.field protected mDisplayPrefsPopup:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

.field protected mDisplayPrefsPrefix:Ljava/lang/String;

.field protected mFavoriteButton:Ltv/emby/embyatv/ui/ImageButton;

.field protected mFilterButton:Ltv/emby/embyatv/ui/ImageButton;

.field protected mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

.field protected mFolder:Lmediabrowser/model/dto/BaseItemDto;

.field protected mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHideLetterJump:Z

.field protected mImageType:Ljava/lang/String;

.field protected mLetterButton:Ltv/emby/embyatv/ui/ImageButton;

.field protected mParentId:Ljava/lang/String;

.field protected mPosterSizeSetting:Ljava/lang/String;

.field protected mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

.field protected mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

.field protected mShowLabels:Z

.field protected mUnwatchedButton:Ltv/emby/embyatv/ui/ImageButton;

.field protected waitIndicatorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;-><init>()V

    .line 91
    new-instance v0, Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-direct {v0}, Ltv/emby/embyatv/browsing/CompositeClickedListener;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    .line 92
    new-instance v0, Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-direct {v0}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAlreadyArrivedAtFirstRow:Z

    .line 102
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->justLoaded:Z

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->ShowFanart:Z

    const-string v2, "0"

    .line 104
    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    const-string v2, "0"

    .line 105
    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->determiningPosterSize:Z

    const-string v2, ""

    .line 111
    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    .line 114
    iget v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->SMALL_CARD:I

    iput v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    .line 116
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowViewSelection:Z

    .line 117
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowGrouping:Z

    .line 118
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowLetterJump:Z

    .line 119
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowSort:Z

    .line 120
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTvStick1stGen()Z

    move-result v2

    iput-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHideLetterJump:Z

    .line 121
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowFavFilter:Z

    .line 122
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowSearch:Z

    .line 123
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowUnwatched:Z

    .line 124
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowFilters:Z

    .line 125
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowSettings:Z

    .line 126
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowPlayButtons:Z

    .line 127
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mShowLabels:Z

    .line 164
    new-instance v0, Ltv/emby/embyatv/browsing/StdGridFragment$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$1;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->waitIndicatorRunnable:Ljava/lang/Runnable;

    .line 974
    new-instance v0, Ltv/emby/embyatv/browsing/StdGridFragment$22;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$22;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDelayedSetItem:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/util/Map;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->sortOptions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/util/Map;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->sortOptions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/util/Map;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->sortOptions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$1500(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mToolBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1900(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2000(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2100(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2200(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$2300(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$2400(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$2500(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$2600(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mToolBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2700(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mToolBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2800(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackgroundUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2802(Ltv/emby/embyatv/browsing/StdGridFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 82
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackgroundUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->startBackgroundTimer()V

    return-void
.end method

.method static synthetic access$300(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3000(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$3100(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDelayedSetItem:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3200(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/TextView;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mInfoRow:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3400(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->refreshCurrentItem()V

    return-void
.end method

.method static synthetic access$500(Ltv/emby/embyatv/browsing/StdGridFragment;)I
    .locals 0

    .line 82
    iget p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    return p0
.end method

.method static synthetic access$502(Ltv/emby/embyatv/browsing/StdGridFragment;I)I
    .locals 0

    .line 82
    iput p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    return p1
.end method

.method static synthetic access$600(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->createGrid()V

    return-void
.end method

.method static synthetic access$700(Ltv/emby/embyatv/browsing/StdGridFragment;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/browsing/StdGridFragment;->getSortOption(Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->createGrid()V

    return-void
.end method

.method static synthetic access$900(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/util/Map;
    .locals 0

    .line 82
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->sortOptions:Ljava/util/Map;

    return-object p0
.end method

.method private adjustDisplay(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 365
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mTitleView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 369
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 370
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 376
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v1, 0x73

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 377
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private getNumColumns()I
    .locals 6

    .line 336
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->SMALL_CARD:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    return v0

    .line 337
    :cond_0
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->MED_CARD:I

    const/4 v2, 0x6

    if-ne v0, v1, :cond_1

    return v2

    .line 338
    :cond_1
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->LARGE_CARD:I

    const/4 v3, 0x4

    if-ne v0, v1, :cond_2

    return v3

    .line 339
    :cond_2
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->SMALL_THUMB:I

    if-ne v0, v1, :cond_3

    return v3

    .line 340
    :cond_3
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->MED_THUMB:I

    const/4 v4, 0x3

    if-ne v0, v1, :cond_4

    return v4

    .line 341
    :cond_4
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->LARGE_THUMB:I

    const/4 v5, 0x2

    if-ne v0, v1, :cond_5

    return v5

    .line 342
    :cond_5
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->SMALL_SQUARE:I

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    return v0

    .line 343
    :cond_6
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->MED_SQUARE:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x5

    return v0

    .line 344
    :cond_7
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->LARGE_SQUARE:I

    if-ne v0, v1, :cond_8

    return v4

    .line 345
    :cond_8
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->SMALL_BANNER:I

    if-ne v0, v1, :cond_9

    return v3

    .line 346
    :cond_9
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->MED_BANNER:I

    if-ne v0, v1, :cond_a

    return v4

    .line 347
    :cond_a
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    iget v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->LARGE_BANNER:I

    if-ne v0, v1, :cond_b

    return v5

    :cond_b
    return v2
.end method

.method private getNumRows()I
    .locals 2

    .line 332
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getGridHeight()I

    move-result v0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getCardHeight()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private getStaticWidth()I
    .locals 8

    .line 352
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v1, 0x370

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 353
    :goto_0
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getNumColumns()I

    move-result v1

    .line 354
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    const/16 v3, 0x14

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    mul-int v2, v2, v1

    sub-int v2, v0, v2

    div-int/2addr v2, v1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 355
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v3

    const-string v4, "***** Static width: %d numColumns: %d cardHeight: %d gridDock: %d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    iget v6, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-interface {v3, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private refreshCurrentItem()V
    .locals 3

    .line 935
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 936
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 937
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getGridPresenter()Ltv/emby/embyatv/presentation/IGridPresenter;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ltv/emby/embyatv/presentation/IGridPresenter;->setPosition(I)V

    .line 938
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaPosition(I)V

    .line 940
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_1

    const-string v0, "PhotoAlbum"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MusicArtist"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 941
    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MusicAlbum"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AudioPodcast"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AudioBook"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 942
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$21;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$21;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->refresh(Lmediabrowser/apiinteraction/EmptyResponse;)V

    :cond_1
    return-void
.end method

.method private startBackgroundTimer()V
    .locals 4

    .line 1016
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1019
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackgroundTimer:Ljava/util/Timer;

    .line 1020
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackgroundTimer:Ljava/util/Timer;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;Ltv/emby/embyatv/browsing/StdGridFragment$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method protected addTools()V
    .locals 9

    .line 559
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getToolBar()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    .line 562
    new-instance v8, Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    iget-boolean v5, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowViewSelection:Z

    iget-boolean v6, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowGrouping:Z

    new-instance v7, Ltv/emby/embyatv/browsing/StdGridFragment$7;

    invoke-direct {v7, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$7;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ltv/emby/embyatv/ui/DisplayPrefsPopup;-><init>(Landroid/app/Activity;Landroid/view/View;ZZLmediabrowser/apiinteraction/Response;)V

    iput-object v8, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPopup:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    .line 580
    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowSort:Z

    if-eqz v2, :cond_0

    .line 581
    new-instance v2, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080196

    new-instance v5, Ltv/emby/embyatv/browsing/StdGridFragment$8;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$8;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-direct {v2, v3, v4, v1, v5}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    :cond_0
    new-instance v2, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0800fc

    new-instance v5, Ltv/emby/embyatv/browsing/StdGridFragment$9;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$9;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-direct {v2, v3, v4, v1, v5}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mLetterButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 618
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mLetterButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mLetterButton:Ltv/emby/embyatv/ui/ImageButton;

    iget-boolean v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHideLetterJump:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Ltv/emby/embyatv/ui/ImageButton;->setVisibility(I)V

    .line 621
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v2

    sget-object v3, Ltv/emby/embyatv/querying/QueryType;->Items:Ltv/emby/embyatv/querying/QueryType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v2

    sget-object v3, Ltv/emby/embyatv/querying/QueryType;->LiveTvRecording:Ltv/emby/embyatv/querying/QueryType;

    if-ne v2, v3, :cond_4

    :cond_2
    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowUnwatched:Z

    if-eqz v2, :cond_4

    .line 622
    new-instance v2, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/model/FilterOptions;->isUnwatchedOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0801ad

    goto :goto_1

    :cond_3
    const v4, 0x7f0801ae

    :goto_1
    new-instance v5, Ltv/emby/embyatv/browsing/StdGridFragment$10;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$10;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-direct {v2, v3, v4, v1, v5}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mUnwatchedButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 641
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mUnwatchedButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 644
    :cond_4
    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowFavFilter:Z

    if-eqz v2, :cond_6

    .line 645
    new-instance v2, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/model/FilterOptions;->isFavoriteOnly()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f080171

    goto :goto_2

    :cond_5
    const v4, 0x7f0801b9

    :goto_2
    new-instance v5, Ltv/emby/embyatv/browsing/StdGridFragment$11;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$11;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-direct {v2, v3, v4, v1, v5}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFavoriteButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 664
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFavoriteButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 668
    :cond_6
    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowFilters:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 669
    new-instance v2, Ltv/emby/embyatv/ui/FilterPopup;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    iget-object v5, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mParentId:Ljava/lang/String;

    new-instance v6, Ltv/emby/embyatv/browsing/StdGridFragment$12;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$12;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-direct {v2, v3, v4, v5, v6}, Ltv/emby/embyatv/ui/FilterPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    .line 698
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/model/FilterOptions;->isFavoriteOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/ui/FilterPopup;->setFavoriteOnly(Z)V

    .line 699
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/model/FilterOptions;->isUnwatchedOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/ui/FilterPopup;->setUnwatchedOnly(Z)V

    .line 701
    new-instance v2, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0800cc

    new-instance v5, Ltv/emby/embyatv/browsing/StdGridFragment$13;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$13;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-direct {v2, v3, v4, v1, v5}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 707
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mToolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 710
    :cond_7
    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowPlayButtons:Z

    if-eqz v2, :cond_8

    .line 711
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mToolBar:Landroid/widget/LinearLayout;

    new-instance v3, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080162

    new-instance v6, Ltv/emby/embyatv/browsing/StdGridFragment$14;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$14;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-direct {v3, v4, v5, v1, v6}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 810
    :cond_8
    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowSearch:Z

    if-eqz v2, :cond_9

    .line 811
    new-instance v2, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080189

    new-instance v5, Ltv/emby/embyatv/browsing/StdGridFragment$15;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$15;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-direct {v2, v3, v4, v1, v5}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 819
    :cond_9
    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowSettings:Z

    if-eqz v2, :cond_a

    .line 820
    new-instance v2, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080111

    new-instance v5, Ltv/emby/embyatv/browsing/StdGridFragment$16;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$16;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-direct {v2, v3, v4, v1, v5}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method protected buildAdapter(Ltv/emby/embyatv/browsing/BrowseRowDef;)V
    .locals 14

    .line 384
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ShowLabels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "movies"

    .line 386
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "tvshows"

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "boxsets"

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 387
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ShowLabels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mShowLabels:Z

    .line 390
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mShowLabels:Z

    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->adjustDisplay(Z)V

    .line 393
    new-instance p1, Ltv/emby/embyatv/presentation/CardPresenter;

    iget-boolean v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mShowLabels:Z

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    iget v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    invoke-direct {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getStaticWidth()I

    move-result v4

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v0

    sget-object v5, Ltv/emby/embyatv/querying/QueryType;->LiveTvChannel:Ltv/emby/embyatv/querying/QueryType;

    const/4 v6, 0x1

    if-ne v0, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZLjava/lang/String;IIZ)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    .line 395
    sget-object p1, Ltv/emby/embyatv/browsing/StdGridFragment$23;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 434
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQuery()Lmediabrowser/model/querying/ItemQuery;

    move-result-object v8

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v9

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPreferParentThumb()Z

    move-result v10

    const/4 v11, 0x1

    iget-object v12, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    const/4 v13, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto/16 :goto_2

    .line 431
    :pswitch_0
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getItemsByNameQuery()Lmediabrowser/model/querying/ItemsByNameQuery;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v2

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v2, v3, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemsByNameQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto/16 :goto_2

    .line 428
    :pswitch_1
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getArtistsQuery()Lmediabrowser/model/querying/ArtistsQuery;

    move-result-object v5

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v6

    iget-object v7, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    const/4 v8, 0x0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ArtistsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto/16 :goto_2

    .line 424
    :pswitch_2
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getRecordingQuery()Lmediabrowser/model/livetv/RecordingQuery;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v2

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v2, v3, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecordingQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto/16 :goto_2

    .line 421
    :pswitch_3
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getProgramQuery()Lmediabrowser/model/livetv/RecommendedProgramQuery;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecommendedProgramQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto/16 :goto_2

    .line 418
    :pswitch_4
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getTvChannelQuery()Lmediabrowser/model/livetv/LiveTvChannelQuery;

    move-result-object v4

    const/16 v5, 0xc8

    iget-object v6, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    const/4 v7, 0x0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getShowPrograms()Z

    move-result v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/LiveTvChannelQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto/16 :goto_2

    .line 415
    :pswitch_5
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPersonsQuery()Lmediabrowser/model/querying/PersonsQuery;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v2

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v2, v3, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/PersonsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto :goto_2

    .line 412
    :pswitch_6
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSimilarQuery()Lmediabrowser/model/querying/SimilarItemsQuery;

    move-result-object v1

    sget-object v2, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v2, v3, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto :goto_2

    .line 409
    :pswitch_7
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSimilarQuery()Lmediabrowser/model/querying/SimilarItemsQuery;

    move-result-object v1

    sget-object v2, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v2, v3, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto :goto_2

    .line 406
    :pswitch_8
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/querying/ViewQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/ViewQuery;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ltv/emby/embyatv/querying/ViewQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto :goto_2

    .line 403
    :pswitch_9
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getUpcomingQuery()Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/UpcomingEpisodesQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto :goto_2

    .line 400
    :pswitch_a
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSeasonQuery()Lmediabrowser/model/querying/SeasonQuery;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SeasonQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto :goto_2

    .line 397
    :pswitch_b
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getNextUpQuery()Lmediabrowser/model/querying/NextUpQuery;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p1, v1, v6, v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/NextUpQuery;ZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 438
    :goto_2
    new-instance p1, Ltv/emby/embyatv/model/FilterOptions;

    invoke-direct {p1}, Ltv/emby/embyatv/model/FilterOptions;-><init>()V

    .line 439
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FavoriteOnly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setFavoriteOnly(Z)V

    .line 440
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UnwatchedOnly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setUnwatchedOnly(Z)V

    .line 442
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->setOtherFilters(Ltv/emby/embyatv/model/FilterOptions;)V

    .line 444
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->setupRetrieveListeners()V

    .line 445
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setFilters(Ltv/emby/embyatv/model/FilterOptions;)V

    .line 446
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->setAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    .line 448
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createGridPresenter()V
    .locals 1

    .line 153
    new-instance v0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    invoke-direct {v0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;-><init>()V

    .line 154
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->setGridPresenter(Ltv/emby/embyatv/presentation/IGridPresenter;)V

    .line 155
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->setNumberOfColumns()V

    return-void
.end method

.method protected getAutoCardHeight(Ljava/lang/Integer;)I
    .locals 3

    .line 516
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result size for auto card height is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const-string p1, "2"

    .line 518
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getCardHeight(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "3"

    .line 520
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getCardHeight(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCardHeight()I
    .locals 1

    .line 360
    iget v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    return v0
.end method

.method protected getCardHeight(Ljava/lang/String;)I
    .locals 1

    .line 505
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 511
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->SMALL_BANNER:I

    goto/16 :goto_7

    .line 509
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->LARGE_BANNER:I

    goto :goto_3

    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getDefaultImageType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getDefaultImageType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->LARGE_SQUARE:I

    goto :goto_3

    :cond_3
    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->LARGE_CARD:I

    goto :goto_3

    :cond_4
    :goto_2
    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->LARGE_THUMB:I

    :goto_3
    return p1

    .line 507
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->MED_BANNER:I

    goto :goto_5

    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getDefaultImageType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getDefaultImageType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->MED_SQUARE:I

    goto :goto_5

    :cond_7
    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->MED_CARD:I

    goto :goto_5

    :cond_8
    :goto_4
    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->MED_THUMB:I

    :goto_5
    return p1

    .line 511
    :cond_9
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getDefaultImageType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getDefaultImageType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->SMALL_SQUARE:I

    goto :goto_7

    :cond_b
    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->SMALL_CARD:I

    goto :goto_7

    :cond_c
    :goto_6
    iget p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->SMALL_THUMB:I

    :goto_7
    return p1

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected getDefaultImageType()Ljava/lang/String;
    .locals 3

    .line 483
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    const-string v0, "PhotoAlbum"

    .line 485
    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "3"

    return-object v0

    .line 487
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "0"

    return-object v0

    .line 489
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "homevideos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "recordings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "audiobook"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "photos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "livetv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "musicvideos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v0, "0"

    return-object v0

    :pswitch_0
    const-string v0, "3"

    return-object v0

    :pswitch_1
    const-string v0, "1"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a9a8643 -> :sswitch_6
        -0x41b5cb92 -> :sswitch_5
        -0x3af3777f -> :sswitch_4
        0x636ee25 -> :sswitch_3
        0xb3dfbbf -> :sswitch_2
        0x2bd740a2 -> :sswitch_1
        0x708a0cf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getGridHeight()I
    .locals 2

    .line 328
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected itemNeedsRefresh()Z
    .locals 4

    .line 320
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getCreatedMs()J

    move-result-wide v0

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLastPlayback()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getCreatedMs()J

    move-result-wide v0

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLastFavoriteUpdate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V
    .locals 4

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->determiningPosterSize:Z

    .line 454
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->buildAdapter(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    .line 456
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$6;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$6;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->GetResultSizeAsync(Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getSortBy()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v1}, Lmediabrowser/model/entities/DisplayPreferences;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getSortOption(Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setSortBy(Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;)Z

    .line 476
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowGrouping:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const-string v0, "true"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GroupItems"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setGroupItems(Z)V

    .line 477
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    const/4 p1, 0x0

    .line 478
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->determiningPosterSize:Z

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Ltv/emby/embyatv/ui/BaseGridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 175
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 176
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Ltv/emby/embyatv/base/BaseActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/base/BaseActivity;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    :cond_0
    const-string p1, "homevideos"

    .line 177
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "recordings"

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "movies"

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->setAllowPlayFromHere(Z)V

    .line 179
    :cond_2
    invoke-virtual {p0, p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V

    .line 181
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->addTools()V

    .line 183
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->setupEventListeners()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 131
    invoke-super {p0, p1}, Ltv/emby/embyatv/ui/BaseGridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p1

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Folder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    .line 134
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mParentId:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->MainTitle:Ljava/lang/String;

    .line 136
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getDisplayPreferencesId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->getCachedDisplayPrefs(Ljava/lang/String;)Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    .line 137
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PosterSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    .line 138
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImageType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "0"

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    .line 140
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "0"

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    .line 142
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_show_backdrop"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->ShowFanart:Z

    .line 144
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    if-nez p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "topParentCollectionType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCollectionType:Ljava/lang/String;

    .line 145
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getCardHeight(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    .line 147
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->createGridPresenter()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 278
    invoke-super {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->onDestroy()V

    .line 279
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 282
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->clearListeners()V

    .line 283
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/CompositeClickedListener;->clearListeners()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 288
    invoke-super {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 294
    invoke-super {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->onResume()V

    .line 296
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->justLoaded:Z

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_1

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$5;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$5;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->justLoaded:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setCardHeight(I)V
    .locals 0

    .line 324
    iput p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCardHeight:I

    return-void
.end method

.method protected setNumberOfColumns()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getGridPresenter()Ltv/emby/embyatv/presentation/IGridPresenter;

    move-result-object v0

    invoke-direct {p0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getNumColumns()I

    move-result v1

    invoke-interface {v0, v1}, Ltv/emby/embyatv/presentation/IGridPresenter;->setNumberOfColumnsOrRows(I)V

    return-void
.end method

.method protected setOtherFilters(Ltv/emby/embyatv/model/FilterOptions;)V
    .locals 1

    .line 525
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getWatchedOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setWatchedOnly(Z)V

    .line 527
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->get3dOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->set3dOnly(Z)V

    .line 528
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->get4kOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->set4KOnly(Z)V

    .line 529
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getHdOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setHdOnly(Z)V

    .line 530
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getSdOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setSdOnly(Z)V

    .line 531
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getGenreFilters()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setGenres([Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getStudioFilters()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setStudios([Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getTagFilters()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setTags([Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getOfficialRatingFilters()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setOfficialRatings([Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getYearFilters()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setYears([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setupEventListeners()V
    .locals 3

    .line 833
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 834
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewClickedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;Ltv/emby/embyatv/browsing/StdGridFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeClickedListener;->registerListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 836
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 837
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;Ltv/emby/embyatv/browsing/StdGridFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->registerListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 839
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$17;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$17;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    .line 868
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$18;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$18;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->registerMessageListener(Ltv/emby/embyatv/base/IMessageListener;)V

    :cond_0
    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V
    .locals 0

    return-void
.end method

.method protected setupRetrieveListeners()V
    .locals 2

    .line 889
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$19;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$19;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveStartedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 896
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$20;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$20;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method protected setupUI(Landroid/view/ViewGroup;)V
    .locals 3

    const v0, 0x7f0a0132

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridArea:Landroid/view/View;

    const v0, 0x7f0a0307

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mTitleView:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mTitleView:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mTitleView:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0180

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mInfoRow:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0310

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mToolBar:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00bb

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCounter:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCounter:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a02aa

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mSpinner:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0267

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridDock:Landroid/view/ViewGroup;

    const v0, 0x7f0a005b

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/BackgroundFrame;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    .line 200
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setFullMode(Z)V

    .line 201
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    .line 202
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const v2, 0x7f0600e9

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDimLayer(I)V

    const v0, 0x7f0a018f

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/JumpList;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    .line 204
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowLetterJump:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHideLetterJump:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/JumpList;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mJumpList:Ltv/emby/embyatv/ui/JumpList;

    new-instance v2, Ltv/emby/embyatv/browsing/StdGridFragment$2;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$2;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/JumpList;->setCharSelectedListener(Ltv/emby/embyatv/ui/CharSelectedListener;)V

    const v0, 0x7f0a025f

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRightFocusTrap:Landroid/view/View;

    .line 240
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRightFocusTrap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 241
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRightFocusTrap:Landroid/view/View;

    new-instance v2, Ltv/emby/embyatv/browsing/StdGridFragment$3;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$3;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a01b8

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mLeftFocusTrap:Landroid/view/View;

    .line 253
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mLeftFocusTrap:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 254
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mLeftFocusTrap:Landroid/view/View;

    new-instance v0, Ltv/emby/embyatv/browsing/StdGridFragment$4;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$4;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 265
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->ShowFanart:Z

    if-eqz p1, :cond_1

    .line 266
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getFullBackdropDimLayer()I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDimLayer(I)V

    .line 267
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getHomeScreenDarkening()F

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    :cond_1
    return-void
.end method

.method protected updateBackground(Ljava/lang/String;)V
    .locals 1

    .line 1012
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected updateDisplayPrefs()V
    .locals 3

    .line 547
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/DisplayPreferences;->setCustomPrefs(Ljava/util/HashMap;)V

    .line 549
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UnwatchedOnly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/model/FilterOptions;->isUnwatchedOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FavoriteOnly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/model/FilterOptions;->isFavoriteOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "true"

    goto :goto_1

    :cond_2
    const-string v2, "false"

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getSortBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/DisplayPreferences;->setSortBy(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/DisplayPreferences;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 553
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowGrouping:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GroupCollections"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getGroupItems()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "true"

    goto :goto_2

    :cond_3
    const-string v2, "false"

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->updateDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method
