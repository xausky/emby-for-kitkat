.class Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask$1;
.super Ljava/lang/Object;
.source "StdBrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;)V
    .locals 0

    .line 488
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 491
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$900(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->updateBackground(Ljava/lang/String;)V

    return-void
.end method
