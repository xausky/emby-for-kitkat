.class public Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "MyAbstractDetailsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBody:Landroid/widget/TextView;

.field private final mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private final mBodyLineSpacing:I

.field private final mBodyMaxLines:I

.field private final mBodyMinLines:I

.field private final mInfoRow:Landroid/widget/LinearLayout;

.field private final mSubtitle:Landroid/widget/TextView;

.field private final mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTitle:Landroid/widget/TextView;

.field private final mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTitleLineSpacing:I

.field private final mTitleMargin:I

.field private final mUnderSubtitleBaselineMargin:I

.field private final mUnderTitleBaselineMargin:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01a7

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01a6

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mActivity:Landroid/app/Activity;

    .line 42
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mInfoRow:Landroid/widget/LinearLayout;

    .line 43
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    const/16 v2, 0xf

    .line 44
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45
    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 48
    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 49
    iget-object v2, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    iget-object v2, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const v0, 0x7f0a01a5

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 57
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v1, v0

    iput v1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitleMargin:I

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mUnderTitleBaselineMargin:I

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mUnderSubtitleBaselineMargin:I

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitleLineSpacing:I

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBodyLineSpacing:I

    const/4 p1, 0x6

    .line 69
    iput p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBodyMaxLines:I

    const/4 p1, 0x4

    .line 70
    iput p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBodyMinLines:I

    .line 72
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 73
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 74
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 76
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    new-instance v0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder$1;-><init>(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I
    .locals 0

    .line 20
    iget p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBodyMinLines:I

    return p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I
    .locals 0

    .line 20
    iget p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBodyLineSpacing:I

    return p0
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I
    .locals 0

    .line 20
    iget p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mUnderSubtitleBaselineMargin:I

    return p0
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    .line 20
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I
    .locals 0

    .line 20
    iget p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBodyMaxLines:I

    return p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I
    .locals 0

    .line 20
    iget p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitleLineSpacing:I

    return p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I
    .locals 0

    .line 20
    iget p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitleMargin:I

    return p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I
    .locals 0

    .line 20
    iget p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mUnderTitleBaselineMargin:I

    return p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    .line 20
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    .line 20
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method private getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 2

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 103
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 91
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBody()Landroid/widget/TextView;
    .locals 1

    .line 98
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInfoRow()Landroid/widget/LinearLayout;
    .locals 1

    .line 89
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mInfoRow:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSubtitle()Landroid/widget/TextView;
    .locals 1

    .line 94
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 86
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
