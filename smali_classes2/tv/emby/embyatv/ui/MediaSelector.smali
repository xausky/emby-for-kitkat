.class public Ltv/emby/embyatv/ui/MediaSelector;
.super Landroid/widget/LinearLayout;
.source "MediaSelector.java"


# instance fields
.field private mChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    .line 41
    iput-object p5, p0, Ltv/emby/embyatv/ui/MediaSelector;->mChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/MediaSelector;->setOrientation(I)V

    .line 45
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    const/16 v1, 0xb9

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    const/16 v2, 0x2d

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 47
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/MediaSelector;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xe

    .line 48
    invoke-direct {p0, p2, p1}, Ltv/emby/embyatv/ui/MediaSelector;->getStandardTextView(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/MediaSelector;->addView(Landroid/view/View;)V

    const p1, 0x3f266666    # 0.65f

    if-eqz p3, :cond_1

    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p2, Landroid/widget/Spinner;

    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0095

    invoke-direct {v0, v1, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 57
    invoke-virtual {p2, p4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 58
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p4, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    const/16 v0, 0xd7

    invoke-static {p4, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p4

    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p3, p4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p3, 0x7f080095

    .line 59
    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 60
    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAlpha(F)V

    .line 61
    new-instance p1, Ltv/emby/embyatv/ui/MediaSelector$1;

    invoke-direct {p1, p0, p5}, Ltv/emby/embyatv/ui/MediaSelector$1;-><init>(Ltv/emby/embyatv/ui/MediaSelector;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 72
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/MediaSelector;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 51
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    const p3, 0x7f10052a

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-direct {p0, p2, v1}, Ltv/emby/embyatv/ui/MediaSelector;->getStandardTextView(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 53
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/MediaSelector;->addView(Landroid/view/View;)V

    :goto_3
    return-void
.end method

.method private getStandardTextView(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 3

    .line 77
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p2, p2

    .line 79
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x1

    .line 80
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p2, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    const/16 v1, 0xaf

    invoke-static {p2, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p2

    iget-object v1, p0, Ltv/emby/embyatv/ui/MediaSelector;->mContext:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
