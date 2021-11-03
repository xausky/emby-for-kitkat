.class public Ltv/emby/embyatv/ui/AnnouncePopup;
.super Ljava/lang/Object;
.source "AnnouncePopup.java"


# instance fields
.field final HEIGHT:I

.field final WIDTH:I

.field mActivity:Landroid/app/Activity;

.field mAnchor:Landroid/view/View;

.field mPopup:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->WIDTH:I

    .line 22
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x82

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->HEIGHT:I

    .line 29
    iput-object p1, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mActivity:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0098

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x320

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    .line 33
    iget-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 34
    iget-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 35
    iget-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iput-object p2, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mAnchor:Landroid/view/View;

    const p2, 0x7f0a0204

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ltv/emby/embyatv/ui/AnnouncePopup$1;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/ui/AnnouncePopup$1;-><init>(Ltv/emby/embyatv/ui/AnnouncePopup;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 57
    iget-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 49
    iget-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

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

.method public show()V
    .locals 5

    .line 53
    iget-object v0, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Ltv/emby/embyatv/ui/AnnouncePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
