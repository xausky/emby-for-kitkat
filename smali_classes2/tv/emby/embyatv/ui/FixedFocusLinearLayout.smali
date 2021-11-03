.class public Ltv/emby/embyatv/ui/FixedFocusLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FixedFocusLinearLayout.java"


# instance fields
.field private lastFocusedChild:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Ltv/emby/embyatv/ui/FixedFocusLinearLayout;->lastFocusedChild:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Ltv/emby/embyatv/ui/FixedFocusLinearLayout;->lastFocusedChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLastFocusedChild(Landroid/view/View;)V
    .locals 5

    .line 42
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "**** lastFocusedTab set to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Ltv/emby/embyatv/ui/FixedFocusLinearLayout;->lastFocusedChild:Landroid/view/View;

    return-void
.end method
