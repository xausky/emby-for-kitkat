.class Ltv/emby/embyatv/ui/InteractiveProgressBar$1;
.super Ljava/lang/Object;
.source "InteractiveProgressBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/InteractiveProgressBar;->init(Landroid/content/Context;)V
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

    .line 107
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 110
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Got focus: %s chapter mode: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$000(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 112
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$000(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$100(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$200(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)V

    .line 116
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v4}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$302(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)Z

    .line 117
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$400(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$500(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v4}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$600(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v3}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$600(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)V

    .line 122
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressGotFocus()V

    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$000(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 127
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$400(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$800(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressLostFocus()V

    .line 130
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v3}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$302(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)Z

    .line 131
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, v3}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$502(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)Z

    :cond_4
    :goto_0
    return-void
.end method
