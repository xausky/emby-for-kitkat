.class public Ltv/emby/embyatv/presentation/MyImageCardView;
.super Landroidx/leanback/widget/BaseCardView;
.source "MyImageCardView.java"


# instance fields
.field private BANNER_SIZE:I

.field private mBadgeImage:Landroid/widget/ImageView;

.field private mBanner:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/TextView;

.field private mFixedWidth:Z

.field private mFocusRect:Landroid/widget/ImageView;

.field private mImageSizeSet:Z

.field private mImageText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfoArea:Landroid/view/View;

.field private mInfoOverlay:Landroid/view/ViewGroup;

.field private mOverlayCount:Landroid/widget/TextView;

.field private mOverlayIcon:Landroid/widget/ImageView;

.field private mOverlayName:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRoundedRectHelper:Ltv/emby/embyatv/util/RoundedRectHelper;

.field private mTitleView:Landroid/widget/TextView;

.field private mUnwatchedCount:Landroid/widget/TextView;

.field private mUseFocusRect:Z

.field private mWatchedBackground:Landroid/widget/ImageView;

.field private mWatchedIndicator:Landroid/widget/RelativeLayout;

.field private mWatchedMark:Landroid/widget/ImageView;

.field protected noIconMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, p1, v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 3

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    const/16 p3, 0x32

    invoke-static {p2, p3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->BANNER_SIZE:I

    .line 55
    new-instance p2, Ltv/emby/embyatv/util/RoundedRectHelper;

    invoke-direct {p2}, Ltv/emby/embyatv/util/RoundedRectHelper;-><init>()V

    iput-object p2, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mRoundedRectHelper:Ltv/emby/embyatv/util/RoundedRectHelper;

    .line 306
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    const/4 p3, 0x5

    invoke-static {p2, p3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->noIconMargin:I

    const/4 p2, 0x0

    if-nez p4, :cond_0

    .line 74
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/presentation/MyImageCardView;->setCardType(I)V

    .line 77
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0052

    .line 78
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a01ce

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0177

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-static {v2, p3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p3

    invoke-static {v0, v1, p3}, Ltv/emby/embyatv/util/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    const p3, 0x7f0a0184

    .line 82
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    const p3, 0x7f0a030f

    .line 83
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    const p3, 0x7f0a008c

    .line 84
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageText:Landroid/widget/TextView;

    const p3, 0x7f0a00b3

    .line 85
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    const p3, 0x7f0a0060

    .line 86
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    const p3, 0x7f0a0211

    .line 87
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    .line 88
    iget-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p3, 0x7f0a0210

    .line 89
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayCount:Landroid/widget/TextView;

    .line 90
    iget-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayCount:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p3, 0x7f0a0163

    .line 91
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayIcon:Landroid/widget/ImageView;

    const p3, 0x7f0a01e9

    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoOverlay:Landroid/view/ViewGroup;

    .line 93
    iget-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoOverlay:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const p3, 0x7f0a0328

    .line 94
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedIndicator:Landroid/widget/RelativeLayout;

    const p3, 0x7f0a009d

    .line 95
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedMark:Landroid/widget/ImageView;

    const p3, 0x7f0a0327

    .line 96
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedBackground:Landroid/widget/ImageView;

    const p3, 0x7f0a031a

    .line 97
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mUnwatchedCount:Landroid/widget/TextView;

    const p3, 0x7f0a025c

    .line 98
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mProgress:Landroid/widget/ProgressBar;

    const p3, 0x7f0a0061

    .line 99
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBanner:Landroid/widget/ImageView;

    const p3, 0x7f0a0128

    .line 100
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mFocusRect:Landroid/widget/ImageView;

    .line 101
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "pref_show_focusrect"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mUseFocusRect:Z

    .line 102
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->isImageOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mUseFocusRect:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    const/16 p3, 0xc8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 104
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "pref_use_cards"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 109
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    .line 110
    iget-object p2, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    iget-object p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    iget-object p4, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p2, p1, p3, p1, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    const v0, 0x7f04010b

    .line 67
    invoke-direct {p0, p1, p2, v0, p3}, Ltv/emby/embyatv/presentation/MyImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0, p2}, Ltv/emby/embyatv/presentation/MyImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 63
    iput-boolean p3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mFixedWidth:Z

    return-void
.end method

.method private fadeIn(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x10e0000

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setTextMaxLines()V
    .locals 5

    .line 365
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getTitleText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 372
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 376
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public clearBanner()V
    .locals 2

    .line 382
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBanner:Landroid/widget/ImageView;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getContentText()Ljava/lang/CharSequence;
    .locals 1

    .line 334
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 338
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getInfoAreaBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 224
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 216
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getMainImageView()Landroid/widget/ImageView;
    .locals 1

    .line 127
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/CharSequence;
    .locals 1

    .line 317
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hideIcon()V
    .locals 2

    .line 308
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 310
    iget v1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->noIconMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 311
    iget v1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->noIconMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 312
    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public isImageOnly()Z
    .locals 1

    .line 257
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getCardType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 413
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 414
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 415
    invoke-super {p0}, Landroidx/leanback/widget/BaseCardView;->onDetachedFromWindow()V

    return-void
.end method

.method public setBadgeImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 342
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 347
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setBanner(I)V
    .locals 1

    .line 123
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setCenteredTitle(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 142
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 325
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-direct {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->setTextMaxLines()V

    return-void
.end method

.method public setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 231
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setInfoAreaBackgroundResource(I)V
    .locals 1

    .line 237
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setMainImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 165
    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImage(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setMainImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    .line 172
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    .line 178
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 179
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 180
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 184
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/presentation/MyImageCardView;->fadeIn(Landroid/view/View;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 187
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setMainImageAdjustViewBounds(Z)V
    .locals 1

    .line 131
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :cond_0
    return-void
.end method

.method public setMainImageDimensions(II)V
    .locals 2

    .line 193
    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageSizeSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mFixedWidth:Z

    if-nez v0, :cond_3

    .line 194
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 195
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBanner:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBanner:Landroid/widget/ImageView;

    iget v1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->BANNER_SIZE:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 199
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 200
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mUseFocusRect:Z

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mFocusRect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 204
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mFocusRect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 209
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 210
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public setMainImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 156
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setOverlayInfo(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 4

    .line 271
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getCardType()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->showCardInfoOverlay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Folder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "Playlist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "PhotoAlbum"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "Video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "Photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_5
    const-string v2, "MusicArtist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "Person"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 295
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0800cf

    goto :goto_2

    .line 291
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->hideIcon()V

    goto :goto_3

    .line 284
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 280
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayIcon:Landroid/widget/ImageView;

    const v1, 0x7f080161

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 276
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayIcon:Landroid/widget/ImageView;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_3
    const v1, 0x7f080064

    .line 296
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    :goto_3
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getChildCountStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoOverlay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 302
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoOverlay:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71b7788b -> :sswitch_6
        -0x711b8e54 -> :sswitch_5
        0x4984e12 -> :sswitch_4
        0x4ed245b -> :sswitch_3
        0x56e63b7d -> :sswitch_2
        0x73e0e5f2 -> :sswitch_1
        0x7dc2088e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOverlayText(Ljava/lang/String;)V
    .locals 1

    .line 261
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->isImageOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mOverlayName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoOverlay:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->hideIcon()V

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mInfoOverlay:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setPlayingIndicator(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    const v0, 0x7f08009e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 149
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 404
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 405
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 407
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->isImageOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mUseFocusRect:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0xc8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_2

    .line 118
    :cond_1
    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mUseFocusRect:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mFocusRect:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroidx/leanback/widget/BaseCardView;->setSelected(Z)V

    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 247
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-direct {p0}, Ltv/emby/embyatv/presentation/MyImageCardView;->setTextMaxLines()V

    return-void
.end method

.method public setUnwatchedCount(I)V
    .locals 4

    const v0, 0x7f0800e4

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lez p1, :cond_0

    .line 387
    iget-object v3, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mUnwatchedCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mUnwatchedCount:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedMark:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 393
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedMark:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mUnwatchedCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mWatchedIndicator:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showImageText(Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyImageCardView;->mImageText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
