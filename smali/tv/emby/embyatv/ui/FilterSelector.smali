.class public Ltv/emby/embyatv/ui/FilterSelector;
.super Landroid/widget/FrameLayout;
.source "FilterSelector.java"


# instance fields
.field private mAddButton:Landroid/widget/Button;

.field private mChangeListener:Lmediabrowser/apiinteraction/EmptyResponse;

.field private mContext:Landroid/content/Context;

.field private mFilterType:Ljava/lang/String;

.field private mOptions:Landroid/widget/Spinner;

.field private mSelectedOptions:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/FilterSelector;->inflateView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/FilterSelector;->inflateView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/NameValuePair;",
            ">;",
            "Lmediabrowser/apiinteraction/EmptyResponse;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mContext:Landroid/content/Context;

    .line 38
    iput-object p4, p0, Ltv/emby/embyatv/ui/FilterSelector;->mChangeListener:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 39
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/FilterSelector;->inflateView(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p2, p3}, Ltv/emby/embyatv/ui/FilterSelector;->init(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/FilterSelector;)Landroid/widget/Spinner;
    .locals 0

    .line 24
    iget-object p0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mOptions:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/FilterSelector;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/FilterSelector;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/ui/FilterSelector;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/ui/FilterSelector;)Landroid/widget/LinearLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/ui/FilterSelector;)Lmediabrowser/apiinteraction/EmptyResponse;
    .locals 0

    .line 24
    iget-object p0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mChangeListener:Lmediabrowser/apiinteraction/EmptyResponse;

    return-object p0
.end method

.method private exists(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 110
    iget-object v2, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/ui/FilterText;

    invoke-virtual {v2}, Ltv/emby/embyatv/ui/FilterText;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private inflateView(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0045

    .line 55
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0307

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0075

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mAddButton:Landroid/widget/Button;

    const v0, 0x7f0a0209

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mOptions:Landroid/widget/Spinner;

    const v0, 0x7f0a028f

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    .line 61
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mAddButton:Landroid/widget/Button;

    new-instance v0, Ltv/emby/embyatv/ui/FilterSelector$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/FilterSelector$1;-><init>(Ltv/emby/embyatv/ui/FilterSelector;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    new-instance v0, Ltv/emby/embyatv/ui/FilterSelector$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/FilterSelector$2;-><init>(Ltv/emby/embyatv/ui/FilterSelector;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private init(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mFilterType:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "genreIds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "years"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "tagIds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "studioIds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "officialRatings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 101
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 98
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f100391

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 95
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 92
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f100333

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 89
    :pswitch_4
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f1000e9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mOptions:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76168ef5 -> :sswitch_4
        -0x7560e2fe -> :sswitch_3
        -0x3486ff42 -> :sswitch_2
        0x6d87fd6 -> :sswitch_1
        0x6c990235 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 125
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public getFilterType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mFilterType:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 4

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 132
    :goto_0
    iget-object v3, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 133
    iget-object v3, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Ltv/emby/embyatv/ui/FilterText;

    invoke-virtual {v3}, Ltv/emby/embyatv/ui/FilterText;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .line 140
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCurrentSelections(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/NameValuePair;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/NameValuePair;

    .line 119
    iget-object v1, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    new-instance v2, Ltv/emby/embyatv/ui/FilterText;

    iget-object v3, p0, Ltv/emby/embyatv/ui/FilterSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lmediabrowser/model/dto/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lmediabrowser/model/dto/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Ltv/emby/embyatv/ui/FilterSelector;->mSelectedOptions:Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, v4, v0, v5}, Ltv/emby/embyatv/ui/FilterText;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method
