.class Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;
.super Ljava/util/TimerTask;
.source "TabBrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/TabBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateBackgroundTask"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V
    .locals 0

    .line 605
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;Ltv/emby/embyatv/browsing/TabBrowseFragment$1;)V
    .locals 0

    .line 605
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 609
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$200(Ltv/emby/embyatv/browsing/TabBrowseFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask$1;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
