.class Ltv/emby/embyatv/ui/ProgramGridCell$1;
.super Ljava/lang/Object;
.source "ProgramGridCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/ProgramGridCell;->initComponent(Landroid/app/Activity;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/dto/BaseItemDto;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/ProgramGridCell;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/ProgramGridCell;)V
    .locals 0

    .line 72
    iput-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell$1;->this$0:Ltv/emby/embyatv/ui/ProgramGridCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell$1;->this$0:Ltv/emby/embyatv/ui/ProgramGridCell;

    invoke-static {p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->access$000(Ltv/emby/embyatv/ui/ProgramGridCell;)Ltv/emby/embyatv/livetv/ILiveTvGuide;

    move-result-object p1

    invoke-interface {p1}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->showProgramOptions()V

    return-void
.end method
