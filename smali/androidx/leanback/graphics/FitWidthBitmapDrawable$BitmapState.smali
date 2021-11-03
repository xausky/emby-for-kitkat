.class Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FitWidthBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/graphics/FitWidthBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapState"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field final mDefaultSource:Landroid/graphics/Rect;

.field mOffset:I

.field mPaint:Landroid/graphics/Paint;

.field mSource:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mDefaultSource:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mDefaultSource:Landroid/graphics/Rect;

    .line 53
    iget-object v0, p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mSource:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mSource:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mSource:Landroid/graphics/Rect;

    .line 56
    iget-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mDefaultSource:Landroid/graphics/Rect;

    iget-object v1, p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mDefaultSource:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    iget p1, p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mOffset:I

    iput p1, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mOffset:I

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 63
    new-instance v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;

    invoke-direct {v0, p0}, Landroidx/leanback/graphics/FitWidthBitmapDrawable;-><init>(Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;)V

    return-object v0
.end method
