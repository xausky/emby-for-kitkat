.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelPopup"
.end annotation


# instance fields
.field final HEIGHT:I

.field final WIDTH:I

.field mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field mNumberEntry:Landroid/widget/TextView;

.field mOkButton:Landroid/widget/Button;

.field mPopup:Landroid/widget/PopupWindow;

.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 3

    .line 931
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x118

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->WIDTH:I

    .line 923
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x1cc

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->HEIGHT:I

    .line 932
    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 933
    new-instance p2, Ltv/emby/embyatv/ui/NumberPad;

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p2, v0}, Ltv/emby/embyatv/ui/NumberPad;-><init>(Landroid/content/Context;)V

    .line 934
    new-instance v0, Landroid/widget/PopupWindow;

    iget v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->WIDTH:I

    iget v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->HEIGHT:I

    invoke-direct {v0, p2, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 935
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 936
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 937
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 938
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x7f1100d4

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const v0, 0x7f0a0201

    .line 940
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mNumberEntry:Landroid/widget/TextView;

    const v0, 0x7f0a0204

    .line 942
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mOkButton:Landroid/widget/Button;

    .line 943
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mOkButton:Landroid/widget/Button;

    new-instance v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 967
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 957
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

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

    .line 961
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mNumberEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v3}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
