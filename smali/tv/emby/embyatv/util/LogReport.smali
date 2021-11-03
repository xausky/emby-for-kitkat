.class public Ltv/emby/embyatv/util/LogReport;
.super Ljava/lang/Object;
.source "LogReport.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private cause:Ljava/lang/String;

.field private deviceInfo:Ljava/lang/String;

.field private logLines:Ljava/lang/String;

.field private osVersionInt:I

.field private osVersionString:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidTV"

    .line 57
    iput-object v0, p0, Ltv/emby/embyatv/util/LogReport;->appName:Ljava/lang/String;

    const-string v0, "1.8.29g"

    .line 58
    iput-object v0, p0, Ltv/emby/embyatv/util/LogReport;->appVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Ltv/emby/embyatv/util/LogReport;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Ltv/emby/embyatv/util/LogReport;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCause()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Ltv/emby/embyatv/util/LogReport;->cause:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Ltv/emby/embyatv/util/LogReport;->deviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLines()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Ltv/emby/embyatv/util/LogReport;->logLines:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersionInt()I
    .locals 1

    .line 34
    iget v0, p0, Ltv/emby/embyatv/util/LogReport;->osVersionInt:I

    return v0
.end method

.method public getOsVersionString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Ltv/emby/embyatv/util/LogReport;->osVersionString:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Ltv/emby/embyatv/util/LogReport;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Ltv/emby/embyatv/util/LogReport;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Ltv/emby/embyatv/util/LogReport;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Ltv/emby/embyatv/util/LogReport;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setCause(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Ltv/emby/embyatv/util/LogReport;->cause:Ljava/lang/String;

    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Ltv/emby/embyatv/util/LogReport;->deviceInfo:Ljava/lang/String;

    return-void
.end method

.method public setLogLines(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Ltv/emby/embyatv/util/LogReport;->logLines:Ljava/lang/String;

    return-void
.end method

.method public setOsVersionInt(I)V
    .locals 0

    .line 38
    iput p1, p0, Ltv/emby/embyatv/util/LogReport;->osVersionInt:I

    return-void
.end method

.method public setOsVersionString(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Ltv/emby/embyatv/util/LogReport;->osVersionString:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Ltv/emby/embyatv/util/LogReport;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Ltv/emby/embyatv/util/LogReport;->userName:Ljava/lang/String;

    return-void
.end method
