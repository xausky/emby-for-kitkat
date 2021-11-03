.class public Lmediabrowser/model/system/SystemInfo;
.super Lmediabrowser/model/system/PublicSystemInfo;
.source "SystemInfo.java"


# instance fields
.field private CachePath:Ljava/lang/String;

.field private CanSelfRestart:Z

.field private CanSelfUpdate:Z

.field private EncoderLocationType:Ljava/lang/String;

.field private FailedPluginAssemblies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private HasPendingRestart:Z

.field private HasUpdateAvailable:Z

.field private HttpServerPortNumber:I

.field private HttpsPortNumber:I

.field private InternalMetadataPath:Ljava/lang/String;

.field private ItemsByNamePath:Ljava/lang/String;

.field private LogPath:Ljava/lang/String;

.field private MacAddress:Ljava/lang/String;

.field private OperatingSystemDisplayName:Ljava/lang/String;

.field private PackageName:Ljava/lang/String;

.field private ProgramDataPath:Ljava/lang/String;

.field private SupportsAutoRunAtStartup:Z

.field private SupportsHttps:Z

.field private SupportsLibraryMonitor:Z

.field private SupportsRunningAsService:Z

.field private SystemArchitecture:Lmediabrowser/model/system/Architecture;

.field private SystemUpdateLevel:Lmediabrowser/model/updates/PackageVersionClass;

.field private TranscodingTempPath:Ljava/lang/String;

