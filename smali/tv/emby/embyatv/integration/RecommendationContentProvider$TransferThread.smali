.class Ltv/emby/embyatv/integration/RecommendationContentProvider$TransferThread;
.super Ljava/lang/Thread;
.source "RecommendationContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/integration/RecommendationContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransferThread"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 134
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationContentProvider$TransferThread;->in:Ljava/io/InputStream;

    .line 135
    iput-object p2, p0, Ltv/emby/embyatv/integration/RecommendationContentProvider$TransferThread;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x2000

    .line 140
    new-array v0, v0, [B

    .line 144
    :goto_0
    :try_start_0
    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationContentProvider$TransferThread;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 145
    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationContentProvider$TransferThread;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationContentProvider$TransferThread;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 149
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationContentProvider$TransferThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 150
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationContentProvider$TransferThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception transferring file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
