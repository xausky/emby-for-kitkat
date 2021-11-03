.class public Ltv/emby/embyatv/ui/TextUnderButton;
.super Landroid/widget/RelativeLayout;
.source "TextUnderButton.java"


# static fields
.field public static STATE_PRIMARY:I = 0x0

.field public static STATE_SECONDARY:I = 0x1


# instance fields
.field protected focusChange:Landroid/view/View$OnFocusChangeListener;

.field private mButton:Landroid/widget/ImageButton;

.field private mGotFocusListener:Ltv/emby/embyatv/model/GotFocusEvent;

.field private mLabel:Landroid/widget/TextView;

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

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 30
    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ltv/emby/embyatv/ui/TextUnderButton$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/TextUnderButton$1;-><init>(Ltv/emby/embyatv/ui/TextUnderButton;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->focusChange:Landroid/view/View$OnFocusChangeListener;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00c3

    .line 41
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/TextUnderButton;->addView(Landroid/view/View;)V

    const v2, 0x7f0a0194

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mLabel:Landroid/widget/TextView;

    if-nez p5, :cond_0

    .line 46
    iget-object p5, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mLabel:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v2, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p5, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mLabel:Landroid/widget/TextView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    const p5, 0x7f0a0167

    .line 53
    invoke-virtual {v0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageButton;

    iput-object p5, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    .line 55
    iget-object p5, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p5, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 56
    iget-object p2, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setMaxHeight(I)V

    .line 57
    iget-object p2, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p2, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Ltv/emby/embyatv/ui/TextUnderButton;->focusChange:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz p4, :cond_1

    .line 60
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    .line 61
    iget-object p2, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1, p1, p1, p1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 34
    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/TextUnderButton;)Ltv/emby/embyatv/model/GotFocusEvent;
    .locals 0

    .line 16
    iget-object p0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mGotFocusListener:Ltv/emby/embyatv/model/GotFocusEvent;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/TextUnderButton;)Landroid/widget/TextView;
    .locals 0

    .line 16
    iget-object p0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/TextUnderButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 102
    iget-object v0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setGotFocusListener(Ltv/emby/embyatv/model/GotFocusEvent;)V
    .locals 0

    .line 85
    iput-object p1, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mGotFocusListener:Ltv/emby/embyatv/model/GotFocusEvent;

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public setPrimaryImage(I)V
    .locals 0

    .line 92
    iput p1, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mPrimaryImage:I

    return-void
.end method

.method public setSecondaryImage(I)V
    .locals 0

    .line 96
    iput p1, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mSecondaryImage:I

    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 69
    iput p1, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mState:I

    .line 70
    iget p1, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mSecondaryImage:I

    if-lez p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mButton:Landroid/widget/ImageButton;

    iget v0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mState:I

    sget v1, Ltv/emby/embyatv/ui/TextUnderButton;->STATE_SECONDARY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mSecondaryImage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mPrimaryImage:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggleState()V
    .locals 2

    .line 74
    iget v0, p0, Ltv/emby/embyatv/ui/TextUnderButton;->mState:I

    sget v1, Ltv/emby/embyatv/ui/TextUnderButton;->STATE_PRIMARY:I

    if-ne v0, v1, :cond_0

    sget v0, Ltv/emby/embyatv/ui/TextUnderButton;->STATE_SECONDARY:I

    goto :goto_0

    :cond_0
    sget v0, Ltv/emby/embyatv/ui/TextUnderButton;->STATE_PRIMARY:I

    :goto_0
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/TextUnderButton;->setState(I)V

    return-void
.end method
