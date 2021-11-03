.class Landroidx/leanback/app/DetailsBackgroundVideoHelper$3;
.super Ljava/lang/Object;
.source "DetailsBackgroundVideoHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method constructor <init>(Landroidx/leanback/app/DetailsBackgroundVideoHelper;)V
    .locals 0

    .line 209
    iput-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper$3;->this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 212
    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper$3;->this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    iget-object v0, v0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 212
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
