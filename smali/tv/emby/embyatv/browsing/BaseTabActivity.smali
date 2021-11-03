.class public abstract Ltv/emby/embyatv/browsing/BaseTabActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "BaseTabActivity.java"


# static fields
.field private static final LOGOUT:I = 0x0

.field private static final LOGOUT_CONNECT:I = 0x4

.field private static final REPORT:I = 0x2

.field private static final SETTINGS:I = 0x1

.field private static final SWITCH_SERVER:I = 0x5

.field private static final UNLOCK:I = 0x3


# instance fields
.field audioListener:Ltv/emby/embyatv/playback/AudioEventListener;

.field protected isMainPage:Z

.field protected mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

.field protected mApplication:Ltv/emby/embyatv/TvApp;

.field protected mAudioQueueButton:Ltv/emby/embyatv/ui/ImageButton;

.field protected mClock:Ltv/emby/embyatv/ui/ClockUserView;

.field protected mCurrentTab:Ltv/emby/embyatv/ui/TabText;

.field protected mDirectTabEntry:Z

.field protected mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

.field private mFocusHandler:Landroid/os/Handler;

.field protected mFolder:Lmediabrowser/model/dto/BaseItemDto;

.field protected mFragmentArea:Landroid/widget/FrameLayout;

.field protected mNewTab:Ltv/emby/embyatv/ui/TabText;

.field protected mScrollLeftIndicator:Landroid/widget/ImageView;

.field protected mScrollRightIndicator:Landroid/widget/ImageView;

.field protected mSearchButton:Ltv/emby/embyatv/ui/ImageButton;

.field protected mSettingsButton:Ltv/emby/embyatv/ui/ImageButton;

.field protected mShowLogo:Z

.field protected mShowUser:Z

.field protected mTabLayout:Landroid/widget/LinearLayout;

.field protected mTabScroller:Landroid/widget/HorizontalScrollView;

.field protected mUserButton:Landroid/widget/LinearLayout;

.field private tabChangeTimer:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mDirectTabEntry:Z

    .line 81
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mShowLogo:Z

    .line 82
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mShowUser:Z

    .line 83
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->isMainPage:Z

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFocusHandler:Landroid/os/Handler;

    .line 395
    new-instance v0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$6;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->tabChangeTimer:Ljava/lang/Runnable;

    .line 464
    new-instance v0, Ltv/emby/embyatv/browsing/BaseTabActivity$8;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$8;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->audioListener:Ltv/emby/embyatv/playback/AudioEventListener;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/browsing/BaseTabActivity;Landroid/app/Fragment;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->swapFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/browsing/BaseTabActivity;Ltv/emby/embyatv/ui/TabText;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->switchToTab(Ltv/emby/embyatv/ui/TabText;)V

    return-void
.end method

