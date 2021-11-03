.class Lcom/bumptech/glide/RequestManager$2;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/RequestManager;

.field final synthetic val$target:Lcom/bumptech/glide/request/target/Target;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/request/target/Target;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$2;->this$0:Lcom/bumptech/glide/RequestManager;

    iput-object p2, p0, Lcom/bumptech/glide/RequestManager$2;->val$target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$2;->this$0:Lcom/bumptech/glide/RequestManager;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$2;->val$target:Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method
