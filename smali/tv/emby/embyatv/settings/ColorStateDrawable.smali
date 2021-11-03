.class public Ltv/emby/embyatv/settings/ColorStateDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "ColorStateDrawable.java"


# static fields
.field private static final PRESSED_STATE_MULTIPLIER:F = 0.7f


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 40
    iput p2, p0, Ltv/emby/embyatv/settings/ColorStateDrawable;->mColor:I

    return-void
.end method

.method private getPressedColor(I)I
    .locals 3

    const/4 v0, 0x3

    .line 66
    new-array v0, v0, [F

    .line 67
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    .line 68
    aget v1, v0, p1

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    aput v1, v0, p1

    .line 69
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 5

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const v4, 0x10100a7

    if-eq v3, v4, :cond_1

    const v4, 0x101009c

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 54
    iget v0, p0, Ltv/emby/embyatv/settings/ColorStateDrawable;->mColor:I

    invoke-direct {p0, v0}, Ltv/emby/embyatv/settings/ColorStateDrawable;->getPressedColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 56
    :cond_3
    iget v0, p0, Ltv/emby/embyatv/settings/ColorStateDrawable;->mColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 59
    :goto_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method
