.class Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;
.super Ljava/util/TimerTask;
.source "StdGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateBackgroundTask"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;Ltv/emby/embyatv/browsing/StdGridFragment$1;)V
    .locals 0

    .line 1023
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1027
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask$1;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
