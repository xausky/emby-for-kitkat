.class public final Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;
.super Landroidx/leanback/widget/ParallaxTarget;
.source "ParallaxTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/ParallaxTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyValuesHolderTarget"
.end annotation


# static fields
.field private static final PSEUDO_DURATION:J = 0xf4240L


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mFraction:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Landroidx/leanback/widget/ParallaxTarget;-><init>()V

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 84
    iget-object p1, p0, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    iget-object p1, p0, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/32 v0, 0xf4240

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 3

    .line 90
    iput p1, p0, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mFraction:F

    .line 91
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mAnimator:Landroid/animation/ObjectAnimator;

    const v1, 0x49742400    # 1000000.0f

    mul-float p1, p1, v1

    float-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void
.end method
