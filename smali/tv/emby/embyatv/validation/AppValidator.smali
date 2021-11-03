.class public Ltv/emby/embyatv/validation/AppValidator;
.super Ljava/lang/Object;
.source "AppValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/validation/AppValidator$DeviceParams;
    }
.end annotation


# static fields
.field private static final k1:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhAR9t5CAdBY+iOXd4QkZeSTttHtpQ48mLM+k2h0i54FWDLhn28CDUIDogQSZTLKBu0Qshp+i0KUjCD"

.field private static final k2:Ljava/lang/String; = "iiyQfQjYe0pgdpC7hk2ZzuOjy8C1Pb8GEhJYUoH7Pg/3ZnEZrV8kdNtfAu/TtvKGFkrhBCVrMQVN/TTKfZrq36IHC2HEqGAOin2CYV323ZjnSJpJQkGuOISy+I"

.field private static final k3:Ljava/lang/String; = "PvVi1EBf7+bfK3dqbv461xcSz0HtC5aJwDfvYS+fVE0X+7bLpbz93gPP07Il9ntKSCVYsmiv4PJ8uVfjVrFdaxEJowK89/+S1hD4AaDGLk90l7nfVKdXC7qpKu"

.field private static final k4:Ljava/lang/String; = "I+ZwyT8czrx8qyCvU5MQIDAQAB"

.field private static validationInProgress:Z


# instance fields
.field private finishedResponse:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/validation/AppValidator;)Lmediabrowser/apiinteraction/EmptyResponse;
    .locals 0

    .line 30
    iget-object p0, p0, Ltv/emby/embyatv/validation/AppValidator;->finishedResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 30
    sput-boolean p0, Ltv/emby/embyatv/validation/AppValidator;->validationInProgress:Z

    return p0
.end method

.method public static getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhAR9t5CAdBY+iOXd4QkZeSTttHtpQ48mLM+k2h0i54FWDLhn28CDUIDogQSZTLKBu0Qshp+i0KUjCDPvVi1EBf7+bfK3dqbv461xcSz0HtC5aJwDfvYS+fVE0X+7bLpbz93gPP07Il9ntKSCVYsmiv4PJ8uVfjVrFdaxEJowK89/+S1hD4AaDGLk90l7nfVKdXC7qpKuiiyQfQjYe0pgdpC7hk2ZzuOjy8C1Pb8GEhJYUoH7Pg/3ZnEZrV8kdNtfAu/TtvKGFkrhBCVrMQVN/TTKfZrq36IHC2HEqGAOin2CYV323ZjnSJpJQkGuOISy+II+ZwyT8czrx8qyCvU5MQIDAQAB"

    return-object v0
.end method

