.class public Landroidx/leanback/widget/DividerPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "DividerPresenter.java"


# instance fields
.field private final mLayoutResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget v0, Landroidx/leanback/R$layout;->lb_divider:I

    invoke-direct {p0, v0}, Landroidx/leanback/widget/DividerPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    .line 41
    iput p1, p0, Landroidx/leanback/widget/DividerPresenter;->mLayoutResourceId:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 3

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/DividerPresenter;->mLayoutResourceId:I

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance v0, Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method
