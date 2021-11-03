.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionsPopup"
.end annotation


# instance fields
.field final HEIGHT:I

.field final WIDTH:I

.field mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field mCancelButton:Landroid/widget/Button;

.field mColorCode:Landroid/widget/CheckBox;

.field mCompact:Landroid/widget/CheckBox;

.field mCurrentSort:Ljava/lang/String;

.field mFavTop:Landroid/widget/CheckBox;

.field mHd:Landroid/widget/CheckBox;

.field mLive:Landroid/widget/CheckBox;

.field mNew:Landroid/widget/CheckBox;

.field mPopup:Landroid/widget/PopupWindow;

.field mPremiere:Landroid/widget/CheckBox;

.field mRating:Landroid/widget/CheckBox;

.field mRepeat:Landroid/widget/CheckBox;

.field mSaveButton:Landroid/widget/Button;

.field mSortBy:Landroid/widget/Spinner;

.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 9

    .line 790
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->WIDTH:I

    .line 771
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->HEIGHT:I

    .line 791
    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 792
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d004e

    const/4 v1, 0x0

    .line 793
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 794
    new-instance v0, Landroid/widget/PopupWindow;

    iget v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->WIDTH:I

    iget v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->HEIGHT:I

    invoke-direct {v0, p2, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 795
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 796
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 797
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 798
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x7f1100d4

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 799
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getGuideBackgroundResource()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a0154

    .line 800
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mHd:Landroid/widget/CheckBox;

    const v0, 0x7f0a0256

    .line 801
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mRepeat:Landroid/widget/CheckBox;

    const v0, 0x7f0a0246

    .line 802
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mRating:Landroid/widget/CheckBox;

    const v0, 0x7f0a01c2

    .line 803
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mLive:Landroid/widget/CheckBox;

    const v0, 0x7f0a01ec

    .line 804
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mNew:Landroid/widget/CheckBox;

    const v0, 0x7f0a00a6

    .line 805
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mColorCode:Landroid/widget/CheckBox;

    const v0, 0x7f0a0233

    .line 806
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPremiere:Landroid/widget/CheckBox;

    const v0, 0x7f0a0114

    .line 807
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mFavTop:Landroid/widget/CheckBox;

    const v0, 0x7f0a02a6

    .line 808
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mSortBy:Landroid/widget/Spinner;

    const v0, 0x7f0a00aa

    .line 809
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCompact:Landroid/widget/CheckBox;

    const v0, 0x7f0a0204

    .line 811
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mSaveButton:Landroid/widget/Button;

    .line 812
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a008a

    .line 832
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCancelButton:Landroid/widget/Button;

    .line 833
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCancelButton:Landroid/widget/Button;

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$2;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$2;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mSortBy:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "4.4.0.20"

    invoke-static {v4, v5}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    const v6, 0x7f1004d6

    const v7, 0x7f1004d7

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1, v7}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-virtual {p1, v6}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    const v1, 0x7f100284

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    const v5, 0x7f1002bb

    invoke-virtual {p1, v5}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    :goto_0
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p1, v7}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p1, v6}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    :goto_1
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v1, 0x1090008

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 842
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mSortBy:Landroid/widget/Spinner;

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 913
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 874
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 7

    .line 878
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v0

    .line 880
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mHd:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showHDIndicator:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 881
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mRepeat:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRepeatIndicator:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 882
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mLive:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showLiveIndicator:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 883
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mNew:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showNewIndicator:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 884
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mRepeat:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRepeatIndicator:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 885
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mColorCode:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->colorCodeGuide:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 886
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mFavTop:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->favsAtTop:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 887
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPremiere:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showPremiereIndicator:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 888
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mRating:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRatingIndicator:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 889
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCompact:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->compactLayout:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 890
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4.4.0.20"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 892
    iget-object v0, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x5fcd61b

    const/4 v6, 0x2

    if-eq v4, v5, :cond_2

    const v5, 0x66e54969

    if-eq v4, v5, :cond_1

    const v5, 0x6e830509

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "ChannelNumber,SortName"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "SortName"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "PlayCount"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x2

    .line 903
    :goto_1
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mSortBy:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 905
    :cond_4
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mSortBy:Landroid/widget/Spinner;

    iget-object v0, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    const-string v4, "DatePlayed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 908
    :goto_2
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object v4, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v4}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v4

    iget-object v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v6, 0x14

    invoke-static {v5, v6}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
