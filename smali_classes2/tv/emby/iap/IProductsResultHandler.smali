.class public interface abstract Ltv/emby/iap/IProductsResultHandler;
.super Ljava/lang/Object;
.source "IProductsResultHandler.java"


# virtual methods
.method public abstract onError(Ltv/emby/iap/ErrorType;)V
.end method

.method public abstract onResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/iap/InAppProduct;",
            ">;)V"
        }
    .end annotation
.end method
