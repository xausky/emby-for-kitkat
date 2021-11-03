.class Ltv/emby/embyatv/ui/InteractiveProgressBar$6;
.super Ljava/lang/Object;
.source "InteractiveProgressBar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 424
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 427
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 443
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$2200(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p1

    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1600(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p1, p2, :cond_0

    return v0

    .line 444
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$2208(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    .line 445
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$2200(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$2300(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)V

    return v0

    .line 434
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$2200(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 435
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$2210(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    .line 436
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$2200(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$2300(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)V

    return v0

    :cond_2
    const/4 p1, 0x4

    if-eq p2, p1, :cond_4

    const/16 p1, 0x13

    if-eq p2, p1, :cond_3

    const/16 p1, 0x61

    if-eq p2, p1, :cond_4

    const/16 p1, 0x6f

    if-eq p2, p1, :cond_4

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    :goto_0
    return p3

    :cond_3
    :pswitch_2
    return v0

    .line 468
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressLostFocus()V

    .line 470
    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$000(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    new-instance p2, Ltv/emby/embyatv/ui/InteractiveProgressBar$6$1;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar$6$1;-><init>(Ltv/emby/embyatv/ui/InteractiveProgressBar$6;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x15
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x57
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x66
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