.method private getRegistrationInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/registration/RegistrationInfo;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    .line 100
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastAppValidation()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 101
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "AppRegRecord"

    const-string v4, "{}"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v3, Lmediabrowser/model/registration/RegistrationInfo;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/registration/RegistrationInfo;

    .line 102
    invoke-virtual {v1}, Lmediabrowser/model/registration/RegistrationInfo;->getIsTrial()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/registration/RegistrationInfo;->getIsRegistered()Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v3, "*** Re-checking registration due to being in trial..."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Reg record read from cache due to previous success within 1 day"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p2, v1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v1, "{\"systemid\":\"%s\", \"feature\":\"%s\", \"useserver\":true}"

    const/4 v3, 0x2

    .line 111
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance v1, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 114
    new-instance v2, Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/http/HttpHeaders;-><init>()V

    const-string v3, "Accept"

    const-string v4, "application/json"

    .line 115
    invoke-virtual {v2, v3, v4}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "https://emby-validate.rarbg.workers.dev"

    .line 116
    invoke-virtual {v1, v3}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v3, "POST"

    .line 117
    invoke-virtual {v1, v3}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    .line 119
    invoke-virtual {v1, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 120
    invoke-virtual {v1, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getHttpClient()Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    move-result-object p1

    new-instance v2, Ltv/emby/embyatv/validation/AppValidator$2;

    invoke-direct {v2, p0, v0, p2}, Ltv/emby/embyatv/validation/AppValidator$2;-><init>(Ltv/emby/embyatv/validation/AppValidator;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, v1, v2}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method public checkPurchase(Ljava/lang/String;)V
    .locals 4

    .line 243
    new-instance v0, Ltv/emby/iap/IabValidator;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/validation/AppValidator;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/validation/AppValidator$4;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/validation/AppValidator$4;-><init>(Ltv/emby/embyatv/validation/AppValidator;)V

    invoke-direct {v0, v1, v2, v3}, Ltv/emby/iap/IabValidator;-><init>(Landroid/content/Context;Ljava/lang/String;Ltv/emby/iap/ILogger;)V

    .line 261
    new-instance v1, Ltv/emby/embyatv/validation/AppValidator$5;

    invoke-direct {v1, p0, p1, v0}, Ltv/emby/embyatv/validation/AppValidator$5;-><init>(Ltv/emby/embyatv/validation/AppValidator;Ljava/lang/String;Ltv/emby/iap/IabValidator;)V

    invoke-virtual {v0, p1, v1}, Ltv/emby/iap/IabValidator;->checkInAppPurchase(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    return-void
.end method

.method public validate(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    .line 46
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->loadSystemInfo()V

    .line 47
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->validateServer()V

    .line 48
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator;->finishedResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 51
    sget-object p1, Ltv/emby/embyatv/TvApp;->FEATURE_CODE:Ljava/lang/String;

    new-instance v0, Ltv/emby/embyatv/validation/AppValidator$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/validation/AppValidator$1;-><init>(Ltv/emby/embyatv/validation/AppValidator;)V

    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/validation/AppValidator;->getRegistrationInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public validateDevice(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0, p1}, Ltv/emby/embyatv/validation/AppValidator;->validateDevice(ZLmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public validateDevice(ZLmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 7

    .line 160
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->getLastDeviceValidation(Z)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 161
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Premiere Device validation granted from previous success within 1 day"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x15180

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getDeviceValidationCacheDays()I

    move-result v4

    mul-int v4, v4, v0

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    const/4 v2, 0x1

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    .line 170
    sget-boolean v3, Ltv/emby/embyatv/validation/AppValidator;->validationInProgress:Z

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    .line 172
    :cond_4
    sput-boolean v2, Ltv/emby/embyatv/validation/AppValidator;->validationInProgress:Z

    .line 173
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v3

    const-string v4, "Making device validation call %s %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    const-string v6, ""

    goto :goto_1

    :cond_5
    const-string v6, "in background"

    :goto_1
    aput-object v6, v5, v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDeviceValidationCacheDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-interface {v3, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/validation/AppValidator$DeviceParams;-><init>(Ltv/emby/embyatv/validation/AppValidator;Z)V

    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 178
    new-instance v3, Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-direct {v3}, Lmediabrowser/apiinteraction/http/HttpHeaders;-><init>()V

    const-string v4, "Accept"

    const-string v5, "application/json"

    .line 179
    invoke-virtual {v3, v4, v5}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "https://emby-validate-device.rarbg.workers.dev"

    .line 180
    invoke-virtual {v2, v4}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v4, "POST"

    .line 181
    invoke-virtual {v2, v4}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2, v3}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    .line 183
    invoke-virtual {v2, v1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    const-string v1, "application/json"

    .line 184
    invoke-virtual {v2, v1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getHttpClient()Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    move-result-object v1

    new-instance v3, Ltv/emby/embyatv/validation/AppValidator$3;

    invoke-direct {v3, p0, p1, v0, p2}, Ltv/emby/embyatv/validation/AppValidator$3;-><init>(Ltv/emby/embyatv/validation/AppValidator;ZZLmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {v1, v2, v3}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
