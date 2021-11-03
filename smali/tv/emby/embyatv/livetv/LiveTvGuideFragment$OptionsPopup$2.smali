.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$2;
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

    .line 833
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$2;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$2;->val$this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 836
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup$2;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
