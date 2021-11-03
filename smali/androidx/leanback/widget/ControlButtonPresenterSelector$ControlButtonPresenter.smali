.class Landroidx/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "ControlButtonPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/ControlButtonPresenterSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ControlButtonPresenter"
.end annotation


# instance fields
.field private mLayoutResourceId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    .line 83
    iput p1, p0, Landroidx/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;->mLayoutResourceId:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 95
    check-cast p2, Landroidx/leanback/widget/Action;

    .line 96
    check-cast p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;

    .line 97
    iget-object v0, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object p2

    .line 107
    :goto_1
    iget-object v0, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    iget-object v0, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    const p2, 0x8000

    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 3

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;->mLayoutResourceId:I

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    new-instance v0, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 2

    .line 116
    check-cast p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;

    .line 117
    iget-object v0, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnClickListener(Landroidx/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 127
    check-cast p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
