.class public Ltv/emby/embyatv/ui/ExpandableTextView;
.super Landroid/widget/TextView;
.source "ExpandableTextView.java"


# instance fields
.field private isElipsized:Z

.field private textChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Ltv/emby/embyatv/ui/ExpandableTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Ltv/emby/embyatv/ui/ExpandableTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 39
    new-instance v0, Ltv/emby/embyatv/ui/ExpandableTextView$1;

    invoke-direct {v0, p0, p0}, Ltv/emby/embyatv/ui/ExpandableTextView$1;-><init>(Ltv/emby/embyatv/ui/ExpandableTextView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/ExpandableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isElipsized()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Ltv/emby/embyatv/ui/ExpandableTextView;->isElipsized:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-boolean p1, p0, Ltv/emby/embyatv/ui/ExpandableTextView;->textChanged:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/ExpandableTextView;->textChanged:Z

    .line 65
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/ExpandableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 68
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/ExpandableTextView;->isElipsized:Z

    .line 69
    iget-boolean p1, p0, Ltv/emby/embyatv/ui/ExpandableTextView;->isElipsized:Z

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ExpandableTextView;->setFocusable(Z)V

    goto :goto_0

    .line 71
    :cond_1
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/ExpandableTextView;->isElipsized:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    const p1, 0x7f0801aa

    .line 81
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ExpandableTextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ExpandableTextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/ExpandableTextView;->textChanged:Z

    return-void
.end method
