.class public Landroidx/leanback/widget/PagingIndicator;
.super Landroid/view/View;
.source "PagingIndicator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/PagingIndicator$Dot;
    }
.end annotation


# static fields
.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final DOT_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_DIAMETER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_ALPHA:J = 0xa7L

.field private static final DURATION_DIAMETER:J = 0x1a1L

.field private static final DURATION_TRANSLATION_X:J = 0x1a1L


# instance fields
.field private final mAnimator:Landroid/animation/AnimatorSet;

.field mArrow:Landroid/graphics/Bitmap;

.field final mArrowDiameter:I

.field private final mArrowGap:I

.field mArrowPaint:Landroid/graphics/Paint;

.field final mArrowRadius:I

.field final mArrowRect:Landroid/graphics/Rect;

.field final mArrowToBgRatio:F

.field final mBgPaint:Landroid/graphics/Paint;

.field private mCurrentPage:I

.field mDotCenterY:I

.field final mDotDiameter:I

.field mDotFgSelectColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final mDotGap:I

.field final mDotRadius:I

.field private mDotSelectedNextX:[I

.field private mDotSelectedPrevX:[I

.field private mDotSelectedX:[I

.field private mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

.field final mFgPaint:Landroid/graphics/Paint;

.field private final mHideAnimator:Landroid/animation/AnimatorSet;

.field mIsLtr:Z

.field private mPageCount:I

.field private mPreviousPage:I

.field private final mShadowRadius:I

.field private final mShowAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 58
    new-instance v0, Landroidx/leanback/widget/PagingIndicator$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "alpha"

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/PagingIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    .line 71
    new-instance v0, Landroidx/leanback/widget/PagingIndicator$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "diameter"

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/PagingIndicator$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    .line 84
    new-instance v0, Landroidx/leanback/widget/PagingIndicator$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translation_x"

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/PagingIndicator$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, v0, v1}, Landroidx/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    .line 143
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    sget-object v1, Landroidx/leanback/R$styleable;->PagingIndicator:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 146
    sget p2, Landroidx/leanback/R$styleable;->PagingIndicator_lbDotRadius:I

    sget p3, Landroidx/leanback/R$dimen;->lb_page_indicator_dot_radius:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    .line 148
    iget p2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    const/4 p3, 0x2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotDiameter:I

    .line 149
    sget p2, Landroidx/leanback/R$styleable;->PagingIndicator_arrowRadius:I

    sget v1, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_radius:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowRadius:I

    .line 151
    iget p2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowDiameter:I

    .line 152
    sget p2, Landroidx/leanback/R$styleable;->PagingIndicator_dotToDotGap:I

    sget v1, Landroidx/leanback/R$dimen;->lb_page_indicator_dot_gap:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    .line 154
    sget p2, Landroidx/leanback/R$styleable;->PagingIndicator_dotToArrowGap:I

    sget v1, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_gap:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    .line 157
    sget p2, Landroidx/leanback/R$styleable;->PagingIndicator_dotBgColor:I

    sget v1, Landroidx/leanback/R$color;->lb_page_indicator_dot:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result p2

    .line 159
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    .line 160
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    sget p2, Landroidx/leanback/R$styleable;->PagingIndicator_arrowBgColor:I

    sget v1, Landroidx/leanback/R$color;->lb_page_indicator_arrow_background:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    .line 164
    iget-object p2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_0

    sget p2, Landroidx/leanback/R$styleable;->PagingIndicator_arrowColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 165
    sget p2, Landroidx/leanback/R$styleable;->PagingIndicator_arrowColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    .line 170
    sget p1, Landroidx/leanback/R$color;->lb_page_indicator_arrow_shadow:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 171
    sget p2, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_shadow_radius:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/PagingIndicator;->mShadowRadius:I

    .line 172
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    .line 173
    sget p2, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_shadow_offset:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 174
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mShadowRadius:I

    int-to-float v1, v1

    int-to-float p2, p2

    invoke-virtual {v0, v1, p2, p2, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 175
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    .line 176
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p1, v2, v2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    .line 177
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowDiameter:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    .line 179
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 180
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 p2, 0x3

    new-array v0, p2, [Landroid/animation/Animator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {p0, v4, v1}, Landroidx/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v0, v2

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 181
    invoke-direct {p0, v5, v6}, Landroidx/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v0, v3

    .line 182
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v0, p3

    .line 180
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 183
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    .line 184
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    invoke-direct {p0, v1, v4}, Landroidx/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, p2, v2

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 185
    invoke-direct {p0, v0, v1}, Landroidx/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, p2, v3

    .line 186
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, p2, p3

    .line 184
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 187
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    new-array p2, p3, [Landroid/animation/Animator;

    iget-object p3, p0, Landroidx/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    aput-object p3, p2, v2

    iget-object p3, p0, Landroidx/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    aput-object p3, p2, v3

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 189
    invoke-virtual {p0, v3, p1}, Landroidx/leanback/widget/PagingIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private adjustDotPosition()V
    .locals 5

    const/4 v0, 0x0

    .line 429
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_1

    .line 430
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/leanback/widget/PagingIndicator$Dot;->deselect()V

    .line 431
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget v4, p0, Landroidx/leanback/widget/PagingIndicator;->mPreviousPage:I

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 432
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/leanback/widget/PagingIndicator$Dot;->select()V

    .line 435
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v0, v0, v1

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mPreviousPage:I

    iget v4, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ge v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    iput v2, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 436
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget v1, v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 437
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_3

    .line 438
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/leanback/widget/PagingIndicator$Dot;->deselect()V

    .line 439
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iput v3, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 440
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    goto :goto_3

    :cond_3
    return-void
.end method

.method private calculateDotPositions()V
    .locals 7

    .line 306
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v0

    .line 307
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v1

    .line 308
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 309
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v3

    add-int/2addr v0, v2

    .line 310
    div-int/lit8 v0, v0, 0x2

    .line 311
    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    .line 312
    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    .line 313
    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    .line 314
    iget-boolean v2, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 315
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 317
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v3, v0

    iget v6, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v3, v6

    iget v6, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v3, v6

    aput v3, v2, v5

    .line 318
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v3, v0

    aput v3, v2, v5

    .line 319
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v0, v3

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, v2, v5

    .line 320
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v4, v0, :cond_1

    .line 321
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v3, v4, -0x1

    aget v2, v2, v3

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v2, v5

    aput v2, v0, v4

    .line 322
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    aget v2, v2, v3

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v2, v5

    aput v2, v0, v4

    .line 323
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    aget v2, v2, v3

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v2, v3

    aput v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 326
    :cond_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 328
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v3, v0, v3

    iget v6, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v3, v6

    iget v6, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v3, v6

    aput v3, v2, v5

    .line 329
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v3, v0, v3

    aput v3, v2, v5

    .line 330
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    aput v0, v2, v5

    .line 331
    :goto_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v4, v0, :cond_1

    .line 332
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v3, v4, -0x1

    aget v2, v2, v3

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v2, v5

    aput v2, v0, v4

    .line 333
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    aget v2, v2, v3

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v2, v5

    aput v2, v0, v4

    .line 334
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    aget v2, v2, v3

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v2, v3

    aput v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 337
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowRadius:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDotCenterY:I

    .line 338
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->adjustDotPosition()V

    return-void
.end method

.method private createDotAlphaAnimator(FF)Landroid/animation/Animator;
    .locals 3

    .line 248
    sget-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa7

    .line 249
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 250
    sget-object p2, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private createDotDiameterAnimator(FF)Landroid/animation/Animator;
    .locals 3

    .line 255
    sget-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1a1

    .line 256
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 257
    sget-object p2, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private createDotTranslationXAnimator()Landroid/animation/Animator;
    .locals 4

    .line 263
    sget-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    neg-int v2, v2

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a1

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    sget-object v1, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getColorFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 198
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    return p1
.end method

.method private getDesiredHeight()I
    .locals 2

    .line 401
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mShadowRadius:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    .line 409
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 194
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 193
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    return p1
.end method

.method private getRequiredWidth()I
    .locals 3

    .line 405
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    add-int/lit8 v1, v1, -0x3

    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private loadArrow()Landroid/graphics/Bitmap;
    .locals 9

    .line 202
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$drawable;->lb_ic_nav_arrow:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 203
    iget-boolean v0, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v0, :cond_0

    return-object v2

    .line 206
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 207
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 208
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private setSelectedPage(I)V
    .locals 1

    .line 420
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ne p1, v0, :cond_0

    return-void

    .line 424
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    .line 425
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->adjustDotPosition()V

    return-void
.end method


# virtual methods
.method getDotSelectedLeftX()[I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 353
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    return-object v0
.end method

.method getDotSelectedRightX()[I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 358
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    return-object v0
.end method

.method getDotSelectedX()[I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 348
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    return-object v0
.end method

.method getPageCount()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 343
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    .line 414
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_0

    .line 415
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/PagingIndicator$Dot;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 363
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getDesiredHeight()I

    move-result v0

    .line 365
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 377
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getDesiredWidth()I

    move-result p2

    .line 379
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 381
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 384
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 391
    :goto_1
    invoke-virtual {p0, p2, v0}, Landroidx/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageSelected(IZ)V
    .locals 2

    .line 290
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ne v0, p1, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 296
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    iput v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPreviousPage:I

    if-eqz p2, :cond_2

    .line 298
    iget-object p2, p0, Landroidx/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mPreviousPage:I

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 299
    iget-object p2, p0, Landroidx/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 300
    iget-object p2, p0, Landroidx/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 302
    :cond_2
    invoke-direct {p0, p1}, Landroidx/leanback/widget/PagingIndicator;->setSelectedPage(I)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .line 446
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 448
    :goto_0
    iget-boolean v1, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eq v1, p1, :cond_2

    .line 449
    iput-boolean p1, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    .line 450
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    .line 451
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    if-eqz p1, :cond_1

    .line 452
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 453
    invoke-virtual {v2}, Landroidx/leanback/widget/PagingIndicator$Dot;->onRtlPropertiesChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 456
    :cond_1
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->calculateDotPositions()V

    .line 457
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->invalidate()V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 396
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    .line 397
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->calculateDotPositions()V

    return-void
.end method

.method public setArrowBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 244
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    return-void
.end method

.method public setArrowColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 220
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    .line 223
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDotBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 234
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPageCount(I)V
    .locals 3

    if-lez p1, :cond_1

    .line 277
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    .line 278
    iget p1, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    new-array p1, p1, [Landroidx/leanback/widget/PagingIndicator$Dot;

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 279
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    new-instance v2, Landroidx/leanback/widget/PagingIndicator$Dot;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/PagingIndicator$Dot;-><init>(Landroidx/leanback/widget/PagingIndicator;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->calculateDotPositions()V

    .line 283
    invoke-direct {p0, p1}, Landroidx/leanback/widget/PagingIndicator;->setSelectedPage(I)V

    return-void

    .line 275
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The page count should be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
