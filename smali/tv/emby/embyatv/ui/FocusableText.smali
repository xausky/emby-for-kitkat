.class public Ltv/emby/embyatv/ui/FocusableText;
.super Landroid/widget/TextView;
.source "FocusableText.java"


# instance fields
.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Ltv/emby/embyatv/ui/FocusableText$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/ui/FocusableText$1;-><init>(Ltv/emby/embyatv/ui/FocusableText;)V

    iput-object p1, p0, Ltv/emby/embyatv/ui/FocusableText;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 21
    invoke-direct {p0}, Ltv/emby/embyatv/ui/FocusableText;->Init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Ltv/emby/embyatv/ui/FocusableText$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/ui/FocusableText$1;-><init>(Ltv/emby/embyatv/ui/FocusableText;)V

    iput-object p1, p0, Ltv/emby/embyatv/ui/FocusableText;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 26
    invoke-direct {p0}, Ltv/emby/embyatv/ui/FocusableText;->Init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Ltv/emby/embyatv/ui/FocusableText$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/ui/FocusableText$1;-><init>(Ltv/emby/embyatv/ui/FocusableText;)V

    iput-object p1, p0, Ltv/emby/embyatv/ui/FocusableText;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 31
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/FocusableText;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-direct {p0}, Ltv/emby/embyatv/ui/FocusableText;->Init()V

    return-void
.end method

.method private Init()V
    .locals 3

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/FocusableText;->setFocusable(Z)V

    .line 37
    iget-object v0, p0, Ltv/emby/embyatv/ui/FocusableText;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/FocusableText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v0, 0x11

    .line 38
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/FocusableText;->setGravity(I)V

    .line 39
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/FocusableText;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41900000    # 18.0f

    .line 40
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/FocusableText;->setTextSize(F)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1, v0, v1}, Ltv/emby/embyatv/ui/FocusableText;->setPadding(IIII)V

    .line 42
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x14

    .line 43
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/FocusableText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
