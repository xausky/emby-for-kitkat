.class Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$2;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->DeleteServer(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$response:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/IResponse;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$2;->this$0:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$2;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$2;->val$response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 822
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$2;->this$0:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$2;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$2;->val$response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-static {v0, v1, v2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->access$000(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
