.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterPopup"
.end annotation


# instance fields
.field final HEIGHT:I

.field final WIDTH:I

.field mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field mClearButton:Landroid/widget/Button;

.field mFilterButton:Landroid/widget/Button;

.field mKids:Landroid/widget/CheckBox;

.field mMovies:Landroid/widget/CheckBox;

.field mNews:Landroid/widget/CheckBox;

.field mPopup:Landroid/widget/PopupWindow;

.field mPremiere:Landroid/widget/CheckBox;

.field mSeries:Landroid/widget/CheckBox;

.field mSports:Landroid/widget/CheckBox;

.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 3

    .line 701
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->WIDTH:I

    .line 687
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->HEIGHT:I

    .line 702
    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 703
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d004d

    const/4 v1, 0x0

    .line 704
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 705
    new-instance v0, Landroid/widget/PopupWindow;

    iget v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->WIDTH:I

    iget v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->HEIGHT:I

    invoke-direct {v0, p2, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 706
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 707
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 708
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x7f1100d4

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const v0, 0x7f0a01e2

    .line 710
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mMovies:Landroid/widget/CheckBox;

    const v0, 0x7f0a0292

    .line 711
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mSeries:Landroid/widget/CheckBox;

    const v0, 0x7f0a01ee

    .line 712
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mNews:Landroid/widget/CheckBox;

    const v0, 0x7f0a0193

    .line 713
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mKids:Landroid/widget/CheckBox;

    const v0, 0x7f0a02ac

    .line 714
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mSports:Landroid/widget/CheckBox;

    const v0, 0x7f0a0232

    .line 715
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPremiere:Landroid/widget/CheckBox;

    const v0, 0x7f0a0204

    .line 717
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mFilterButton:Landroid/widget/Button;

    .line 718
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mFilterButton:Landroid/widget/Button;

    new-instance v1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00a1

    .line 732
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mClearButton:Landroid/widget/Button;

    .line 733
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mClearButton:Landroid/widget/Button;

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$2;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$2;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 761
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 745
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

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

    .line 749
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mMovies:Landroid/widget/CheckBox;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/livetv/GuideFilters;->isMovies()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 750
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mSeries:Landroid/widget/CheckBox;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/livetv/GuideFilters;->isSeries()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 751
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mNews:Landroid/widget/CheckBox;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/livetv/GuideFilters;->isNews()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 752
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mKids:Landroid/widget/CheckBox;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/livetv/GuideFilters;->isKids()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 753
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mSports:Landroid/widget/CheckBox;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/livetv/GuideFilters;->isSports()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 754
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPremiere:Landroid/widget/CheckBox;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/livetv/GuideFilters;->isPremiere()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 756
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v3}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
