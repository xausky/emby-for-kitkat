.class Lmediabrowser/apiinteraction/android/AndroidApiClient$2;
.super Ljava/lang/Object;
.source "AndroidApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmediabrowser/apiinteraction/android/AndroidApiClient;->detectBitrate(JLmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmediabrowser/apiinteraction/android/AndroidApiClient;

.field final synthetic val$downloadBytes:J

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/android/AndroidApiClient;JLmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$2;->this$0:Lmediabrowser/apiinteraction/android/AndroidApiClient;

    iput-wide p2, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$2;->val$downloadBytes:J

    iput-object p4, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$2;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 77
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$2;->this$0:Lmediabrowser/apiinteraction/android/AndroidApiClient;

    iget-wide v1, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$2;->val$downloadBytes:J

    iget-object v3, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient$2;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-static {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/android/AndroidApiClient;->access$100(Lmediabrowser/apiinteraction/android/AndroidApiClient;JLmediabrowser/apiinteraction/Response;)V

    return-void
.end method
