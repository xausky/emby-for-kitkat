.class final Ltv/emby/embyatv/util/RoundedRectHelper$RoundedRectOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RoundedRectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/util/RoundedRectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RoundedRectOutlineProvider"
.end annotation


# instance fields
.field private mRadius:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 18
    iput p1, p0, Ltv/emby/embyatv/util/RoundedRectHelper$RoundedRectOutlineProvider;->mRadius:I

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p1, p0, Ltv/emby/embyatv/util/RoundedRectHelper$RoundedRectOutlineProvider;->mRadius:I

    int-to-float v5, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
