.class public Ltv/emby/embyatv/startup/LogonCredentials;
.super Ljava/lang/Object;
.source "LogonCredentials.java"


# instance fields
.field private pw:Ljava/lang/String;

.field private serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

.field private userDto:Lmediabrowser/model/dto/UserDto;


# direct methods
.method public constructor <init>(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Ltv/emby/embyatv/startup/LogonCredentials;->pw:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Ltv/emby/embyatv/startup/LogonCredentials;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    .line 16
    iput-object p2, p0, Ltv/emby/embyatv/startup/LogonCredentials;->userDto:Lmediabrowser/model/dto/UserDto;

    .line 17
    iput-object p3, p0, Ltv/emby/embyatv/startup/LogonCredentials;->pw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPw()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Ltv/emby/embyatv/startup/LogonCredentials;->pw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/startup/LogonCredentials;->pw:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;
    .locals 1

    .line 21
    iget-object v0, p0, Ltv/emby/embyatv/startup/LogonCredentials;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    return-object v0
.end method

.method public getUserDto()Lmediabrowser/model/dto/UserDto;
    .locals 1

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/startup/LogonCredentials;->userDto:Lmediabrowser/model/dto/UserDto;

    return-object v0
.end method

.method public setPw(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Ltv/emby/embyatv/startup/LogonCredentials;->pw:Ljava/lang/String;

    return-void
.end method

.method public setServerInfo(Lmediabrowser/model/apiclient/ServerInfo;)V
    .locals 0

    .line 25
    iput-object p1, p0, Ltv/emby/embyatv/startup/LogonCredentials;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    return-void
.end method

.method public setUserDto(Lmediabrowser/model/dto/UserDto;)V
    .locals 0

    .line 33
    iput-object p1, p0, Ltv/emby/embyatv/startup/LogonCredentials;->userDto:Lmediabrowser/model/dto/UserDto;

    return-void
.end method
