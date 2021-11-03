.class Ltv/emby/embyatv/startup/StartupActivity$1$1$1$1;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->onError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Ltv/emby/embyatv/startup/StartupActivity$1$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/StartupActivity$1$1$1;)V
    .locals 0

    .line 271
    iput-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1$1;->this$3:Ltv/emby/embyatv/startup/StartupActivity$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1$1;->this$3:Ltv/emby/embyatv/startup/StartupActivity$1$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1$1;->this$3:Ltv/emby/embyatv/startup/StartupActivity$1$1$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iget-object v2, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1$1;->this$3:Ltv/emby/embyatv/startup/StartupActivity$1$1$1;

    iget-object v2, v2, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    iget-object v2, v2, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v2, v2, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/startup/StartupActivity;->access$100(Ltv/emby/embyatv/startup/StartupActivity;Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V

    return-void
.end method
