.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$8;
.super Ljava/lang/Object;
.source "LiveProgramDetailPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->createTuneButton()Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V
    .locals 0

    .line 391
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$8;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 394
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$8;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mTuneAction:Lmediabrowser/apiinteraction/EmptyResponse;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$8;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mTuneAction:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    .line 395
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$8;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
