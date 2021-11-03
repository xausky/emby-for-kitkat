.class public Ltv/emby/embyatv/ui/BaseGridFragment;
.super Landroid/app/Fragment;
.source "BaseGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseGridFragment"


# instance fields
.field protected LARGE_BANNER:I

.field protected LARGE_CARD:I

.field protected LARGE_SQUARE:I

.field protected LARGE_THUMB:I

.field protected MED_BANNER:I

.field protected MED_CARD:I

.field protected MED_SQUARE:I

.field protected MED_THUMB:I

.field protected SMALL_BANNER:I

.field protected SMALL_CARD:I

.field protected SMALL_SQUARE:I

.field protected SMALL_THUMB:I

.field private mAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field protected mCounter:Landroid/widget/TextView;

.field protected mGridArea:Landroid/view/View;

.field protected mGridDock:Landroid/view/ViewGroup;

.field private mGridPresenter:Ltv/emby/embyatv/presentation/IGridPresenter;

.field private mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

.field protected mInfoRow:Landroid/widget/LinearLayout;

.field protected mJumpList:Ltv/emby/embyatv/ui/JumpList;

.field protected mJumpScroller:Landroid/widget/ScrollView;

.field protected mLeftFocusTrap:Landroid/view/View;

.field private mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

.field private mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

.field protected mRightFocusTrap:Landroid/view/View;

.field private final mRowSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

.field private mSelectedPosition:I

.field protected mSpinner:Landroid/widget/FrameLayout;

.field protected mTitleView:Landroid/widget/TextView;

.field protected mToolBar:Landroid/widget/LinearLayout;

.field protected sortOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mSelectedPosition:I

    .line 57
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x73

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->SMALL_CARD:I

    .line 58
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x9b

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->MED_CARD:I

    .line 59
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->LARGE_CARD:I

    .line 60
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->SMALL_THUMB:I

    .line 61
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x84

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->MED_THUMB:I

    .line 62
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0xd2

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->LARGE_THUMB:I

    .line 63
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->SMALL_BANNER:I

    .line 64
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->MED_BANNER:I

    .line 65
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->LARGE_BANNER:I

    .line 66
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->SMALL_SQUARE:I

    .line 67
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x82

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->MED_SQUARE:I

    .line 68
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0xd6

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->LARGE_SQUARE:I

    .line 134
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->availableSortOptions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->sortOptions:Ljava/util/Map;

    .line 171
    new-instance v0, Ltv/emby/embyatv/ui/BaseGridFragment$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/BaseGridFragment$1;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mRowSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/BaseGridFragment;)Ltv/emby/embyatv/ui/IGridViewHolder;
    .locals 0

    .line 35
    iget-object p0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/BaseGridFragment;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/BaseGridFragment;->onRowSelected(I)V

    return-void
.end method

.method static synthetic access$200(Ltv/emby/embyatv/ui/BaseGridFragment;)Landroidx/leanback/widget/OnItemViewSelectedListener;
    .locals 0

    .line 35
    iget-object p0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-object p0
.end method

.method private onRowSelected(I)V
    .locals 1

    .line 193
    iget v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mSelectedPosition:I

    if-eq p1, v0, :cond_0

    .line 194
    iput p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mSelectedPosition:I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 197
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/BaseGridFragment;->updateCounter(I)V

    return-void
.end method

