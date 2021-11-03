.class public Ltv/emby/embyatv/ui/FilterText;
.super Landroid/widget/FrameLayout;
.source "FilterText.java"


# instance fields
.field private mFilterValue:Ljava/lang/String;

.field private mParentView:Landroid/widget/LinearLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/FilterText;->inflateView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/FilterText;->inflateView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/FilterText;->inflateView(Landroid/content/Context;)V

    .line 27
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iput-object p3, p0, Ltv/emby/embyatv/ui/FilterText;->mFilterValue:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Ltv/emby/embyatv/ui/FilterText;->mParentView:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/FilterText;)Landroid/widget/LinearLayout;
    .locals 0

    .line 18
    iget-object p0, p0, Ltv/emby/embyatv/ui/FilterText;->mParentView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private inflateView(Landroid/content/Context;)V
    .locals 3

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b3

    .line 44
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02e4

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ltv/emby/embyatv/ui/FilterText;->mTextView:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Ltv/emby/embyatv/ui/FilterText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1060012

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a00cd

    .line 48
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/ui/FilterText$1;

    invoke-direct {v0, p0, p0}, Ltv/emby/embyatv/ui/FilterText$1;-><init>(Ltv/emby/embyatv/ui/FilterText;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterText;->mFilterValue:Ljava/lang/String;

    return-object v0
.end method
