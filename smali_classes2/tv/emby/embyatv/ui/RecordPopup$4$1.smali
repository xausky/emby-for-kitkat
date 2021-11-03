.class Ltv/emby/embyatv/ui/RecordPopup$4$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "RecordPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/RecordPopup$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/RecordPopup$4;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/RecordPopup$4;)V
    .locals 0

    .line 153
    iput-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4$1;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 163
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4$1;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v0, 0x7f10065d

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 156
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4$1;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 157
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4$1;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->ActionComplete:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    .line 158
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4$1;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v1, 0x7f100652

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
