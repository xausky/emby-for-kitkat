.class public abstract Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "MyAbstractDetailsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method

.method private setTopMargin(Landroid/widget/TextView;I)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 179
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 180
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected abstract onBindDescription(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method public final onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 6

    .line 118
    check-cast p1, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;

    .line 119
    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;->onBindDescription(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 122
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 123
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p2, 0x0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I

    move-result v3

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 128
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v4

    .line 127
    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 p2, 0x1

    .line 130
    :goto_0
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$500(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    .line 133
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    goto :goto_1

    .line 137
    :cond_1
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 139
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$700(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I

    move-result v4

    .line 140
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$800(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v5

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$900(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v5

    .line 139
    invoke-direct {p0, v3, v4}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 142
    :cond_2
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    .line 146
    :goto_1
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 149
    :cond_3
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$1000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I

    move-result v3

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 151
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v4

    .line 150
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    if-eqz v0, :cond_4

    .line 154
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$1100(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I

    move-result v0

    .line 155
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$1200(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, v1

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$800(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, p1

    .line 154
    invoke-direct {p0, p2, v0}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 157
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$700(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I

    move-result v0

    .line 158
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$1200(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, v1

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$900(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, p1

    .line 157
    invoke-direct {p0, p2, v0}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 160
    :cond_5
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;
    .locals 3

    .line 111
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0060

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 113
    new-instance v0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method
