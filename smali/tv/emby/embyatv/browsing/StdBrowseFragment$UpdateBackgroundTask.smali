.class Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;
.super Ljava/util/TimerTask;
.source "StdBrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateBackgroundTask"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 484
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;Ltv/emby/embyatv/browsing/StdBrowseFragment$1;)V
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 488
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask$1;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
