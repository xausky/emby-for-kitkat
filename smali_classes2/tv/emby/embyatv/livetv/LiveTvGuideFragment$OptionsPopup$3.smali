.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 842
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;->val$this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 845
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "4.4.0.20"

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 857
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    const-string p2, "PlayCount"

    iput-object p2, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCurrentSort:Ljava/lang/String;

    goto :goto_1

    .line 854
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    const-string p2, "SortName"

    iput-object p2, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCurrentSort:Ljava/lang/String;

    goto :goto_1

    .line 851
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    const-string p2, "ChannelNumber,SortName"

    iput-object p2, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCurrentSort:Ljava/lang/String;

    goto :goto_1

    .line 848
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    const-string p2, "DatePlayed"

    iput-object p2, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCurrentSort:Ljava/lang/String;

    goto :goto_1

    .line 861
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$3;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    if-nez p3, :cond_1

    const-string p2, "DatePlayed"

    goto :goto_0

    :cond_1
    const-string p2, "Number"

    :goto_0
    iput-object p2, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mCurrentSort:Ljava/lang/String;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