.field private WebSocketPortNumber:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 354
    invoke-direct {p0}, Lmediabrowser/model/system/PublicSystemInfo;-><init>()V

    .line 10
    invoke-static {}, Lmediabrowser/model/updates/PackageVersionClass;->values()[Lmediabrowser/model/updates/PackageVersionClass;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/system/SystemInfo;->SystemUpdateLevel:Lmediabrowser/model/updates/PackageVersionClass;

    .line 340
    invoke-static {}, Lmediabrowser/model/system/Architecture;->values()[Lmediabrowser/model/system/Architecture;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/system/SystemInfo;->SystemArchitecture:Lmediabrowser/model/system/Architecture;

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/system/SystemInfo;->setFailedPluginAssemblies(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getCachePath()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->CachePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanSelfRestart()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lmediabrowser/model/system/SystemInfo;->CanSelfRestart:Z

    return v0
.end method

.method public final getCanSelfUpdate()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lmediabrowser/model/system/SystemInfo;->CanSelfUpdate:Z

    return v0
.end method

.method public final getEncoderLocationType()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->EncoderLocationType:Ljava/lang/String;

    return-object v0
.end method

.method public final getFailedPluginAssemblies()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->FailedPluginAssemblies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getHasPendingRestart()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lmediabrowser/model/system/SystemInfo;->HasPendingRestart:Z

    return v0
.end method

.method public final getHasUpdateAvailable()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lmediabrowser/model/system/SystemInfo;->HasUpdateAvailable:Z

    return v0
.end method

.method public final getHttpServerPortNumber()I
    .locals 1

    .line 263
    iget v0, p0, Lmediabrowser/model/system/SystemInfo;->HttpServerPortNumber:I

    return v0
.end method

.method public final getHttpsPortNumber()I
    .locals 1

    .line 293
    iget v0, p0, Lmediabrowser/model/system/SystemInfo;->HttpsPortNumber:I

    return v0
.end method

.method public final getInternalMetadataPath()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->InternalMetadataPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemsByNamePath()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->ItemsByNamePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogPath()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->LogPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getMacAddress()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->MacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperatingSystemDisplayName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->OperatingSystemDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramDataPath()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->ProgramDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportsAutoRunAtStartup()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lmediabrowser/model/system/SystemInfo;->SupportsAutoRunAtStartup:Z

    return v0
.end method

.method public final getSupportsHttps()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lmediabrowser/model/system/SystemInfo;->SupportsHttps:Z

    return v0
.end method

.method public final getSupportsLibraryMonitor()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lmediabrowser/model/system/SystemInfo;->SupportsLibraryMonitor:Z

    return v0
.end method

.method public final getSupportsRunningAsService()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lmediabrowser/model/system/SystemInfo;->SupportsRunningAsService:Z

    return v0
.end method

.method public final getSystemArchitecture()Lmediabrowser/model/system/Architecture;
    .locals 1

    .line 343
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->SystemArchitecture:Lmediabrowser/model/system/Architecture;

    return-object v0
.end method

.method public final getSystemUpdateLevel()Lmediabrowser/model/updates/PackageVersionClass;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->SystemUpdateLevel:Lmediabrowser/model/updates/PackageVersionClass;

    return-object v0
.end method

.method public final getTranscodingTempPath()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lmediabrowser/model/system/SystemInfo;->TranscodingTempPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebSocketPortNumber()I
    .locals 1

    .line 113
    iget v0, p0, Lmediabrowser/model/system/SystemInfo;->WebSocketPortNumber:I

    return v0
.end method

.method public final setCachePath(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->CachePath:Ljava/lang/String;

    return-void
.end method

.method public final setCanSelfRestart(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lmediabrowser/model/system/SystemInfo;->CanSelfRestart:Z

    return-void
.end method

.method public final setCanSelfUpdate(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lmediabrowser/model/system/SystemInfo;->CanSelfUpdate:Z

    return-void
.end method

.method public final setEncoderLocationType(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->EncoderLocationType:Ljava/lang/String;

    return-void
.end method

.method public final setFailedPluginAssemblies(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->FailedPluginAssemblies:Ljava/util/ArrayList;

    return-void
.end method

.method public final setHasPendingRestart(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lmediabrowser/model/system/SystemInfo;->HasPendingRestart:Z

    return-void
.end method

.method public final setHasUpdateAvailable(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lmediabrowser/model/system/SystemInfo;->HasUpdateAvailable:Z

    return-void
.end method

.method public final setHttpServerPortNumber(I)V
    .locals 0

    .line 267
    iput p1, p0, Lmediabrowser/model/system/SystemInfo;->HttpServerPortNumber:I

    return-void
.end method

.method public final setHttpsPortNumber(I)V
    .locals 0

    .line 297
    iput p1, p0, Lmediabrowser/model/system/SystemInfo;->HttpsPortNumber:I

    return-void
.end method

.method public final setInternalMetadataPath(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->InternalMetadataPath:Ljava/lang/String;

    return-void
.end method

.method public final setItemsByNamePath(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->ItemsByNamePath:Ljava/lang/String;

    return-void
.end method

.method public final setLogPath(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->LogPath:Ljava/lang/String;

    return-void
.end method

.method public final setMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->MacAddress:Ljava/lang/String;

    return-void
.end method

.method public final setOperatingSystemDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->OperatingSystemDisplayName:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->PackageName:Ljava/lang/String;

    return-void
.end method

.method public final setProgramDataPath(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->ProgramDataPath:Ljava/lang/String;

    return-void
.end method

.method public final setSupportsAutoRunAtStartup(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lmediabrowser/model/system/SystemInfo;->SupportsAutoRunAtStartup:Z

    return-void
.end method

.method public final setSupportsHttps(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lmediabrowser/model/system/SystemInfo;->SupportsHttps:Z

    return-void
.end method

.method public final setSupportsLibraryMonitor(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lmediabrowser/model/system/SystemInfo;->SupportsLibraryMonitor:Z

    return-void
.end method

.method public final setSupportsRunningAsService(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lmediabrowser/model/system/SystemInfo;->SupportsRunningAsService:Z

    return-void
.end method

.method public final setSystemArchitecture(Lmediabrowser/model/system/Architecture;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->SystemArchitecture:Lmediabrowser/model/system/Architecture;

    return-void
.end method

.method public final setSystemUpdateLevel(Lmediabrowser/model/updates/PackageVersionClass;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->SystemUpdateLevel:Lmediabrowser/model/updates/PackageVersionClass;

    return-void
.end method

.method public final setTranscodingTempPath(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lmediabrowser/model/system/SystemInfo;->TranscodingTempPath:Ljava/lang/String;

    return-void
.end method

.method public final setWebSocketPortNumber(I)V
    .locals 0

    .line 117
    iput p1, p0, Lmediabrowser/model/system/SystemInfo;->WebSocketPortNumber:I

    return-void
.end method
