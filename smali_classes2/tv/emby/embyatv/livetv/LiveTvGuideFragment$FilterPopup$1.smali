.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ltv/emby/embyatv/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

.field final synthetic val$this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 718
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->val$this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 721
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mMovies:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setMovies(Z)V

    .line 722
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mSeries:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setSeries(Z)V

    .line 723
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mNews:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setNews(Z)V

    .line 724
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mKids:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setKids(Z)V

    .line 725
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mSports:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setSports(Z)V

    .line 726
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPremiere:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setPremiere(Z)V

    .line 728
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    .line 729
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
