.class abstract Landroidx/leanback/transition/SlideKitkat$CalculateSlideHorizontal;
.super Ljava/lang/Object;
.source "SlideKitkat.java"

# interfaces
.implements Landroidx/leanback/transition/SlideKitkat$CalculateSlide;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/transition/SlideKitkat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CalculateSlideHorizontal"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHere(Landroid/view/View;)F
    .locals 0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    return p1
.end method

.method public getProperty()Landroid/util/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    return-object v0
.end method
