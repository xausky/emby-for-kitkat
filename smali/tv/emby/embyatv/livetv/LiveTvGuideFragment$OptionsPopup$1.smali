.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ltv/emby/embyatv/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

.field final synthetic val$this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 812
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->val$this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 815
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object p1

    .line 816
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mHd:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->showHDIndicator:Z

    .line 817
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPremiere:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->showPremiereIndicator:Z

    .line 818
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mNew:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->showNewIndicator:Z

    .line 819
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mFavTop:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->favsAtTop:Z

    .line 820
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mColorCode:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->colorCodeGuide:Z

    .line 821
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mRepeat:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->showRepeatIndicator:Z

    .line 822
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCurrentSort:Ljava/lang/String;

    iput-object v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    .line 823
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mRating:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->showRatingIndicator:Z

    .line 824
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCompact:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->compactLayout:Z

    .line 826
    invoke-static {p1}, Ltv/emby/embyatv/livetv/TvManager;->updatePrefs(Ltv/emby/embyatv/model/LiveTvPrefs;)V

    .line 828
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    .line 829
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
