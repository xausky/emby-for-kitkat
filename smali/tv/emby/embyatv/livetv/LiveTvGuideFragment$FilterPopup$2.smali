.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$2;
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

    .line 733
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$2;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$2;->val$this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 736
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$2;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideFilters;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/livetv/GuideFilters;->clear()V

    .line 737
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$2;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    .line 738
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup$2;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
