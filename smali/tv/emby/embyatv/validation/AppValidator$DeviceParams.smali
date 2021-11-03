.class Ltv/emby/embyatv/validation/AppValidator$DeviceParams;
.super Ljava/lang/Object;
.source "AppValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/validation/AppValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceParams"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public embyUserName:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field final synthetic this$0:Ltv/emby/embyatv/validation/AppValidator;

.field public viewOnly:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/validation/AppValidator;Z)V
    .locals 1

    .line 231
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;->this$0:Ltv/emby/embyatv/validation/AppValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Android TV"

    .line 226
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;->appName:Ljava/lang/String;

    const-string p1, "1.8.29g"

    .line 227
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;->appVersion:Ljava/lang/String;

    .line 228
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;->deviceName:Ljava/lang/String;

    const-string p1, "false"

    .line 229
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;->viewOnly:Ljava/lang/String;

    .line 232
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 233
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 235
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;->deviceId:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;->serverId:Ljava/lang/String;

    .line 237
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;->embyUserName:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string p1, "true"

    goto :goto_1

    :cond_2
    const-string p1, "false"

    .line 238
    :goto_1
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;->viewOnly:Ljava/lang/String;

    return-void

    :cond_3
    :goto_2
    return-void
.end method
