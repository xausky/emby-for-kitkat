.class Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask$1;
.super Ljava/lang/Object;
.source "TabBrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;)V
    .locals 0

    .line 609
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 612
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/TabBrowseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->updateBackground(Ljava/lang/String;)V

    return-void
.end method
