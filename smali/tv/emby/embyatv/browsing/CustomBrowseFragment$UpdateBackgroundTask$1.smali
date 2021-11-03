.class Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask$1;
.super Ljava/lang/Object;
.source "CustomBrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;)V
    .locals 0

    .line 258
    iput-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 261
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->access$200(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->updateBackground(Ljava/lang/String;)V

    return-void
.end method
