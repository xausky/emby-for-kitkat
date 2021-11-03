.class Ltv/emby/embyatv/ui/InteractiveProgressBar$5;
.super Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;
.source "InteractiveProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/InteractiveProgressBar;->setChapters(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/InteractiveProgressBar;)V
    .locals 0

    .line 405
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-direct {p0}, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lmediabrowser/model/dto/ChapterInfoDto;)V
    .locals 3

    .line 409
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->positionSelected(I)V

    .line 412
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    new-instance v0, Ltv/emby/embyatv/ui/InteractiveProgressBar$5$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar$5$1;-><init>(Ltv/emby/embyatv/ui/InteractiveProgressBar$5;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
