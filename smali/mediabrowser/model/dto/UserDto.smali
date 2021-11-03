.class public Lmediabrowser/model/dto/UserDto;
.super Ljava/lang/Object;
.source "UserDto.java"

# interfaces
.implements Lmediabrowser/model/dto/IHasServerId;


# instance fields
.field private Configuration:Lmediabrowser/model/configuration/UserConfiguration;

.field private ConnectLinkType:Lmediabrowser/model/connect/UserLinkType;

.field private ConnectUserId:Ljava/lang/String;

.field private ConnectUserName:Ljava/lang/String;

.field private EnableAutoLogin:Ljava/lang/Boolean;

.field private HasConfiguredEasyPassword:Z

.field private HasConfiguredPassword:Z

.field private HasPassword:Z

.field private Id:Ljava/lang/String;

.field private LastActivityDate:Ljava/util/Date;

.field private LastLoginDate:Ljava/util/Date;

.field private Name:Ljava/lang/String;

.field private Policy:Lmediabrowser/model/users/UserPolicy;

.field private PrimaryImageAspectRatio:Ljava/lang/Double;

.field private PrimaryImageTag:Ljava/lang/String;

.field private ServerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lmediabrowser/model/dto/UserDto;->ConnectLinkType:Lmediabrowser/model/connect/UserLinkType;

    .line 163
    iput-object v0, p0, Lmediabrowser/model/dto/UserDto;->EnableAutoLogin:Ljava/lang/Boolean;

    .line 178
    iput-object v0, p0, Lmediabrowser/model/dto/UserDto;->LastLoginDate:Ljava/util/Date;

    .line 193
    iput-object v0, p0, Lmediabrowser/model/dto/UserDto;->LastActivityDate:Ljava/util/Date;

    .line 238
    iput-object v0, p0, Lmediabrowser/model/dto/UserDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    .line 253
    new-instance v0, Lmediabrowser/model/configuration/UserConfiguration;

    invoke-direct {v0}, Lmediabrowser/model/configuration/UserConfiguration;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/UserDto;->setConfiguration(Lmediabrowser/model/configuration/UserConfiguration;)V

    .line 254
    new-instance v0, Lmediabrowser/model/users/UserPolicy;

    invoke-direct {v0}, Lmediabrowser/model/users/UserPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/UserDto;->setPolicy(Lmediabrowser/model/users/UserPolicy;)V

    return-void
.end method


# virtual methods
.method public final getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;
    .locals 1

    .line 211
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->Configuration:Lmediabrowser/model/configuration/UserConfiguration;

    return-object v0
.end method

.method public final getConnectLinkType()Lmediabrowser/model/connect/UserLinkType;
    .locals 1

    .line 81
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->ConnectLinkType:Lmediabrowser/model/connect/UserLinkType;

    return-object v0
.end method

.method public final getConnectUserId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->ConnectUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectUserName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->ConnectUserName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableAutoLogin()Ljava/lang/Boolean;
    .locals 1

    .line 166
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->EnableAutoLogin:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasConfiguredEasyPassword()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lmediabrowser/model/dto/UserDto;->HasConfiguredEasyPassword:Z

    return v0
.end method

.method public final getHasConfiguredPassword()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lmediabrowser/model/dto/UserDto;->HasConfiguredPassword:Z

    return v0
.end method

.method public final getHasPassword()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lmediabrowser/model/dto/UserDto;->HasPassword:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastActivityDate()Ljava/util/Date;
    .locals 1

    .line 196
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->LastActivityDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getLastLoginDate()Ljava/util/Date;
    .locals 1

    .line 181
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->LastLoginDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPolicy()Lmediabrowser/model/users/UserPolicy;
    .locals 1

    .line 226
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->Policy:Lmediabrowser/model/users/UserPolicy;

    return-object v0
.end method

.method public final getPrimaryImageAspectRatio()Ljava/lang/Double;
    .locals 1

    .line 241
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->PrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lmediabrowser/model/dto/UserDto;->ServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final setConfiguration(Lmediabrowser/model/configuration/UserConfiguration;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->Configuration:Lmediabrowser/model/configuration/UserConfiguration;

    return-void
.end method

.method public final setConnectLinkType(Lmediabrowser/model/connect/UserLinkType;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->ConnectLinkType:Lmediabrowser/model/connect/UserLinkType;

    return-void
.end method

.method public final setConnectUserId(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->ConnectUserId:Ljava/lang/String;

    return-void
.end method

.method public final setConnectUserName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->ConnectUserName:Ljava/lang/String;

    return-void
.end method

.method public final setEnableAutoLogin(Ljava/lang/Boolean;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->EnableAutoLogin:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHasConfiguredEasyPassword(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lmediabrowser/model/dto/UserDto;->HasConfiguredEasyPassword:Z

    return-void
.end method

.method public final setHasConfiguredPassword(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lmediabrowser/model/dto/UserDto;->HasConfiguredPassword:Z

    return-void
.end method

.method public final setHasPassword(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lmediabrowser/model/dto/UserDto;->HasPassword:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setLastActivityDate(Ljava/util/Date;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->LastActivityDate:Ljava/util/Date;

    return-void
.end method

.method public final setLastLoginDate(Ljava/util/Date;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->LastLoginDate:Ljava/util/Date;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setPolicy(Lmediabrowser/model/users/UserPolicy;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->Policy:Lmediabrowser/model/users/UserPolicy;

    return-void
.end method

.method public final setPrimaryImageAspectRatio(Ljava/lang/Double;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-void
.end method

.method public final setPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->PrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setServerId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lmediabrowser/model/dto/UserDto;->ServerId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
