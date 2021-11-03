.class public Landroidx/leanback/widget/BrowseFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BrowseFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;,
        Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;
    }
.end annotation


# instance fields
.field private mListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field private mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

.field private mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, v0, v1}, Landroidx/leanback/widget/BrowseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/BrowseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 137
    iget-object v1, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Landroidx/leanback/widget/BrowseFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    invoke-interface {v0, p1, p2}, Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;->onFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getOnChildFocusListener()Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    return-object v0
.end method

.method public getOnFocusSearchListener()Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    return-object v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-interface {v0, p1, p2}, Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-interface {v0, p1, p2}, Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;->onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setOnChildFocusListener(Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    return-void
.end method

.method public setOnDispatchKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setOnFocusSearchListener(Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    return-void
.end method
