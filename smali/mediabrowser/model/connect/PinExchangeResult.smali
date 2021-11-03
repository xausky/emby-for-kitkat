.class public Lmediabrowser/model/connect/PinExchangeResult;
.super Ljava/lang/Object;
.source "PinExchangeResult.java"


# instance fields
.field private AccessToken:Ljava/lang/String;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/connect/PinExchangeResult;->AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/connect/PinExchangeResult;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/connect/PinExchangeResult;->AccessToken:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/connect/PinExchangeResult;->UserId:Ljava/lang/String;

    return-void
.end method
