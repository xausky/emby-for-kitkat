.class public interface abstract Ltv/emby/iap/IResultHandler;
.super Ljava/lang/Object;
.source "IResultHandler.java"


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
.method public abstract onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V
.end method

.method public abstract onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
