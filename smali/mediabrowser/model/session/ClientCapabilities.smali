.class public Lmediabrowser/model/session/ClientCapabilities;
.super Ljava/lang/Object;
.source "ClientCapabilities.java"


# instance fields
.field private AppStoreUrl:Ljava/lang/String;

.field private DeviceProfile:Lmediabrowser/model/dlna/DeviceProfile;

.field private IconUrl:Ljava/lang/String;

.field private MessageCallbackUrl:Ljava/lang/String;

.field private PlayableMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SupportedCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SupportedLiveMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SupportsContentUploading:Z

.field private SupportsMediaControl:Z

.field private SupportsPersistentIdentifier:Z

.field private SupportsSync:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/session/ClientCapabilities;->setPlayableMediaTypes(Ljava/util/ArrayList;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/session/ClientCapabilities;->setSupportedCommands(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Lmediabrowser/model/session/ClientCapabilities;->setSupportsPersistentIdentifier(Z)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/session/ClientCapabilities;->setSupportedLiveMediaTypes(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getAppStoreUrl()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lmediabrowser/model/session/ClientCapabilities;->AppStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceProfile()Lmediabrowser/model/dlna/DeviceProfile;
    .locals 1

    .line 77
    iget-object v0, p0, Lmediabrowser/model/session/ClientCapabilities;->DeviceProfile:Lmediabrowser/model/dlna/DeviceProfile;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lmediabrowser/model/session/ClientCapabilities;->IconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageCallbackUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/session/ClientCapabilities;->MessageCallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayableMediaTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lmediabrowser/model/session/ClientCapabilities;->PlayableMediaTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSupportedCommands()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportedCommands:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSupportedLiveMediaTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportedLiveMediaTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSupportsContentUploading()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportsContentUploading:Z

    return v0
.end method

.method public final getSupportsMediaControl()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportsMediaControl:Z

    return v0
.end method

.method public final getSupportsPersistentIdentifier()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportsPersistentIdentifier:Z

    return v0
.end method

.method public final getSupportsSync()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportsSync:Z

    return v0
.end method

.method public final setAppStoreUrl(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lmediabrowser/model/session/ClientCapabilities;->AppStoreUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceProfile(Lmediabrowser/model/dlna/DeviceProfile;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lmediabrowser/model/session/ClientCapabilities;->DeviceProfile:Lmediabrowser/model/dlna/DeviceProfile;

    return-void
.end method

.method public final setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lmediabrowser/model/session/ClientCapabilities;->IconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMessageCallbackUrl(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/session/ClientCapabilities;->MessageCallbackUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPlayableMediaTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lmediabrowser/model/session/ClientCapabilities;->PlayableMediaTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSupportedCommands(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportedCommands:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSupportedLiveMediaTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportedLiveMediaTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSupportsContentUploading(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportsContentUploading:Z

    return-void
.end method

.method public final setSupportsMediaControl(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportsMediaControl:Z

    return-void
.end method

.method public final setSupportsPersistentIdentifier(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportsPersistentIdentifier:Z

    return-void
.end method

.method public final setSupportsSync(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lmediabrowser/model/session/ClientCapabilities;->SupportsSync:Z

    return-void
.end method
