.class public Ltv/emby/embyatv/ui/ImageButton;
.super Landroid/widget/ImageView;
.source "ImageButton.java"


# static fields
.field public static STATE_PRIMARY:I = 0x0

.field public static STATE_SECONDARY:I = 0x1


# instance fields
.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mGotFocusListener:Ltv/emby/embyatv/model/GotFocusEvent;

.field private mHelpText:Ljava/lang/String;

.field private mHelpView:Landroid/widget/TextView;

.field private mPrimaryImage:I

.field private mSecondaryImage:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V
    .locals 7

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 36
    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 8

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 39
    invoke-direct/range {v0 .. v7}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/widget/TextView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 42
    invoke-direct/range {v0 .. v7}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/widget/TextView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Landroid/widget/TextView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f110206

    .line 46
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 22
    iput-object p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mHelpText:Ljava/lang/String;

    .line 76
    new-instance p1, Ltv/emby/embyatv/ui/ImageButton$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/ui/ImageButton$1;-><init>(Ltv/emby/embyatv/ui/ImageButton;)V

    iput-object p1, p0, Ltv/emby/embyatv/ui/ImageButton;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 47
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/ImageButton;->setImageResource(I)V

    .line 48
    invoke-virtual {p0, p3}, Ltv/emby/embyatv/ui/ImageButton;->setMaxHeight(I)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ImageButton;->setAdjustViewBounds(Z)V

    const p2, 0x3f4ccccd    # 0.8f

    .line 50
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/ImageButton;->setAlpha(F)V

    .line 51
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getIconTintColor()I

    move-result p2

    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/ImageButton;->setColorFilter(I)V

    .line 52
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ImageButton;->setFocusable(Z)V

    .line 54
    invoke-virtual {p0, p6}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object p5, p0, Ltv/emby/embyatv/ui/ImageButton;->mHelpView:Landroid/widget/TextView;

    .line 56
    iput-object p4, p0, Ltv/emby/embyatv/ui/ImageButton;->mHelpText:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Ltv/emby/embyatv/ui/ImageButton;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 58
    invoke-virtual {p0, p7}, Ltv/emby/embyatv/ui/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 22
    iput-object p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mHelpText:Ljava/lang/String;

    .line 76
    new-instance p1, Ltv/emby/embyatv/ui/ImageButton$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/ui/ImageButton$1;-><init>(Ltv/emby/embyatv/ui/ImageButton;)V

    iput-object p1, p0, Ltv/emby/embyatv/ui/ImageButton;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 31
    iget-object p1, p0, Ltv/emby/embyatv/ui/ImageButton;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 32
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getIconTintColor()I

    move-result p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ImageButton;->setColorFilter(I)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/ImageButton;)Landroid/widget/TextView;
    .locals 0

    .line 16
    iget-object p0, p0, Ltv/emby/embyatv/ui/ImageButton;->mHelpView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/ImageButton;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Ltv/emby/embyatv/ui/ImageButton;->mHelpText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/ui/ImageButton;)Ltv/emby/embyatv/model/GotFocusEvent;
    .locals 0

    .line 16
    iget-object p0, p0, Ltv/emby/embyatv/ui/ImageButton;->mGotFocusListener:Ltv/emby/embyatv/model/GotFocusEvent;

    return-object p0
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 103
    :goto_0
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/ImageButton;->setAlpha(F)V

    .line 104
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ImageButton;->setFocusable(Z)V

    .line 105
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ImageButton;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setGotFocusListener(Ltv/emby/embyatv/model/GotFocusEvent;)V
    .locals 0

    .line 90
    iput-object p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mGotFocusListener:Ltv/emby/embyatv/model/GotFocusEvent;

    return-void
.end method

.method public setHelpText(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mHelpText:Ljava/lang/String;

    return-void
.end method

.method public setHelpView(Landroid/widget/TextView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mHelpView:Landroid/widget/TextView;

    return-void
.end method

.method public setPrimaryImage(I)V
    .locals 0

    .line 93
    iput p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mPrimaryImage:I

    return-void
.end method

.method public setSecondaryImage(I)V
    .locals 0

    .line 97
    iput p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mSecondaryImage:I

    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 68
    iput p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mState:I

    .line 69
    iget p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mSecondaryImage:I

    if-lez p1, :cond_1

    iget p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mState:I

    sget v0, Ltv/emby/embyatv/ui/ImageButton;->STATE_SECONDARY:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mSecondaryImage:I

    goto :goto_0

    :cond_0
    iget p1, p0, Ltv/emby/embyatv/ui/ImageButton;->mPrimaryImage:I

    :goto_0
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ImageButton;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public toggleState()V
    .locals 2

    .line 73
    iget v0, p0, Ltv/emby/embyatv/ui/ImageButton;->mState:I

    sget v1, Ltv/emby/embyatv/ui/ImageButton;->STATE_PRIMARY:I

    if-ne v0, v1, :cond_0

    sget v0, Ltv/emby/embyatv/ui/ImageButton;->STATE_SECONDARY:I

    goto :goto_0

    :cond_0
    sget v0, Ltv/emby/embyatv/ui/ImageButton;->STATE_PRIMARY:I

    :goto_0
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/ImageButton;->setState(I)V

    return-void
.end method
