.class public Ltv/emby/embyatv/ui/FilterPopup;
.super Ljava/lang/Object;
.source "FilterPopup.java"


# instance fields
.field private hasChanged:Z

.field private m3d:Landroid/widget/CheckBox;

.field private mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field private mFavorite:Landroid/widget/CheckBox;

.field private mOtherFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/ui/FilterSelector;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherFiltersLayout:Landroid/widget/LinearLayout;

.field private mOtherFiltersTitle:Landroid/widget/LinearLayout;

.field private mPlaystate:Landroid/widget/RadioGroup;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mResolution:Landroid/widget/RadioGroup;

.field private mTitle:Landroid/widget/TextView;

.field private mVideoFormatOptions:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/embyatv/base/BaseActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mOtherFilters:Ljava/util/List;

    .line 52
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 53
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0044

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDialogBackgroundResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltv/emby/embyatv/ui/FilterPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Ltv/emby/embyatv/ui/FilterPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v3, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 57
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 58
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 59
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a01cc

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mTitle:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getDefaultFontBold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a020e

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mOtherFiltersTitle:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0321

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mVideoFormatOptions:Landroid/widget/LinearLayout;

    const v0, 0x7f0a020d

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mOtherFiltersLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a008e

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mFavorite:Landroid/widget/CheckBox;

    .line 68
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mFavorite:Landroid/widget/CheckBox;

    new-instance v2, Ltv/emby/embyatv/ui/FilterPopup$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/ui/FilterPopup$1;-><init>(Ltv/emby/embyatv/ui/FilterPopup;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a008d

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->m3d:Landroid/widget/CheckBox;

    .line 76
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->m3d:Landroid/widget/CheckBox;

    new-instance v2, Ltv/emby/embyatv/ui/FilterPopup$2;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/ui/FilterPopup$2;-><init>(Ltv/emby/embyatv/ui/FilterPopup;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0247

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPlaystate:Landroid/widget/RadioGroup;

    .line 84
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPlaystate:Landroid/widget/RadioGroup;

    new-instance v2, Ltv/emby/embyatv/ui/FilterPopup$3;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/ui/FilterPopup$3;-><init>(Ltv/emby/embyatv/ui/FilterPopup;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0a024b

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mResolution:Landroid/widget/RadioGroup;

    .line 92
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mResolution:Landroid/widget/RadioGroup;

    new-instance v2, Ltv/emby/embyatv/ui/FilterPopup$4;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/ui/FilterPopup$4;-><init>(Ltv/emby/embyatv/ui/FilterPopup;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0a0076

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/ui/FilterPopup$5;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/FilterPopup$5;-><init>(Ltv/emby/embyatv/ui/FilterPopup;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Filter popup created for item type: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "mixed"

    .line 110
    :goto_0
    invoke-direct {p0, p2, p3}, Ltv/emby/embyatv/ui/FilterPopup;->createOtherFilters(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance p2, Ltv/emby/embyatv/ui/FilterPopup$6;

    invoke-direct {p2, p0, p4}, Ltv/emby/embyatv/ui/FilterPopup$6;-><init>(Ltv/emby/embyatv/ui/FilterPopup;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/FilterPopup;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Ltv/emby/embyatv/ui/FilterPopup;->hasChanged:Z

    return p0
.end method

.method static synthetic access$002(Ltv/emby/embyatv/ui/FilterPopup;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/FilterPopup;->hasChanged:Z

    return p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/FilterPopup;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mOtherFilters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/ui/FilterPopup;)Ltv/emby/embyatv/base/BaseActivity;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/ui/FilterPopup;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mOtherFiltersLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/ui/FilterPopup;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mVideoFormatOptions:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/ui/FilterPopup;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ltv/emby/embyatv/ui/FilterPopup;->checkForFilters()V

    return-void
.end method

.method private checkForFilters()V
    .locals 2

    .line 294
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mOtherFiltersTitle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltv/emby/embyatv/ui/FilterPopup;->mOtherFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private createOtherFilters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3fac58bd

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const v1, -0x37cbc82c

    if-eq v0, v1, :cond_2

    const v1, 0x6318bfb

    if-eq v0, v1, :cond_1

    const v1, 0x708a0cf7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "homevideos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "mixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "tvshows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "movies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 126
    :pswitch_0
    new-instance v0, Lmediabrowser/model/querying/ItemsByNameQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/ItemsByNameQuery;-><init>()V

    .line 127
    invoke-virtual {v0, p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->setParentId(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/ItemsByNameQuery;->setRecursive(Z)V

    .line 129
    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/ItemsByNameQuery;->setEnableTotalRecordCount(Z)V

    .line 130
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setEnableImages(Ljava/lang/Boolean;)V

    const-string v1, "SortName"

    .line 131
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setSortBy([Ljava/lang/String;)V

    const-string v1, "movie"

    const-string v4, "video"

    const-string v5, "series"

    .line 132
    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setUserId(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v4, Ltv/emby/embyatv/ui/FilterPopup$7;

    invoke-direct {v4, p0}, Ltv/emby/embyatv/ui/FilterPopup$7;-><init>(Ltv/emby/embyatv/ui/FilterPopup;)V

    invoke-virtual {v1, v0, v4}, Lmediabrowser/apiinteraction/ApiClient;->GetGenresAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V

    .line 156
    new-instance v0, Lmediabrowser/model/querying/ItemsByNameQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/ItemsByNameQuery;-><init>()V

    .line 157
    invoke-virtual {v0, p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->setParentId(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/ItemsByNameQuery;->setRecursive(Z)V

    .line 159
    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/ItemsByNameQuery;->setEnableTotalRecordCount(Z)V

    .line 160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setEnableImages(Ljava/lang/Boolean;)V

    const-string v1, "SortName"

    .line 161
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setSortBy([Ljava/lang/String;)V

    const-string v1, "movie"

    const-string v2, "video"

    const-string v3, "series"

    .line 162
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 163
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setUserId(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/FilterPopup$8;

    invoke-direct {v2, p0, p2, p1}, Ltv/emby/embyatv/ui/FilterPopup$8;-><init>(Ltv/emby/embyatv/ui/FilterPopup;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetStudiosAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private findSelector(Ljava/lang/String;)Ltv/emby/embyatv/ui/FilterSelector;
    .locals 3

    .line 298
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mOtherFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/ui/FilterSelector;

    .line 299
    invoke-virtual {v1}, Ltv/emby/embyatv/ui/FilterSelector;->getFilterType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFilters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 318
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/FilterPopup;->findSelector(Ljava/lang/String;)Ltv/emby/embyatv/ui/FilterSelector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1}, Ltv/emby/embyatv/ui/FilterSelector;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p1}, Ltv/emby/embyatv/ui/FilterSelector;->getValues()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasOtherFilters()Z
    .locals 2

    .line 337
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mOtherFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/ui/FilterSelector;

    .line 338
    invoke-virtual {v1}, Ltv/emby/embyatv/ui/FilterSelector;->hasValues()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public anyFilters()Z
    .locals 1

    .line 333
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/FilterPopup;->getWatchedOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/ui/FilterPopup;->get3dOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/ui/FilterPopup;->getHdOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/ui/FilterPopup;->getSdOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ltv/emby/embyatv/ui/FilterPopup;->hasOtherFilters()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 355
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public get3dOnly()Z
    .locals 1

    .line 308
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->m3d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public get4kOnly()Z
    .locals 2

    .line 309
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mResolution:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a024c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFavoriteOnly()Z
    .locals 1

    .line 305
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mFavorite:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getGenreFilters()[Ljava/lang/String;
    .locals 1

    const-string v0, "genreIds"

    .line 326
    invoke-direct {p0, v0}, Ltv/emby/embyatv/ui/FilterPopup;->getFilters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHdOnly()Z
    .locals 2

    .line 310
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mResolution:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a024e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOfficialRatingFilters()[Ljava/lang/String;
    .locals 1

    const-string v0, "officialRatings"

    .line 329
    invoke-direct {p0, v0}, Ltv/emby/embyatv/ui/FilterPopup;->getFilters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdOnly()Z
    .locals 2

    .line 311
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mResolution:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a024f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStudioFilters()[Ljava/lang/String;
    .locals 1

    const-string v0, "studioIds"

    .line 327
    invoke-direct {p0, v0}, Ltv/emby/embyatv/ui/FilterPopup;->getFilters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagFilters()[Ljava/lang/String;
    .locals 1

    const-string v0, "tagIds"

    .line 328
    invoke-direct {p0, v0}, Ltv/emby/embyatv/ui/FilterPopup;->getFilters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnwatchedOnly()Z
    .locals 2

    .line 313
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPlaystate:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a0249

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWatchedOnly()Z
    .locals 2

    .line 312
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPlaystate:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a024a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getYearFilters()[Ljava/lang/String;
    .locals 1

    const-string v0, "years"

    .line 330
    invoke-direct {p0, v0}, Ltv/emby/embyatv/ui/FilterPopup;->getFilters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 345
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

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

.method public setFavoriteOnly(Z)V
    .locals 1

    .line 306
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mFavorite:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setUnwatchedOnly(Z)V
    .locals 1

    .line 315
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPlaystate:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_0

    const p1, 0x7f0a0249

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0248

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public show()V
    .locals 4

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Ltv/emby/embyatv/ui/FilterPopup;->hasChanged:Z

    .line 350
    iget-object v1, p0, Ltv/emby/embyatv/ui/FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Ltv/emby/embyatv/ui/FilterPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v2}, Ltv/emby/embyatv/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
