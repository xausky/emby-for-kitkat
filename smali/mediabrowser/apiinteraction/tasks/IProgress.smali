.class public interface abstract Lmediabrowser/apiinteraction/tasks/IProgress;
.super Ljava/lang/Object;
.source "IProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract report(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract reportCancelled()V
.end method

.method public abstract reportComplete()V
.end method

.method public abstract reportError(Ljava/lang/Exception;)V
.end method
