.class Ltv/emby/embyatv/util/Utils$24$2$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils$24$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/util/Utils$24$2;

.field final synthetic val$info:Lmediabrowser/model/apiclient/WakeOnLanInfo;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/Utils$24$2;Lmediabrowser/model/apiclient/WakeOnLanInfo;)V
    .locals 0

    .line 1774
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$24$2$1;->this$1:Ltv/emby/embyatv/util/Utils$24$2;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$24$2$1;->val$info:Lmediabrowser/model/apiclient/WakeOnLanInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1777
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$24$2$1;->this$1:Ltv/emby/embyatv/util/Utils$24$2;

    iget-object v0, v0, Ltv/emby/embyatv/util/Utils$24$2;->this$0:Ltv/emby/embyatv/util/Utils$24;

    iget-object v0, v0, Ltv/emby/embyatv/util/Utils$24;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$24$2$1;->val$info:Lmediabrowser/model/apiclient/WakeOnLanInfo;

    new-instance v2, Ltv/emby/embyatv/util/Utils$24$2$1$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/util/Utils$24$2$1$1;-><init>(Ltv/emby/embyatv/util/Utils$24$2$1;)V

    invoke-interface {v0, v1, v2}, Lmediabrowser/apiinteraction/IConnectionManager;->WakeServer(Lmediabrowser/model/apiclient/WakeOnLanInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
