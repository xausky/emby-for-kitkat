.class public final Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;
.super Landroidx/leanback/widget/RowPresenter$ViewHolder;
.source "DetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/DetailsOverviewRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field mActionBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

.field final mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

.field final mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

.field final mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

.field public final mDetailsDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field final mHandler:Landroid/os/Handler;

.field final mImageView:Landroid/widget/ImageView;

.field final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final mListener:Landroidx/leanback/widget/DetailsOverviewRow$Listener;

.field mNumItems:I

.field final mOverviewFrame:Landroid/widget/FrameLayout;

.field final mOverviewView:Landroid/view/ViewGroup;

.field final mRightPanel:Landroid/view/ViewGroup;

.field final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field mShowMoreLeft:Z

.field mShowMoreRight:Z

.field final mUpdateDrawableCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Landroidx/leanback/widget/DetailsOverviewRowPresenter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/DetailsOverviewRowPresenter;Landroid/view/View;Landroidx/leanback/widget/Presenter;)V
    .locals 1

    .line 266
    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/DetailsOverviewRowPresenter;

    .line 267
    invoke-direct {p0, p2}, Landroidx/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 133
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance p1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;-><init>(Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mUpdateDrawableCallback:Ljava/lang/Runnable;

    .line 142
    new-instance p1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;-><init>(Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mListener:Landroidx/leanback/widget/DetailsOverviewRow$Listener;

    .line 173
    new-instance p1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$3;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$3;-><init>(Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 184
    new-instance p1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$4;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$4;-><init>(Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    .line 211
    new-instance p1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;-><init>(Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 268
    sget p1, Landroidx/leanback/R$id;->details_frame:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    .line 269
    sget p1, Landroidx/leanback/R$id;->details_overview:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewView:Landroid/view/ViewGroup;

    .line 270
    sget p1, Landroidx/leanback/R$id;->details_overview_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 271
    sget p1, Landroidx/leanback/R$id;->details_overview_right_panel:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    .line 272
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    sget v0, Landroidx/leanback/R$id;->details_overview_description:I

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    .line 274
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    sget v0, Landroidx/leanback/R$id;->details_overview_actions:I

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/HorizontalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    .line 276
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/HorizontalGridView;->setHasOverlappingRendering(Z)V

    .line 277
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/HorizontalGridView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 278
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/HorizontalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 279
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/HorizontalGridView;->setOnChildSelectedListener(Landroidx/leanback/widget/OnChildSelectedListener;)V

    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/leanback/R$dimen;->lb_details_overview_actions_fade_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 283
    iget-object p2, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/HorizontalGridView;->setFadingRightEdgeLength(I)V

    .line 284
    iget-object p2, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/HorizontalGridView;->setFadingLeftEdgeLength(I)V

    .line 285
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    .line 286
    invoke-virtual {p3, p1}, Landroidx/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 287
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    iget-object p2, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 1

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private showMoreLeft(Z)V
    .locals 1

    .line 247
    iget-boolean v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreLeft:Z

    if-eq p1, v0, :cond_0

    .line 248
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/HorizontalGridView;->setFadingLeftEdge(Z)V

    .line 249
    iput-boolean p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreLeft:Z

    :cond_0
    return-void
.end method

.method private showMoreRight(Z)V
    .locals 1

    .line 254
    iget-boolean v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreRight:Z

    if-eq p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/HorizontalGridView;->setFadingRightEdge(Z)V

    .line 256
    iput-boolean p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreRight:Z

    :cond_0
    return-void
.end method


# virtual methods
.method bindActions(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 165
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/HorizontalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 166
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreRight:Z

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreLeft:Z

    .line 170
    invoke-direct {p0, p1}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->showMoreLeft(Z)V

    return-void
.end method

.method checkFirstAndLastPosition(Z)V
    .locals 3

    .line 230
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    iget v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget-object v2, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 234
    :goto_1
    iget-object v2, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 242
    :cond_3
    invoke-direct {p0, p1}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->showMoreRight(Z)V

    .line 243
    invoke-direct {p0, v0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->showMoreLeft(Z)V

    return-void
.end method

.method dispatchItemSelection(Landroid/view/View;)V
    .locals 3

    .line 192
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 195
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    .line 196
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    .line 197
    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    :goto_0
    check-cast p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez p1, :cond_2

    .line 199
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 200
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object p1

    .line 201
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v0

    const/4 v1, 0x0

    .line 200
    invoke-interface {p1, v1, v1, p0, v0}, Landroidx/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object p1

    .line 206
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v2

    .line 205
    invoke-interface {v0, v1, p1, p0, v2}, Landroidx/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
