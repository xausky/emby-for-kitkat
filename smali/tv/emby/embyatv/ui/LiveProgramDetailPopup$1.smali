.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$1;
.super Lmediabrowser/apiinteraction/Response;
.source "LiveProgramDetailPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V
    .locals 0

    .line 137
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$1;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$1;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPlayButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$1;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    return-void
.end method
