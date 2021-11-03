.class final Lcom/bumptech/glide/load/engine/executor/RuntimeCompat;
.super Ljava/lang/Object;
.source "RuntimeCompat.java"


# static fields
.field private static final CPU_LOCATION:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final CPU_NAME_REGEX:Ljava/lang/String; = "cpu[0-9]+"

.field private static final TAG:Ljava/lang/String; = "GlideRuntimeCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static availableProcessors()I
    .locals 3

    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 29
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat;->getCoreCountPre17()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getCoreCountPre17()I
    .locals 4

    .line 49
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 51
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "cpu[0-9]+"

    .line 52
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 53
    new-instance v3, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;

    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "GlideRuntimeCompat"

    const/4 v3, 0x6

    .line 60
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GlideRuntimeCompat"

    const-string v3, "Failed to calculate accurate cpu count"

    .line 61
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 66
    array-length v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 64
    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method
