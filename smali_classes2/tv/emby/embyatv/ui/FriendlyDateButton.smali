.class public Ltv/emby/embyatv/ui/FriendlyDateButton;
.super Landroid/widget/FrameLayout;
.source "FriendlyDateButton.java"


# instance fields
.field private dateVal:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/view/View$OnClickListener;)V
    .locals 3

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004c

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/FriendlyDateButton;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/ui/FriendlyDateButton;->setFocusable(Z)V

    .line 30
    invoke-virtual {p0, p4}, Ltv/emby/embyatv/ui/FriendlyDateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iput-wide p2, p0, Ltv/emby/embyatv/ui/FriendlyDateButton;->dateVal:J

    .line 33
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, p2, p3}, Ljava/util/Date;-><init>(J)V

    const p2, 0x7f0a0130

    .line 35
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p4, v1, v1}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;ZZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a00c4

    .line 36
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 40
    iget-wide v0, p0, Ltv/emby/embyatv/ui/FriendlyDateButton;->dateVal:J

    return-wide v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/FriendlyDateButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060076

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/FriendlyDateButton;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/FriendlyDateButton;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
