.class public Ltv/emby/embyatv/ui/GenreButton;
.super Landroid/widget/TextView;
.source "GenreButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Typeface;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/ui/GenreButton;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p1, p3

    .line 16
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/GenreButton;->setTextSize(F)V

    .line 17
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/GenreButton;->setTextColor(I)V

    .line 18
    invoke-virtual {p0, p4}, Ltv/emby/embyatv/ui/GenreButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
