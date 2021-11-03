.class public Ltv/emby/embyatv/ui/ChapterThumbAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChapterThumbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;,
        Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;
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
.field private keyListener:Landroid/view/View$OnKeyListener;

.field private mApplication:Ltv/emby/embyatv/TvApp;

.field private mChapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMainItemid:Ljava/lang/String;

.field private mOnClickedListener:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;

.field private roboto:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mChapters:Ljava/util/List;

    .line 42
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->roboto:Landroid/graphics/Typeface;

    .line 43
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mMainItemid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mOnClickedListener:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mChapters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Landroid/view/View$OnKeyListener;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->keyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mChapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mChapters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/ChapterInfoDto;

    .line 71
    check-cast p1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

    .line 72
    iget-object v1, p1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mChapterName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmediabrowser/model/dto/ChapterInfoDto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0}, Lmediabrowser/model/dto/ChapterInfoDto;->getHasImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v1}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 75
    sget-object v2, Lmediabrowser/model/entities/ImageType;->Chapter:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v1, v2}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 76
    iget-object v2, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/dto/ImageOptions;->setMaxWidth(Ljava/lang/Integer;)V

    .line 77
    invoke-virtual {v0}, Lmediabrowser/model/dto/ChapterInfoDto;->getImageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/dto/ImageOptions;->setImageIndex(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {v1, v0}, Lmediabrowser/model/dto/ImageOptions;->setEnableImageEnhancers(Z)V

    .line 80
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mMainItemid:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;

    iget-object v3, p1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mThumb:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3, p1, v0}, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;-><init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter;Landroid/widget/ImageView;Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mThumb:Landroid/widget/ImageView;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :goto_0
    iget-object v0, p1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$2;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/ui/ChapterThumbAdapter$2;-><init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter;Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    iget-object p1, p1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$3;

    invoke-direct {v0, p0, p2}, Ltv/emby/embyatv/ui/ChapterThumbAdapter$3;-><init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 60
    iget-object p2, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0035

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance p2, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;-><init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setClickListener(Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mOnClickedListener:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->mChapters:Ljava/util/List;

    .line 53
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 156
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->keyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method
