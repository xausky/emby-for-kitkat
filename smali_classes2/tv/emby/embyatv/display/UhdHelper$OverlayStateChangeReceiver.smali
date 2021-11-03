.class Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UhdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/display/UhdHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayStateChangeReceiver"
.end annotation


# instance fields
.field private final OVERLAY_FADE_COMPLETE_EXTRA:I

.field final synthetic this$0:Ltv/emby/embyatv/display/UhdHelper;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/display/UhdHelper;)V
    .locals 0

    .line 191
    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x3

    .line 192
    iput p1, p0, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;->OVERLAY_FADE_COMPLETE_EXTRA:I

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/display/UhdHelper;Ltv/emby/embyatv/display/UhdHelper$1;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;-><init>(Ltv/emby/embyatv/display/UhdHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 195
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    const-string v0, "com.amazon.tv.notification.modeswitch_overlay.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/display/UhdHelper;->access$402(Ltv/emby/embyatv/display/UhdHelper;I)I

    .line 196
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p1}, Ltv/emby/embyatv/display/UhdHelper;->access$400(Ltv/emby/embyatv/display/UhdHelper;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p1}, Ltv/emby/embyatv/display/UhdHelper;->access$200(Ltv/emby/embyatv/display/UhdHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 197
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p1}, Ltv/emby/embyatv/display/UhdHelper;->access$800(Ltv/emby/embyatv/display/UhdHelper;)Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->removeMessages(I)V

    .line 198
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p1}, Ltv/emby/embyatv/display/UhdHelper;->access$800(Ltv/emby/embyatv/display/UhdHelper;)Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p2}, Ltv/emby/embyatv/display/UhdHelper;->access$800(Ltv/emby/embyatv/display/UhdHelper;)Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got the Interstitial text fade broadcast, Starting the mode change"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
