.class Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;
.super Ljava/util/TimerTask;
.source "CustomBrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/CustomBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateBackgroundTask"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;Ltv/emby/embyatv/browsing/CustomBrowseFragment$1;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;-><init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 258
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->access$500(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask$1;-><init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
