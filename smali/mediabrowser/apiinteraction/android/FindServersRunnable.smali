.class public Lmediabrowser/apiinteraction/android/FindServersRunnable;
.super Ljava/lang/Object;
.source "FindServersRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/android/AndroidConnectionManager;

.field private response:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/android/AndroidConnectionManager;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/android/AndroidConnectionManager;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/FindServersRunnable;->connectionManager:Lmediabrowser/apiinteraction/android/AndroidConnectionManager;

    .line 15
    iput-object p2, p0, Lmediabrowser/apiinteraction/android/FindServersRunnable;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 20
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/FindServersRunnable;->connectionManager:Lmediabrowser/apiinteraction/android/AndroidConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/android/FindServersRunnable;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->FindServersAndroid(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
