.class public Ltv/emby/embyatv/ui/TextButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "TextButton.java"


# instance fields
.field alphaSave:F

.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 45
    iput p1, p0, Ltv/emby/embyatv/ui/TextButton;->alphaSave:F

    .line 46
    new-instance p1, Ltv/emby/embyatv/ui/TextButton$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/ui/TextButton$1;-><init>(Ltv/emby/embyatv/ui/TextButton;)V

    iput-object p1, p0, Ltv/emby/embyatv/ui/TextButton;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 18
    iget-object p1, p0, Ltv/emby/embyatv/ui/TextButton;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/TextButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 6

    const/16 v5, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/ui/TextButton;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View$OnClickListener;I)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 45
    iput v0, p0, Ltv/emby/embyatv/ui/TextButton;->alphaSave:F

    .line 46
    new-instance v1, Ltv/emby/embyatv/ui/TextButton$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/TextButton$1;-><init>(Ltv/emby/embyatv/ui/TextButton;)V

    iput-object v1, p0, Ltv/emby/embyatv/ui/TextButton;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 26
    iget-object v1, p0, Ltv/emby/embyatv/ui/TextButton;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, v1}, Ltv/emby/embyatv/ui/TextButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 27
    invoke-virtual {p0, p4}, Ltv/emby/embyatv/ui/TextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p4, 0x1

    .line 28
    invoke-virtual {p0, p4}, Ltv/emby/embyatv/ui/TextButton;->setFocusable(Z)V

    .line 29
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/TextButton;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    .line 30
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/TextButton;->setTextAlignment(I)V

    const/16 p2, 0x11

    .line 31
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/TextButton;->setGravity(I)V

    .line 32
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/TextButton;->setAlpha(F)V

    const/4 p2, 0x0

    .line 33
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/TextButton;->setBackgroundColor(I)V

    .line 34
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result p2

    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/TextButton;->setTextColor(I)V

    if-nez p3, :cond_0

    const/high16 p1, 0x41800000    # 16.0f

    .line 36
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/TextButton;->setTextSize(F)V

    goto :goto_0

    :cond_0
    int-to-float p2, p3

    .line 38
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/TextButton;->setTextSize(F)V

    .line 39
    invoke-static {p1, p3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    .line 40
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    add-int/2addr p5, p1

    invoke-direct {p2, p1, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/TextButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
