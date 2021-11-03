.class Ltv/emby/embyatv/ui/InteractiveProgressBar$5$1;
.super Ljava/lang/Object;
.source "InteractiveProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/InteractiveProgressBar$5;->onItemClicked(Lmediabrowser/model/dto/ChapterInfoDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/InteractiveProgressBar$5;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/InteractiveProgressBar$5;)V
    .locals 0

    .line 412
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5$1;->this$1:Ltv/emby/embyatv/ui/InteractiveProgressBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 415
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5$1;->this$1:Ltv/emby/embyatv/ui/InteractiveProgressBar$5;

    iget-object v0, v0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$600(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)V

    .line 416
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5$1;->this$1:Ltv/emby/embyatv/ui/InteractiveProgressBar$5;

    iget-object v0, v0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$400(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
