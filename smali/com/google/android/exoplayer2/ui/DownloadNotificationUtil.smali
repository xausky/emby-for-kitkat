.class public final Lcom/google/android/exoplayer2/ui/DownloadNotificationUtil;
.super Ljava/lang/Object;
.source "DownloadNotificationUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDownloadCompletedNotification(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildDownloadCompletedNotification(ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static buildDownloadFailedNotification(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildDownloadFailedNotification(ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgressNotification(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildProgressNotification(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
