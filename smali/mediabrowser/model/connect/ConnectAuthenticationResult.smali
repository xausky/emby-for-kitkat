.class public Lmediabrowser/model/connect/ConnectAuthenticationResult;
.super Ljava/lang/Object;
.source "ConnectAuthenticationResult.java"


# instance fields
.field private AccessToken:Ljava/lang/String;

.field private User:Lmediabrowser/model/connect/ConnectUser;


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

    .line 27
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectAuthenticationResult;->AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lmediabrowser/model/connect/ConnectUser;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectAuthenticationResult;->User:Lmediabrowser/model/connect/ConnectUser;

    return-object v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectAuthenticationResult;->AccessToken:Ljava/lang/String;

    return-void
.end method

.method public final setUser(Lmediabrowser/model/connect/ConnectUser;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectAuthenticationResult;->User:Lmediabrowser/model/connect/ConnectUser;

    return-void
.end method