.method private updateAdapter()V
    .locals 3

    .line 292
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridPresenter:Ltv/emby/embyatv/presentation/IGridPresenter;

    iget-object v1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    check-cast v1, Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-interface {v0, v1, v2}, Ltv/emby/embyatv/presentation/IGridPresenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 294
    iget v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    invoke-interface {v0}, Ltv/emby/embyatv/ui/IGridViewHolder;->getGridView()Landroidx/leanback/widget/BaseGridView;

    move-result-object v0

    iget v1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected availableSortOptions()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f10051a

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SortName"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f10051b

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SortName"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f10047a

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DateCreated"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f10047b

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DateCreated"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100566

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PremiereDate"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100567

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PremiereDate"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100541

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OfficialRating"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100478

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CriticRating"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f1004e8

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CommunityRating"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100595

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Runtime"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f1004f5

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DatePlayed"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected createGrid()V
    .locals 2

    .line 255
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridPresenter:Ltv/emby/embyatv/presentation/IGridPresenter;

    iget-object v1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridDock:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Ltv/emby/embyatv/presentation/IGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/ui/IGridViewHolder;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    .line 256
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    invoke-interface {v0}, Ltv/emby/embyatv/ui/IGridViewHolder;->getGridView()Landroidx/leanback/widget/BaseGridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setFocusable(Z)V

    .line 257
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridDock:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 258
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    invoke-interface {v0}, Ltv/emby/embyatv/ui/IGridViewHolder;->getGridView()Landroidx/leanback/widget/BaseGridView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setGravity(I)V

    .line 259
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridDock:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 260
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridDock:Landroid/view/ViewGroup;

    iget-object v1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    invoke-interface {v1}, Ltv/emby/embyatv/ui/IGridViewHolder;->getGridView()Landroidx/leanback/widget/BaseGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    invoke-direct {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->updateAdapter()V

    return-void
.end method

.method public focusGrid()V
    .locals 1

    .line 272
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    invoke-interface {v0}, Ltv/emby/embyatv/ui/IGridViewHolder;->getGridView()Landroidx/leanback/widget/BaseGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    invoke-interface {v0}, Ltv/emby/embyatv/ui/IGridViewHolder;->getGridView()Landroidx/leanback/widget/BaseGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public getAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    .line 104
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    return-object v0
.end method

.method public getGridPresenter()Ltv/emby/embyatv/presentation/IGridPresenter;
    .locals 1

    .line 89
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridPresenter:Ltv/emby/embyatv/presentation/IGridPresenter;

    return-object v0
.end method

.method public getGridWidth()I
    .locals 2

    .line 108
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 221
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method protected getSortFriendlyName(Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)Ljava/lang/String;
    .locals 0

    .line 153
    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/ui/BaseGridFragment;->getSortOption(Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    move-result-object p1

    iget-object p1, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->name:Ljava/lang/String;

    return-object p1
.end method

.method protected getSortOption(Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;
    .locals 3

    .line 157
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->sortOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 158
    iget-object v2, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->sortOptions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    .line 159
    iget-object v2, v1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v2, p2}, Lmediabrowser/model/entities/SortOrder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 162
    :cond_1
    new-instance p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    const-string p2, "Unknown"

    const-string v0, ""

    sget-object v1, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {p1, p0, p2, v0, v1}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    return-object p1
.end method

.method public getToolBar()Landroid/widget/LinearLayout;
    .locals 1

    .line 169
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mToolBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public hideSpinner()V
    .locals 2

    .line 236
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mSpinner:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/BaseGridFragment$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/BaseGridFragment$3;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 277
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 268
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 248
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->createGrid()V

    const p2, 0x7f0a0190

    .line 250
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mJumpScroller:Landroid/widget/ScrollView;

    .line 251
    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mJumpScroller:Landroid/widget/ScrollView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    return-void
.end method

.method public setAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 96
    iput-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 97
    invoke-direct {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->updateAdapter()V

    return-void
.end method

.method public setGridPresenter(Ltv/emby/embyatv/presentation/IGridPresenter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 78
    iput-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridPresenter:Ltv/emby/embyatv/presentation/IGridPresenter;

    .line 79
    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridPresenter:Ltv/emby/embyatv/presentation/IGridPresenter;

    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mRowSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/presentation/IGridPresenter;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 80
    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridPresenter:Ltv/emby/embyatv/presentation/IGridPresenter;

    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/presentation/IGridPresenter;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    :cond_0
    return-void

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Grid presenter may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mInfoRow:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Ltv/emby/embyatv/itemhandling/BaseRowItem;Landroid/widget/LinearLayout;ZZ)V

    .line 115
    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mRightFocusTrap:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mRightFocusTrap:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mTitleView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V
    .locals 1

    .line 211
    iput-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    .line 212
    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridPresenter:Ltv/emby/embyatv/presentation/IGridPresenter;

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridPresenter:Ltv/emby/embyatv/presentation/IGridPresenter;

    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/presentation/IGridPresenter;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 285
    iput p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mSelectedPosition:I

    .line 286
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    invoke-interface {v0}, Ltv/emby/embyatv/ui/IGridViewHolder;->getGridView()Landroidx/leanback/widget/BaseGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mGridViewHolder:Ltv/emby/embyatv/ui/IGridViewHolder;

    invoke-interface {v0}, Ltv/emby/embyatv/ui/IGridViewHolder;->getGridView()Landroidx/leanback/widget/BaseGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPositionSmooth(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSpinner()V
    .locals 2

    .line 225
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mSpinner:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BaseGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/BaseGridFragment$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/BaseGridFragment$2;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateCounter(I)V
    .locals 2

    .line 201
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mCounter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment;->mAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
