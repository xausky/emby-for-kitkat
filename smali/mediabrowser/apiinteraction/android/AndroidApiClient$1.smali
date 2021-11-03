.class Lmediabrowser/apiinteraction/android/AndroidApiClient$1;
.super Ljava/lang/Object;
.source "AndroidApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmediabrowser/apiinteraction/android/AndroidApiClient;->getResponseStream(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmediabrowser/apiinteraction/android/AndroidApiClient;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/android/AndroidApiClient;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$1;->this$0:Lmediabrowser/apiinteraction/android/AndroidApiClient;

    iput-object p2, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$1;->val$address:Ljava/lang/String;

    iput-object p3, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$1;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$1;->this$0:Lmediabrowser/apiinteraction/android/AndroidApiClient;

    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$1;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$1;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-static {v0, v1, v2}, Lmediabrowser/apiinteraction/android/AndroidApiClient;->access$000(Lmediabrowser/apiinteraction/android/AndroidApiClient;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
