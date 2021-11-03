.class public Ltv/emby/embyatv/presentation/VerticalGridPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "VerticalGridPresenter.java"

# interfaces
.implements Ltv/emby/embyatv/presentation/IGridPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GridPresenter"


# instance fields
.field private mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

.field private mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

.field private mRoundedCornersEnabled:Z

.field private mShadowEnabled:Z

.field mViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

.field private mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

.field private mZoomFactor:I

.field private numColumns:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 62
    invoke-direct {p0, v0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->numColumns:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mShadowEnabled:Z

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    .line 167
    new-instance v0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$1;-><init>(Ltv/emby/embyatv/presentation/VerticalGridPresenter;)V

    iput-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 66
    iput p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mZoomFactor:I

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/presentation/VerticalGridPresenter;Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->selectChildView(Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private selectChildView(Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 306
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    :goto_0
    if-nez p1, :cond_1

    .line 310
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object p1

    invoke-interface {p1, v0, v0, v0, v0}, Landroidx/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1

    .line 312
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v1, p1, v0, v0}, Landroidx/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final areChildRoundedCornersEnabled()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    return v0
.end method

.method protected createGridViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;
    .locals 3

    .line 162
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 164
    new-instance v0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    const v1, 0x7f0a0320

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;-><init>(Landroidx/leanback/widget/VerticalGridView;)V

    return-object v0
.end method

.method public final enableChildRoundedCorners(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    return-void
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 89
    iget v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->numColumns:I

    return v0
.end method

.method public getNumberOfColumnsOrRows()I
    .locals 1

    .line 295
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->getNumberOfColumns()I

    move-result v0

    return v0
.end method

.method public final getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 302
    iget-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public final getOnItemViewSelectedListener()Landroidx/leanback/widget/OnItemViewSelectedListener;
    .locals 1

    .line 280
    iget-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-object v0
.end method

.method public final getShadowEnabled()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mShadowEnabled:Z

    return v0
.end method

.method protected initializeGridViewHolder(Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;)V
    .locals 4

    .line 190
    iget v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->numColumns:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 194
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->numColumns:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 195
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 196
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/VerticalGridView;->setFadingEdgeLength(I)V

    .line 197
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v2, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->numColumns:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    const/16 v2, 0x1e

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/VerticalGridView;->setVerticalSpacing(I)V

    .line 198
    iput-boolean v1, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    .line 200
    iget-object v0, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    .line 201
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->needsDefaultShadow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->areChildRoundedCornersEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    :cond_1
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-static {v0}, Landroidx/leanback/widget/ShadowOverlayContainer;->prepareParentForShadow(Landroid/view/ViewGroup;)V

    .line 203
    iget-object v0, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 205
    :cond_2
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->isUsingZOrder()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/VerticalGridView;->setFocusDrawingOrderEnabled(Z)V

    .line 206
    iget-object v0, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    iget v2, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mZoomFactor:I

    invoke-static {v0, v2, v1}, Landroidx/leanback/widget/FocusHighlightHelper;->setupBrowseItemFocusHighlight(Landroidx/leanback/widget/ItemBridgeAdapter;IZ)V

    .line 210
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$2;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$2;-><init>(Ltv/emby/embyatv/presentation/VerticalGridPresenter;Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setOnChildSelectedListener(Landroidx/leanback/widget/OnChildSelectedListener;)V

    .line 217
    iget-object p1, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    new-instance v0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;-><init>(Ltv/emby/embyatv/presentation/VerticalGridPresenter;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    return-void

    .line 191
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Number of rows must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isUsingDefaultShadow()Z
    .locals 1

    .line 116
    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayContainer;->supportsShadow()Z

    move-result v0

    return v0
.end method

.method public isUsingZOrder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final needsDefaultShadow()Z
    .locals 1

    .line 144
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->isUsingDefaultShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->getShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 255
    check-cast p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    .line 256
    iget-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    check-cast p2, Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 257
    iget-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    iget-object p2, p2, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/VerticalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;
    .locals 1

    .line 149
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->createGridViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    .line 151
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->initializeGridViewHolder(Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;)V

    .line 152
    iget-boolean v0, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "super.initializeGridViewHolder() must be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/ui/IGridViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 2

    .line 263
    check-cast p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    .line 264
    iget-object v0, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 265
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/VerticalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setNumberOfColumns(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 80
    iget v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->numColumns:I

    if-eq v0, p1, :cond_0

    .line 81
    iput p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->numColumns:I

    :cond_0
    return-void

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid number of columns"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNumberOfColumnsOrRows(I)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->setNumberOfColumns(I)V

    return-void
.end method

.method public final setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    return-void
.end method

.method public final setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    .line 273
    iput-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method

.method public final setShadowEnabled(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->mShadowEnabled:Z

    return-void
.end method
