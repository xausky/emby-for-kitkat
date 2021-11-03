.class public Lmediabrowser/model/configuration/BaseApplicationConfiguration;
.super Ljava/lang/Object;
.source "BaseApplicationConfiguration.java"


# instance fields
.field private CachePath:Ljava/lang/String;

.field private EnableAutoUpdate:Z

.field private EnableDebugLevelLogging:Z

.field private IsStartupWizardCompleted:Z

.field private LogFileRetentionDays:I

.field private RunAtStartup:Z

.field private SystemUpdateLevel:Lmediabrowser/model/updates/PackageVersionClass;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lmediabrowser/model/updates/PackageVersionClass;->values()[Lmediabrowser/model/updates/PackageVersionClass;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->SystemUpdateLevel:Lmediabrowser/model/updates/PackageVersionClass;

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->setEnableAutoUpdate(Z)V

    const/4 v0, 0x3

    .line 121
    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->setLogFileRetentionDays(I)V

    return-void
.end method


# virtual methods
.method public final getCachePath()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->CachePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableAutoUpdate()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->EnableAutoUpdate:Z

    return v0
.end method

.method public final getEnableDebugLevelLogging()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->EnableDebugLevelLogging:Z

    return v0
.end method

.method public final getIsStartupWizardCompleted()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->IsStartupWizardCompleted:Z

    return v0
.end method

.method public final getLogFileRetentionDays()I
    .locals 1

    .line 63
    iget v0, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->LogFileRetentionDays:I

    return v0
.end method

.method public final getRunAtStartup()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->RunAtStartup:Z

    return v0
.end method

.method public final getSystemUpdateLevel()Lmediabrowser/model/updates/PackageVersionClass;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->SystemUpdateLevel:Lmediabrowser/model/updates/PackageVersionClass;

    return-object v0
.end method

.method public final setCachePath(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->CachePath:Ljava/lang/String;

    return-void
.end method

.method public final setEnableAutoUpdate(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->EnableAutoUpdate:Z

    return-void
.end method

.method public final setEnableDebugLevelLogging(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->EnableDebugLevelLogging:Z

    return-void
.end method

.method public final setIsStartupWizardCompleted(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->IsStartupWizardCompleted:Z

    return-void
.end method

.method public final setLogFileRetentionDays(I)V
    .locals 0

    .line 67
    iput p1, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->LogFileRetentionDays:I

    return-void
.end method

.method public final setRunAtStartup(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->RunAtStartup:Z

    return-void
.end method

.method public final setSystemUpdateLevel(Lmediabrowser/model/updates/PackageVersionClass;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/configuration/BaseApplicationConfiguration;->SystemUpdateLevel:Lmediabrowser/model/updates/PackageVersionClass;

    return-void
.end method