.method private getTabNdx(Ltv/emby/embyatv/ui/TabText;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 432
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 433
    iget-object v2, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private setInitialTab()V
    .locals 4

    .line 376
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RequestedTab"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 379
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "InitialTabNdx"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_1
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mDirectTabEntry:Z

    .line 385
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 386
    iget-object v2, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/TabText;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    .line 387
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabScroller:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    invoke-virtual {v0, v2, v3}, Landroid/widget/HorizontalScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFocusHandler:Landroid/os/Handler;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->tabChangeTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_2
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->setFocusContentOnEntry(Z)V

    .line 392
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->showScrollIndicators()V

    return-void
.end method

.method private swapFragment(Landroid/app/Fragment;)V
    .locals 2

    .line 423
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mCurrentTab:Ltv/emby/embyatv/ui/TabText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mCurrentTab:Ltv/emby/embyatv/ui/TabText;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/TabText;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mCurrentTab:Ltv/emby/embyatv/ui/TabText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/TabText;->setActive(Z)V

    .line 427
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private switchToTab(Ltv/emby/embyatv/ui/TabText;)V
    .locals 6

    .line 416
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Changing fragment to %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/TabText;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    invoke-virtual {p1}, Ltv/emby/embyatv/ui/TabText;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->swapFragment(Landroid/app/Fragment;)V

    .line 418
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mCurrentTab:Ltv/emby/embyatv/ui/TabText;

    .line 419
    invoke-virtual {p1, v2}, Ltv/emby/embyatv/ui/TabText;->setActive(Z)V

    return-void
.end method


# virtual methods
.method protected CreateTabs()V
    .locals 7

    .line 351
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 354
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getTabDefinitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x14

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/emby/embyatv/model/TabDef;

    .line 355
    new-instance v4, Ltv/emby/embyatv/ui/TabText;

    invoke-virtual {v3}, Ltv/emby/embyatv/model/TabDef;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ltv/emby/embyatv/model/TabDef;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {v4, p0, v6, v3}, Ltv/emby/embyatv/ui/TabText;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 356
    iget-object v3, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez v2, :cond_0

    .line 359
    invoke-virtual {v4}, Ltv/emby/embyatv/ui/TabText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 360
    invoke-virtual {v3, v1, v1, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 361
    invoke-virtual {v4, v3}, Ltv/emby/embyatv/ui/TabText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 368
    invoke-virtual {v3}, Ltv/emby/embyatv/ui/TabText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 369
    invoke-virtual {v0, v5, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 370
    invoke-virtual {v3, v0}, Ltv/emby/embyatv/ui/TabText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public FocusedTabChanged(Ltv/emby/embyatv/ui/TabText;)V
    .locals 5

    .line 440
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFocusHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->tabChangeTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Tab %s got focus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/TabText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    .line 444
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFocusHandler:Landroid/os/Handler;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->tabChangeTimer:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3b6

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFocusHandler:Landroid/os/Handler;

    new-instance v0, Ltv/emby/embyatv/browsing/BaseTabActivity$7;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$7;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public allowViewSelection()Z
    .locals 2

    .line 335
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_1

    const-string v0, "movies"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tvshows"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blockFocus(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 343
    :goto_0
    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mClock:Ltv/emby/embyatv/ui/ClockUserView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ClockUserView;->setFocusable(Z)V

    .line 347
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method public getDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;
    .locals 1

    .line 458
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    return-object v0
.end method

.method abstract getTabDefinitions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/TabDef;",
            ">;"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 91
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** BaseTabActivity onCreate"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00bf

    .line 93
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->setContentView(I)V

    .line 95
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 96
    iput-object p0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const p1, 0x7f0a00b0

    .line 98
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFragmentArea:Landroid/widget/FrameLayout;

    const p1, 0x7f0a02da

    .line 99
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0159

    .line 101
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 102
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabHeaderBackgroundResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_show_backdrop"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    const p1, 0x7f0a00a4

    .line 105
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ClockUserView;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mClock:Ltv/emby/embyatv/ui/ClockUserView;

    .line 106
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mClock:Ltv/emby/embyatv/ui/ClockUserView;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ClockUserView;->setSmallPresentation()V

    .line 109
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mClock:Ltv/emby/embyatv/ui/ClockUserView;

    new-instance v0, Ltv/emby/embyatv/browsing/BaseTabActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$1;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ClockUserView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p1, 0x7f0a031f

    .line 116
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mUserButton:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mUserButton:Landroid/widget/LinearLayout;

    new-instance v1, Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$2;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0278

    .line 242
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/ImageButton;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mSearchButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 243
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mSearchButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v1, Ltv/emby/embyatv/browsing/BaseTabActivity$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$3;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0297

    .line 250
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/ImageButton;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mSettingsButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 251
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mSettingsButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v1, Ltv/emby/embyatv/browsing/BaseTabActivity$4;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$4;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01fe

    .line 265
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/ImageButton;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mAudioQueueButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 266
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mAudioQueueButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v1, Ltv/emby/embyatv/browsing/BaseTabActivity$5;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$5;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mShowUser:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a031e

    .line 277
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a031d

    .line 278
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    .line 279
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 281
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/UserDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1e

    const/16 v7, 0x1e

    const v8, 0x7f0801b0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0801b0

    .line 286
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    :goto_1
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p1, 0x7f0a02d9

    .line 293
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabScroller:Landroid/widget/HorizontalScrollView;

    const p1, 0x7f0a0270

    .line 294
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mScrollLeftIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0a0271

    .line 295
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mScrollRightIndicator:Landroid/widget/ImageView;

    .line 297
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p1

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Folder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    .line 298
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz p1, :cond_3

    .line 299
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SearchParentId"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getDisplayPreferencesId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->getCachedDisplayPrefs(Ljava/lang/String;)Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    .line 303
    :cond_3
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mShowLogo:Z

    if-eqz p1, :cond_4

    .line 305
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 306
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 307
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0a00ea

    .line 308
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 309
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getStartupLogoResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    :cond_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->audioListener:Ltv/emby/embyatv/playback/AudioEventListener;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->addAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V

    .line 315
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->CreateTabs()V

    .line 316
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->setInitialTab()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 328
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onDestroy()V

    .line 329
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->audioListener:Ltv/emby/embyatv/playback/AudioEventListener;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->removeAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 321
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onResume()V

    .line 323
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->stopThemeSong()V

    return-void
.end method

.method public requestTabFocus()V
    .locals 1

    .line 339
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method public setDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 0

    .line 459
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    return-void
.end method

.method protected showScrollIndicators()V
    .locals 5

    .line 454
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mScrollLeftIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabScroller:Landroid/widget/HorizontalScrollView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mScrollRightIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabScroller:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public switchToTab(I)V
    .locals 1

    .line 410
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/TabText;

    if-eqz p1, :cond_0

    .line 412
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->switchToTab(Ltv/emby/embyatv/ui/TabText;)V

    :cond_0
    return-void
.end method

.method public updateDisplayPrefs()V
    .locals 2

    .line 461
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->updateDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method
