.class public Ltv/emby/iap/PurchaseResult;
.super Ljava/lang/Object;
.source "PurchaseResult.java"


# instance fields
.field private resultCode:Ltv/emby/iap/ResultType;

.field private store:Ljava/lang/String;

.field private storeId:Ljava/lang/String;

.field private storeToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Google"

    .line 8
    iput-object v0, p0, Ltv/emby/iap/PurchaseResult;->store:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultCode()Ltv/emby/iap/ResultType;
    .locals 1

    .line 13
    iget-object v0, p0, Ltv/emby/iap/PurchaseResult;->resultCode:Ltv/emby/iap/ResultType;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Ltv/emby/iap/PurchaseResult;->store:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Ltv/emby/iap/PurchaseResult;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreToken()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Ltv/emby/iap/PurchaseResult;->storeToken:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(Ltv/emby/iap/ResultType;)V
    .locals 0

    .line 17
    iput-object p1, p0, Ltv/emby/iap/PurchaseResult;->resultCode:Ltv/emby/iap/ResultType;

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Ltv/emby/iap/PurchaseResult;->store:Ljava/lang/String;

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Ltv/emby/iap/PurchaseResult;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setStoreToken(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Ltv/emby/iap/PurchaseResult;->storeToken:Ljava/lang/String;

    return-void
.end method
