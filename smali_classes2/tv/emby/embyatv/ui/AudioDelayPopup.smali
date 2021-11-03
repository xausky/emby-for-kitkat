.class public Ltv/emby/embyatv/ui/AudioDelayPopup;
.super Ljava/lang/Object;
.source "AudioDelayPopup.java"


# instance fields
.field final HEIGHT:I

.field final WIDTH:I

.field mActivity:Landroid/app/Activity;

.field mAnchor:Landroid/view/View;

.field mDelaySpinner:Ltv/emby/embyatv/ui/NumberSpinner;

.field mPopup:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ltv/emby/embyatv/ui/ValueChangedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ltv/emby/embyatv/ui/ValueChangedListener<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->WIDTH:I

    .line 27
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x82

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->HEIGHT:I

    .line 35
    iput-object p1, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mActivity:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0032

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance v0, Landroid/widget/PopupWindow;

    iget v1, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->WIDTH:I

    iget v2, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->HEIGHT:I

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 39
    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 40
    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 41
    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iput-object p2, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mAnchor:Landroid/view/View;

    const p2, 0x7f0a0200

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/NumberSpinner;

    iput-object p1, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mDelaySpinner:Ltv/emby/embyatv/ui/NumberSpinner;

    .line 46
    iget-object p1, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mDelaySpinner:Ltv/emby/embyatv/ui/NumberSpinner;

    invoke-virtual {p1, p3}, Ltv/emby/embyatv/ui/NumberSpinner;->setOnChangeListener(Ltv/emby/embyatv/ui/ValueChangedListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 62
    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 51
    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show(J)V
    .locals 3

    .line 56
    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mDelaySpinner:Ltv/emby/embyatv/ui/NumberSpinner;

    invoke-virtual {v0, p1, p2}, Ltv/emby/embyatv/ui/NumberSpinner;->setValue(J)V

    .line 57
    iget-object p1, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object p2, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mAnchor:Landroid/view/View;

    iget-object v0, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    iget-object v1, p0, Ltv/emby/embyatv/ui/AudioDelayPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
