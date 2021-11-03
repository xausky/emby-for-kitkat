.class public Ltv/emby/embyatv/ui/NumberSpinner;
.super Landroid/widget/FrameLayout;
.source "NumberSpinner.java"


# instance fields
.field mIncrement:J

.field mTextValue:Landroid/widget/TextView;

.field mValue:J

.field mValueChangedListener:Ltv/emby/embyatv/ui/ValueChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/emby/embyatv/ui/ValueChangedListener<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValue:J

    const-wide/16 v0, 0x64

    .line 14
    iput-wide v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mIncrement:J

    .line 27
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/NumberSpinner;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValue:J

    const-wide/16 v0, 0x64

    .line 14
    iput-wide v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mIncrement:J

    .line 32
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/NumberSpinner;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/emby/embyatv/ui/ValueChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltv/emby/embyatv/ui/ValueChangedListener<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValue:J

    const-wide/16 v0, 0x64

    .line 14
    iput-wide v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mIncrement:J

    .line 21
    iput-object p2, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValueChangedListener:Ltv/emby/embyatv/ui/ValueChangedListener;

    .line 22
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/NumberSpinner;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00ab

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/NumberSpinner;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/NumberSpinner;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a0317

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mTextValue:Landroid/widget/TextView;

    const v0, 0x7f0a0079

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/NumberSpinner$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/NumberSpinner$1;-><init>(Ltv/emby/embyatv/ui/NumberSpinner;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0077

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/ui/NumberSpinner$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/NumberSpinner$2;-><init>(Ltv/emby/embyatv/ui/NumberSpinner;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 69
    iget-wide v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValue:J

    return-wide v0
.end method

.method public setIncrement(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mIncrement:J

    return-void
.end method

.method public setOnChangeListener(Ltv/emby/embyatv/ui/ValueChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/embyatv/ui/ValueChangedListener<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValueChangedListener:Ltv/emby/embyatv/ui/ValueChangedListener;

    return-void
.end method

.method public setValue(J)V
    .locals 3

    .line 61
    iput-wide p1, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValue:J

    .line 62
    iget-object v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mTextValue:Landroid/widget/TextView;

    iget-wide v1, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValueChangedListener:Ltv/emby/embyatv/ui/ValueChangedListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Ltv/emby/embyatv/ui/NumberSpinner;->mValueChangedListener:Ltv/emby/embyatv/ui/ValueChangedListener;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/ValueChangedListener;->onValueChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
