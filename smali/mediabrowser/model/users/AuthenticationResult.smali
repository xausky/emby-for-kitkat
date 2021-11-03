.class public Lmediabrowser/model/users/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# instance fields
.field private AccessToken:Ljava/lang/String;

.field private ServerId:Ljava/lang/String;

.field private SessionInfo:Lmediabrowser/model/session/SessionInfoDto;

.field private User:Lmediabrowser/model/dto/UserDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/users/AuthenticationResult;->AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lmediabrowser/model/users/AuthenticationResult;->ServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionInfo()Lmediabrowser/model/session/SessionInfoDto;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/users/AuthenticationResult;->SessionInfo:Lmediabrowser/model/session/SessionInfoDto;

    return-object v0
.end method

.method public final getUser()Lmediabrowser/model/dto/UserDto;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/users/AuthenticationResult;->User:Lmediabrowser/model/dto/UserDto;

    return-object v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/users/AuthenticationResult;->AccessToken:Ljava/lang/String;

    return-void
.end method

.method public final setServerId(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lmediabrowser/model/users/AuthenticationResult;->ServerId:Ljava/lang/String;

    return-void
.end method

.method public final setSessionInfo(Lmediabrowser/model/session/SessionInfoDto;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/users/AuthenticationResult;->SessionInfo:Lmediabrowser/model/session/SessionInfoDto;

    return-void
.end method

.method public final setUser(Lmediabrowser/model/dto/UserDto;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/users/AuthenticationResult;->User:Lmediabrowser/model/dto/UserDto;

    return-void
.end method
