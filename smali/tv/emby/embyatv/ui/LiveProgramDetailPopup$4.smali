.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$4;
.super Ljava/lang/Object;
.source "LiveProgramDetailPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V
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

    .line 253
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$4;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 256
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$4;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->showRecordingOptions(Z)V

    return-void
.end method
