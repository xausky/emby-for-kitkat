.class public Ltv/emby/embyatv/ui/DetailRowView;
.super Landroid/widget/FrameLayout;
.source "DetailRowView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/DetailRowView;->inflateView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/DetailRowView;->inflateView(Landroid/content/Context;)V

    return-void
.end method

.method private inflateView(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0097

    .line 26
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method
