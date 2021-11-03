.class public Ltv/emby/embyatv/ui/NumberPad;
.super Landroid/widget/FrameLayout;
.source "NumberPad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mNumberField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Ltv/emby/embyatv/ui/NumberPad;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Ltv/emby/embyatv/ui/NumberPad;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Ltv/emby/embyatv/ui/NumberPad;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/NumberPad;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00aa

    invoke-static {v0, v1, p0}, Ltv/emby/embyatv/ui/NumberPad;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    invoke-direct {p0}, Ltv/emby/embyatv/ui/NumberPad;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0a0201

    .line 40
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/NumberPad;->mNumberField:Landroid/widget/TextView;

    const v0, 0x7f0a02cc

    .line 41
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02cd

    .line 42
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02ce

    .line 43
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02cf

    .line 44
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d0

    .line 45
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d1

    .line 46
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d2

    .line 47
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d3

    .line 48
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d4

    .line 49
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d5

    .line 50
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d7

    .line 51
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d6

    .line 52
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/NumberPad;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected $(I)Landroid/view/View;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 80
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getInputText()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Ltv/emby/embyatv/ui/NumberPad;->mNumberField:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "number_button"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Ltv/emby/embyatv/ui/NumberPad;->mNumberField:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/ui/NumberPad;->mNumberField:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02d6

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/NumberPad;->mNumberField:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 68
    iget-object v0, p0, Ltv/emby/embyatv/ui/NumberPad;->mNumberField:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
