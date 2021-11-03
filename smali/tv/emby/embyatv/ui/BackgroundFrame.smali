.class public Ltv/emby/embyatv/ui/BackgroundFrame;
.super Landroid/widget/FrameLayout;
.source "BackgroundFrame.java"


# instance fields
.field context:Landroid/content/Context;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private lastImage:Ljava/lang/String;

.field mBackground:Landroid/view/View;

.field mDarkenLayer:Landroid/widget/FrameLayout;

.field mDimLayer:Landroid/widget/ImageView;

.field mPrimaryImage:Landroid/widget/ImageView;

.field private oldCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

.field transforms:[Lcom/bumptech/glide/load/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 42
    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->transforms:[Lcom/bumptech/glide/load/Transformation;

    .line 44
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 107
    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->oldCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    .line 49
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 42
    new-array p2, p2, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iput-object p2, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->transforms:[Lcom/bumptech/glide/load/Transformation;

    .line 44
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p2, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 107
    new-instance p2, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->oldCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    .line 54
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/BackgroundFrame;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->lastImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Ltv/emby/embyatv/ui/BackgroundFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->lastImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/BackgroundFrame;)Lcom/bumptech/glide/signature/ObjectKey;
    .locals 0

    .line 35
    iget-object p0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->oldCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    return-object p0
.end method

.method static synthetic access$102(Ltv/emby/embyatv/ui/BackgroundFrame;Lcom/bumptech/glide/signature/ObjectKey;)Lcom/bumptech/glide/signature/ObjectKey;
    .locals 0

    .line 35
    iput-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->oldCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    return-object p1
.end method

.method private createBrowseUI()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BackgroundFrame;->removeAllViews()V

    .line 81
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0033

    .line 82
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mBackground:Landroid/view/View;

    .line 83
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mBackground:Landroid/view/View;

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a01ce

    .line 84
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mPrimaryImage:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mPrimaryImage:Landroid/widget/ImageView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a00c3

    .line 86
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDarkenLayer:Landroid/widget/FrameLayout;

    .line 87
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDarkenLayer:Landroid/widget/FrameLayout;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getFullDarkenColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const v0, 0x7f0a00de

    .line 88
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDimLayer:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDimLayer:Landroid/widget/ImageView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getBackdropDimLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDarkenLayer:Landroid/widget/FrameLayout;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private createDefaultUI()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BackgroundFrame;->removeAllViews()V

    .line 65
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mPrimaryImage:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mPrimaryImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mPrimaryImage:Landroid/widget/ImageView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDarkenLayer:Landroid/widget/FrameLayout;

    .line 69
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDarkenLayer:Landroid/widget/FrameLayout;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getFullDarkenColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 70
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDarkenLayer:Landroid/widget/FrameLayout;

    const-string v1, "light"

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDimLayer:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDimLayer:Landroid/widget/ImageView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getFullBackdropDimLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mPrimaryImage:Landroid/widget/ImageView;

    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v0, v1, v2}, Ltv/emby/embyatv/ui/BackgroundFrame;->addView(Landroid/view/View;II)V

    .line 74
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDarkenLayer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v0, v1, v2}, Ltv/emby/embyatv/ui/BackgroundFrame;->addView(Landroid/view/View;II)V

    .line 75
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDimLayer:Landroid/widget/ImageView;

    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v0, v1, v2}, Ltv/emby/embyatv/ui/BackgroundFrame;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public getPrimaryView()Landroid/widget/ImageView;
    .locals 1

    .line 102
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mPrimaryImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 58
    iput-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    .line 59
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    invoke-direct {p0}, Ltv/emby/embyatv/ui/BackgroundFrame;->createBrowseUI()V

    return-void
.end method

.method public setBlurRadius(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x2

    .line 198
    new-array v2, v2, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Ltv/emby/embyatv/ui/BlurTransformation;

    iget-object v4, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Ltv/emby/embyatv/ui/BlurTransformation;-><init>(Landroid/content/Context;I)V

    aput-object v3, v2, v1

    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {p1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object p1, v2, v0

    goto :goto_0

    :cond_0
    new-array v2, v0, [Lcom/bumptech/glide/load/Transformation;

    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {p1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object p1, v2, v1

    :goto_0
    iput-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->transforms:[Lcom/bumptech/glide/load/Transformation;

    return-void
.end method

.method public setDarkening(F)V
    .locals 1

    .line 106
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDarkenLayer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setDimLayer(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->mDimLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setFullMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0}, Ltv/emby/embyatv/ui/BackgroundFrame;->createDefaultUI()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Ltv/emby/embyatv/ui/BackgroundFrame;->createBrowseUI()V

    :goto_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 5

    .line 110
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    .line 116
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->lastImage:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 117
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->lastImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 122
    :cond_2
    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    if-nez p1, :cond_3

    .line 124
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BackgroundFrame;->getPrimaryView()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0600e9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->lastImage:Ljava/lang/String;

    goto :goto_1

    .line 128
    :cond_3
    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    .line 129
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 130
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    .line 132
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->lastImage:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->lastImage:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_4
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object v4, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->transforms:[Lcom/bumptech/glide/load/Transformation;

    .line 134
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->oldCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BackgroundFrame$1;

    invoke-direct {v2, p0, p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame$1;-><init>(Ltv/emby/embyatv/ui/BackgroundFrame;Ljava/lang/String;Lcom/bumptech/glide/signature/ObjectKey;)V

    .line 136
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame;->transforms:[Lcom/bumptech/glide/load/Transformation;

    .line 189
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 190
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 191
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/BackgroundFrame;->getPrimaryView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method
