.class public Ltv/emby/embyatv/ui/ObservableHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ObservableHorizontalScrollView.java"


# instance fields
.field private scrollViewListener:Ltv/emby/embyatv/ui/HorizontalScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Ltv/emby/embyatv/ui/ObservableHorizontalScrollView;->scrollViewListener:Ltv/emby/embyatv/ui/HorizontalScrollViewListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Ltv/emby/embyatv/ui/ObservableHorizontalScrollView;->scrollViewListener:Ltv/emby/embyatv/ui/HorizontalScrollViewListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Ltv/emby/embyatv/ui/ObservableHorizontalScrollView;->scrollViewListener:Ltv/emby/embyatv/ui/HorizontalScrollViewListener;

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 7

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 32
    iget-object v0, p0, Ltv/emby/embyatv/ui/ObservableHorizontalScrollView;->scrollViewListener:Ltv/emby/embyatv/ui/HorizontalScrollViewListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Ltv/emby/embyatv/ui/ObservableHorizontalScrollView;->scrollViewListener:Ltv/emby/embyatv/ui/HorizontalScrollViewListener;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ltv/emby/embyatv/ui/HorizontalScrollViewListener;->onScrollChanged(Ltv/emby/embyatv/ui/ObservableHorizontalScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public setScrollViewListener(Ltv/emby/embyatv/ui/HorizontalScrollViewListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Ltv/emby/embyatv/ui/ObservableHorizontalScrollView;->scrollViewListener:Ltv/emby/embyatv/ui/HorizontalScrollViewListener;

    return-void
.end method
