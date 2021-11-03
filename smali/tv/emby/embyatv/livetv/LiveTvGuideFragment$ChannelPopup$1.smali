.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Ltv/emby/embyatv/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

.field final synthetic val$this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 943
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;->val$this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 946
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Selected channel:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    iget-object v2, v2, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mNumberEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    invoke-virtual {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->dismiss()V

    .line 948
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mNumberEntry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 949
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$ChannelPopup;->mNumberEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/livetv/TvManager;->getChannelNdxByNumber(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V

    :cond_0
    return-void
.end method
