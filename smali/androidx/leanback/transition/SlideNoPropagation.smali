.class public Landroidx/leanback/transition/SlideNoPropagation;
.super Landroid/transition/Slide;
.source "SlideNoPropagation.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/transition/Slide;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/transition/Slide;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setSlideEdge(I)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/transition/Slide;->setSlideEdge(I)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroidx/leanback/transition/SlideNoPropagation;->setPropagation(Landroid/transition/TransitionPropagation;)V

    return-void
.end method
