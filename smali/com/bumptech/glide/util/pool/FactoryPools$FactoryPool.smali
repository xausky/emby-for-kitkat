.class final Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;
.super Ljava/lang/Object;
.source "FactoryPools.java"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/pool/FactoryPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FactoryPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final factory:Lcom/bumptech/glide/util/pool/FactoryPools$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resetter:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/pool/FactoryPools$Resetter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;)V
    .locals 0
    .param p1    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/util/pool/FactoryPools$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
            "TT;>;",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Resetter<",
            "TT;>;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->pool:Landroidx/core/util/Pools$Pool;

    .line 151
    iput-object p2, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->factory:Lcom/bumptech/glide/util/pool/FactoryPools$Factory;

    .line 152
    iput-object p3, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->resetter:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->factory:Lcom/bumptech/glide/util/pool/FactoryPools$Factory;

    invoke-interface {v0}, Lcom/bumptech/glide/util/pool/FactoryPools$Factory;->create()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FactoryPools"

    const/4 v2, 0x2

    .line 160
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FactoryPools"

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    instance-of v1, v0, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    if-eqz v1, :cond_1

    .line 165
    move-object v1, v0

    check-cast v1, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    invoke-interface {v1}, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;->getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/util/pool/StateVerifier;->setRecycled(Z)V

    :cond_1
    return-object v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 172
    instance-of v0, p1, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    if-eqz v0, :cond_0

    .line 173
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    invoke-interface {v0}, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;->getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->setRecycled(Z)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->resetter:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;->reset(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
