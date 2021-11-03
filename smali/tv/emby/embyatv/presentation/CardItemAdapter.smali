.class public Ltv/emby/embyatv/presentation/CardItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CardItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private SCALE_AMOUNT:F

.field private mApplication:Ltv/emby/embyatv/TvApp;

.field private mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentItemNdx:I

.field private mCurrentlyPlaying:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemClickedListener:Ltv/emby/embyatv/presentation/ItemClickedListener;

.field private mItemLongClickedListener:Ltv/emby/embyatv/presentation/ItemClickedListener;

.field private mItemSelectedListener:Ltv/emby/embyatv/presentation/ItemSelectedListener;

.field private roboto:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/emby/embyatv/presentation/ItemSelectedListener;Ltv/emby/embyatv/presentation/ItemClickedListener;Ltv/emby/embyatv/presentation/ItemClickedListener;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->roboto:Landroid/graphics/Typeface;

    .line 36
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mCurrentItemNdx:I

    .line 42
    iput-boolean v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mCurrentlyPlaying:Z

    const v0, 0x3fa66666    # 1.3f

    .line 122
    iput v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->SCALE_AMOUNT:F

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mItemSelectedListener:Ltv/emby/embyatv/presentation/ItemSelectedListener;

    .line 48
    iput-object p3, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mItemClickedListener:Ltv/emby/embyatv/presentation/ItemClickedListener;

    .line 49
    iput-object p4, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mItemLongClickedListener:Ltv/emby/embyatv/presentation/ItemClickedListener;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/presentation/CardItemAdapter;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/presentation/CardItemAdapter;)Landroid/graphics/Typeface;
    .locals 0

    .line 30
    iget-object p0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->roboto:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/presentation/ItemSelectedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mItemSelectedListener:Ltv/emby/embyatv/presentation/ItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/presentation/ItemClickedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mItemClickedListener:Ltv/emby/embyatv/presentation/ItemClickedListener;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/presentation/ItemClickedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mItemLongClickedListener:Ltv/emby/embyatv/presentation/ItemClickedListener;

    return-object p0
.end method

.method private findItemIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 68
    :goto_0
    iget-object v1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getCurrentItemNdx()I
    .locals 1

    .line 120
    iget v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mCurrentItemNdx:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    return v0
.end method

.method public isCurrentlyPlaying()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mCurrentlyPlaying:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 90
    check-cast p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    .line 91
    iget-object v1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSubText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mSubtitle2:Landroid/widget/TextView;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSubText2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iput p2, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mIndex:I

    .line 95
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/CardItemAdapter;->isCurrentlyPlaying()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mCurrentItemNdx:I

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->setPlaying(Z)Z

    .line 97
    iget-object v1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    iget v4, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mCurrentItemNdx:I

    if-ne p2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v1, v2}, Ltv/emby/embyatv/presentation/CardItemAdapter;->setCurrentView(Landroid/view/View;Z)V

    .line 98
    iget p2, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->IMAGE_SIZE:I

    int-to-float p2, p2

    iget v1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->SCALE_AMOUNT:F

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getPrimaryImageUrl(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 100
    iget-object v0, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->IMAGE_SIZE:I

    iget v2, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->IMAGE_SIZE:I

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    .line 106
    :cond_2
    iget-object p2, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    const v0, 0x7f08005e

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object p1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 79
    iget-object p2, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00b8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 80
    new-instance p2, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;-><init>(Ltv/emby/embyatv/presentation/CardItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 2

    .line 58
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 61
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/presentation/CardItemAdapter;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public setBaseAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mBaseAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 54
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/CardItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCurrentItemNdx(I)V
    .locals 0

    .line 118
    iput p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mCurrentItemNdx:I

    return-void
.end method

.method public setCurrentView(Landroid/view/View;Z)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 125
    iget v1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->SCALE_AMOUNT:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    if-eqz p2, :cond_1

    .line 126
    iget v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->SCALE_AMOUNT:F

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public setCurrentlyPlaying(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter;->mCurrentlyPlaying:Z

    return-void
.end method
