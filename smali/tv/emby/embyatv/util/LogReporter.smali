.class public Ltv/emby/embyatv/util/LogReporter;
.super Ljava/lang/Object;
.source "LogReporter.java"


# static fields
.field public static CrashFileName:Ljava/lang/String; = "crashlog.txt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/util/LogReporter;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ltv/emby/embyatv/util/LogReporter;->createCrashFile(Ljava/lang/String;)V

    return-void
.end method

.method private createCrashFile(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 108
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    sget-object v3, Ltv/emby/embyatv/util/LogReporter;->CrashFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ltv/emby/embyatv/TvApp;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 111
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "Crash file created"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "Unable to create crash file"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, p1, v0}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private createCrashFile(Ltv/emby/embyatv/util/LogReport;)V
    .locals 1

    .line 120
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltv/emby/embyatv/util/LogReporter;->createCrashFile(Ljava/lang/String;)V

    return-void
.end method

.method private getCrashFileContents()Ljava/lang/String;
    .locals 6

    const-string v0, "No Crash File Contents"

    const/4 v1, 0x0

    .line 132
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    sget-object v3, Ltv/emby/embyatv/util/LogReporter;->CrashFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 135
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 136
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 151
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v3

    const-string v4, "Unable to read crash file"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v1}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 149
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v3

    const-string v4, "Unable to locate crash file"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v1}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private sendRequest(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;Z)V
    .locals 4

    .line 81
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 82
    new-instance v1, Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/http/HttpHeaders;-><init>()V

    const-string v2, "Accept"

    const-string v3, "application/json"

    .line 83
    invoke-virtual {v1, v2, v3}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https://emby-log-report.rarbg.workers.dev"

    .line 84
    invoke-virtual {v0, v2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v2, "POST"

    .line 85
    invoke-virtual {v0, v2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    .line 87
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    const-string v1, "application/json"

    .line 88
    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getHttpClient()Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/util/LogReporter$1;

    invoke-direct {v2, p0, p2, p3, p1}, Ltv/emby/embyatv/util/LogReporter$1;-><init>(Ltv/emby/embyatv/util/LogReporter;Lmediabrowser/apiinteraction/EmptyResponse;ZLjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method public sendCrashFileReport(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 124
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    invoke-direct {p0}, Ltv/emby/embyatv/util/LogReporter;->getCrashFileContents()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ltv/emby/embyatv/util/LogReport;

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/util/LogReport;

    const-string v1, "Crash re-send"

    .line 125
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/util/LogReport;->setCause(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ltv/emby/embyatv/util/LogReporter;->sendRequest(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;Z)V

    return-void
.end method

.method public sendReport(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 7

    .line 31
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Sending log..."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v0, Ltv/emby/embyatv/util/LogReport;

    invoke-direct {v0}, Ltv/emby/embyatv/util/LogReport;-><init>()V

    .line 33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/util/LogReport;->setOsVersionInt(I)V

    .line 34
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/util/LogReport;->setOsVersionString(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p1}, Ltv/emby/embyatv/util/LogReport;->setCause(Ljava/lang/String;)V

    .line 36
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/util/LogReport;->setDeviceInfo(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/system/SystemInfo;->getServerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/util/LogReport;->setServerName(Ljava/lang/String;)V

    .line 38
    :cond_0
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

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/util/LogReport;->setUserName(Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "** OS Version: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/LogReport;->getOsVersionString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {p1, v1, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "** App Version: %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/LogReport;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {p1, v1, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "** Device: %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/LogReport;->getDeviceInfo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {p1, v1, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "** Server: %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/LogReport;->getServerName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {p1, v1, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "** User: %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/LogReport;->getUserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {p1, v1, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const-string v1, "logcat -d"

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 50
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 56
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 57
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log lines retrieved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/util/LogReport;->setLogLines(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve Log: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/util/LogReport;->setLogLines(Ljava/lang/String;)V

    .line 70
    :goto_1
    :try_start_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1, p2, v3}, Ltv/emby/embyatv/util/LogReporter;->sendRequest(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 73
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v3, "Error sending log"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0, v0}, Ltv/emby/embyatv/util/LogReporter;->createCrashFile(Ltv/emby/embyatv/util/LogReport;)V

    if-eqz p2, :cond_3

    .line 76
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_3
    :goto_2
    return-void
.end method
