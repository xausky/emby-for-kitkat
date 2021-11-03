.class public Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Priority;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Visibility;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_DISMISS:Ljava/lang/String; = "com.google.android.exoplayer.dismiss"

.field public static final ACTION_FAST_FORWARD:Ljava/lang/String; = "com.google.android.exoplayer.ffwd"

.field public static final ACTION_NEXT:Ljava/lang/String; = "com.google.android.exoplayer.next"

.field public static final ACTION_PAUSE:Ljava/lang/String; = "com.google.android.exoplayer.pause"

.field public static final ACTION_PLAY:Ljava/lang/String; = "com.google.android.exoplayer.play"

.field public static final ACTION_PREVIOUS:Ljava/lang/String; = "com.google.android.exoplayer.prev"

.field public static final ACTION_REWIND:Ljava/lang/String; = "com.google.android.exoplayer.rewind"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.google.android.exoplayer.stop"

.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field public static final EXTRA_INSTANCE_ID:Ljava/lang/String; = "INSTANCE_ID"

.field private static final MAX_POSITION_FOR_SEEK_TO_PREVIOUS:J = 0xbb8L

.field private static final MSG_START_OR_UPDATE_NOTIFICATION:I = 0x0

.field private static final MSG_UPDATE_NOTIFICATION_BITMAP:I = 0x1

.field private static instanceIdCounter:I


# instance fields
.field private badgeIconType:I

.field private builder:Landroidx/core/app/NotificationCompat$Builder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private builderActions:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final channelId:Ljava/lang/String;

.field private color:I

.field private colorized:Z

.field private final context:Landroid/content/Context;

.field private controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

.field private currentNotificationTag:I

.field private final customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final customActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private defaults:I

.field private final dismissPendingIntent:Landroid/app/PendingIntent;

.field private fastForwardMs:J

.field private final instanceId:I

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isNotificationStarted:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

.field private mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

.field private final notificationId:I

.field private notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field private final playbackActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private player:Lcom/google/android/exoplayer2/Player;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final playerListener:Lcom/google/android/exoplayer2/Player$EventListener;

.field private priority:I

.field private rewindMs:J

.field private smallIconResourceId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private useChronometer:Z

.field private useNavigationActions:Z

.field private useNavigationActionsInCompactView:Z

.field private usePlayPauseActions:Z

.field private useStopAction:Z

.field private visibility:I

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 529
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;)V
    .locals 7
    .param p5    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 583
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;)V
    .locals 7
    .param p5    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 554
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;)V
    .locals 0
    .param p5    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 612
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    .line 613
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->channelId:Ljava/lang/String;

    .line 614
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    .line 615
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 616
    iput-object p5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    .line 617
    iput-object p6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    .line 618
    new-instance p2, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 619
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 620
    sget p2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceIdCounter:I

    add-int/lit8 p3, p2, 0x1

    sput p3, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceIdCounter:I

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    .line 624
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/google/android/exoplayer2/ui/-$$Lambda$PlayerNotificationManager$S3i9ukqX74X9NHVfovI_cIquQsY;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$PlayerNotificationManager$S3i9ukqX74X9NHVfovI_cIquQsY;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    .line 623
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    .line 625
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 626
    new-instance p2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playerListener:Lcom/google/android/exoplayer2/Player$EventListener;

    .line 627
    new-instance p2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    .line 628
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    const/4 p2, 0x1

    .line 629
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    .line 630
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    .line 631
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    .line 632
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    const/4 p3, 0x0

    .line 633
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    .line 634
    sget p4, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_small_icon:I

    iput p4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    .line 635
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    const/4 p3, -0x1

    .line 636
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    const-wide/16 p3, 0x3a98

    .line 637
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    const-wide/16 p3, 0x1388

    .line 638
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    .line 639
    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    .line 640
    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    .line 643
    iget p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createPlaybackActions(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    .line 644
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 645
    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p4, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 647
    iget p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    .line 649
    invoke-interface {p6, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;->createCustomActions(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    .line 650
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    .line 651
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 652
    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p4, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p2, "com.google.android.exoplayer.dismiss"

    .line 654
    iget p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    invoke-static {p2, p1, p3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->dismissPendingIntent:Landroid/app/PendingIntent;

    .line 655
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    const-string p2, "com.google.android.exoplayer.dismiss"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->postUpdateNotificationBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ControlDispatcher;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->previous(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewind(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForward(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->next(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Z)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopNotification(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Ljava/util/Map;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->postStartOrUpdateNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I
    .locals 0

    .line 131
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/PlaybackPreparer;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/Player;IJ)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    return-void
.end method

.method private static createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "INSTANCE_ID"

    .line 1372
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    .line 1373
    invoke-static {p1, p2, p0, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static createPlaybackActions(Landroid/content/Context;I)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 1323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "com.google.android.exoplayer.play"

    .line 1324
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_play:I

    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    .line 1328
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.exoplayer.play"

    .line 1329
    invoke-static {v5, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1324
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.exoplayer.pause"

    .line 1330
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_pause:I

    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    .line 1334
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.exoplayer.pause"

    .line 1335
    invoke-static {v5, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1330
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.exoplayer.stop"

    .line 1336
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_stop:I

    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_stop_description:I

    .line 1340
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.exoplayer.stop"

    .line 1341
    invoke-static {v5, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1336
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.exoplayer.rewind"

    .line 1342
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_rewind:I

    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_rewind_description:I

    .line 1346
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.exoplayer.rewind"

    .line 1347
    invoke-static {v5, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1342
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.exoplayer.ffwd"

    .line 1348
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_fastforward:I

    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fastforward_description:I

    .line 1352
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.exoplayer.ffwd"

    .line 1353
    invoke-static {v5, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1348
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.exoplayer.prev"

    .line 1354
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_previous:I

    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_previous_description:I

    .line 1358
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.exoplayer.prev"

    .line 1359
    invoke-static {v5, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1354
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.exoplayer.next"

    .line 1360
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_next:I

    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_next_description:I

    .line 1364
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.exoplayer.next"

    .line 1365
    invoke-static {v5, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1360
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createWithNotificationChannel(Landroid/content/Context;Ljava/lang/String;IIILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 454
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;III)V

    .line 456
    new-instance p2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-direct {p2, p0, p1, p4, p5}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)V

    return-object p2
.end method

.method public static createWithNotificationChannel(Landroid/content/Context;Ljava/lang/String;IIILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .locals 7
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 505
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;III)V

    .line 507
    new-instance p2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;)V

    return-object p2
.end method

.method public static createWithNotificationChannel(Landroid/content/Context;Ljava/lang/String;IILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    .line 417
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createWithNotificationChannel(Landroid/content/Context;Ljava/lang/String;IIILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public static createWithNotificationChannel(Landroid/content/Context;Ljava/lang/String;IILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .locals 7
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 472
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createWithNotificationChannel(Landroid/content/Context;Ljava/lang/String;IIILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    move-result-object p0

    return-object p0
.end method

.method private fastForward(Lcom/google/android/exoplayer2/Player;)V
    .locals 4

    .line 1265
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isCurrentWindowSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1266
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->seekToOffset(Lcom/google/android/exoplayer2/Player;J)V

    :cond_0
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1304
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1311
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->currentNotificationTag:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->startOrUpdateNotification(Lcom/google/android/exoplayer2/Player;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1306
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_0

    .line 1307
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->startOrUpdateNotification(Lcom/google/android/exoplayer2/Player;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Landroid/os/Message;)Z
    .locals 0

    .line 624
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method private next(Lcom/google/android/exoplayer2/Player;)V
    .locals 6

    .line 1245
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 1246
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1249
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    .line 1250
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getNextWindowIndex()I

    move-result v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_1

    .line 1252
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    goto :goto_0

    .line 1253
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_2

    .line 1254
    invoke-direct {p0, p1, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private postStartOrUpdateNotification()V
    .locals 2

    .line 1291
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private postUpdateNotificationBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 1297
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1298
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1300
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private previous(Lcom/google/android/exoplayer2/Player;)V
    .locals 6

    .line 1228
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 1229
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1232
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    .line 1233
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1234
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPreviousWindowIndex()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1236
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v2, :cond_2

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1238
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    .line 1240
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private rewind(Lcom/google/android/exoplayer2/Player;)V
    .locals 4

    .line 1259
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isCurrentWindowSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1260
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    neg-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->seekToOffset(Lcom/google/android/exoplayer2/Player;J)V

    :cond_0
    return-void
.end method

.method private seekTo(Lcom/google/android/exoplayer2/Player;IJ)V
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    return-void
.end method

.method private seekToOffset(Lcom/google/android/exoplayer2/Player;J)V
    .locals 4

    .line 1271
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 1272
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide p2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 1274
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p2, 0x0

    .line 1276
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 1277
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    return-void
.end method

.method private static setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1379
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private shouldShowPauseButton(Lcom/google/android/exoplayer2/Player;)Z
    .locals 3

    .line 1285
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 1286
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1287
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private startOrUpdateNotification(Lcom/google/android/exoplayer2/Player;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 988
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->getOngoing(Lcom/google/android/exoplayer2/Player;)Z

    move-result v0

    .line 989
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createNotification(Lcom/google/android/exoplayer2/Player;Landroidx/core/app/NotificationCompat$Builder;ZLandroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 990
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 991
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopNotification(Z)V

    return-void

    .line 994
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 995
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-virtual {p2, v1, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 996
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 997
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    .line 998
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 999
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    if-eqz p2, :cond_1

    .line 1000
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-interface {p2, v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;->onNotificationStarted(ILandroid/app/Notification;)V

    .line 1003
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    if-eqz p2, :cond_2

    .line 1005
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-interface {p2, v1, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;->onNotificationPosted(ILandroid/app/Notification;Z)V

    :cond_2
    return-void
.end method

.method private stopNotification(Z)V
    .locals 2

    .line 1010
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1011
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    .line 1012
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1013
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 1014
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1015
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;->onNotificationCancelled(IZ)V

    .line 1017
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;->onNotificationCancelled(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createNotification(Lcom/google/android/exoplayer2/Player;Landroidx/core/app/NotificationCompat$Builder;ZLandroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 8
    .param p2    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1042
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1043
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;

    if-nez v0, :cond_1

    .line 1044
    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builderActions:Ljava/util/ArrayList;

    return-object v1

    .line 1048
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->getActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;

    move-result-object v0

    .line 1049
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1050
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1051
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1052
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    .line 1053
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    .line 1054
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    .line 1055
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    :goto_1
    if-eqz v6, :cond_3

    .line 1057
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 1061
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builderActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1062
    :cond_5
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->channelId:Ljava/lang/String;

    invoke-direct {p2, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1063
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builderActions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 1064
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 1065
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {p2, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1069
    :cond_6
    new-instance v3, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v3}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 1070
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v5, :cond_7

    .line 1071
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v3, v5}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 1073
    :cond_7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->getActionIndicesForCompactView(Ljava/util/List;Lcom/google/android/exoplayer2/Player;)[I

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    xor-int/lit8 v0, p3, 0x1

    .line 1075
    invoke-virtual {v3, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowCancelButton(Z)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 1076
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->dismissPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->setCancelButtonIntent(Landroid/app/PendingIntent;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 1077
    invoke-virtual {p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->dismissPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1083
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    .line 1084
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1085
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    .line 1086
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    .line 1087
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    .line 1088
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    .line 1089
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    .line 1090
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    .line 1091
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 1094
    sget p3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_8

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    if-eqz p3, :cond_8

    .line 1096
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1097
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result p3

    if-nez p3, :cond_8

    .line 1098
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isCurrentWindowDynamic()Z

    move-result p3

    if-nez p3, :cond_8

    .line 1099
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p3

    iget p3, p3, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_8

    .line 1101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 1102
    invoke-virtual {p3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 1103
    invoke-virtual {p3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 1105
    :cond_8
    invoke-virtual {p2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 1109
    :goto_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentContentTitle(Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1110
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentContentText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1111
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentSubText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-nez p4, :cond_9

    .line 1113
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    new-instance p4, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->currentNotificationTag:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->currentNotificationTag:I

    invoke-direct {p4, p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V

    .line 1114
    invoke-interface {p3, p1, p4}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentLargeIcon(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1117
    :cond_9
    invoke-static {p2, p4}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;)V

    .line 1118
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->createCurrentContentIntent(Lcom/google/android/exoplayer2/Player;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p2
.end method

.method protected getActionIndicesForCompactView(Ljava/util/List;Lcom/google/android/exoplayer2/Player;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/Player;",
            ")[I"
        }
    .end annotation

    const-string v0, "com.google.android.exoplayer.pause"

    .line 1196
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "com.google.android.exoplayer.play"

    .line 1197
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1198
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActionsInCompactView:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const-string v2, "com.google.android.exoplayer.prev"

    .line 1199
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 1200
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActionsInCompactView:Z

    if-eqz v4, :cond_1

    const-string v4, "com.google.android.exoplayer.next"

    .line 1201
    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    const/4 v4, 0x3

    .line 1203
    new-array v4, v4, [I

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    aput v2, v4, v5

    const/4 v5, 0x1

    .line 1208
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->shouldShowPauseButton(Lcom/google/android/exoplayer2/Player;)Z

    move-result p2

    if-eq v0, v3, :cond_3

    if-eqz p2, :cond_3

    add-int/lit8 p2, v5, 0x1

    .line 1210
    aput v0, v4, v5

    goto :goto_2

    :cond_3
    if-eq v1, v3, :cond_4

    if-nez p2, :cond_4

    add-int/lit8 p2, v5, 0x1

    .line 1212
    aput v1, v4, v5

    goto :goto_2

    :cond_4
    move p2, v5

    :goto_2
    if-eq p1, v3, :cond_5

    add-int/lit8 v0, p2, 0x1

    .line 1215
    aput p1, v4, p2

    move p2, v0

    .line 1217
    :cond_5
    invoke-static {v4, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    return-object p1
.end method

.method protected getActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Player;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1147
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 1148
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1149
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1150
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1151
    :goto_1
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 1152
    :goto_2
    iget-wide v7, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    cmp-long v4, v7, v5

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 1153
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v5, :cond_4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    move v1, v2

    move v2, v3

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1156
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    const-string v0, "com.google.android.exoplayer.prev"

    .line 1158
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v2, :cond_8

    const-string v0, "com.google.android.exoplayer.rewind"

    .line 1161
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    if-eqz v0, :cond_a

    .line 1164
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->shouldShowPauseButton(Lcom/google/android/exoplayer2/Player;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.google.android.exoplayer.pause"

    .line 1165
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const-string v0, "com.google.android.exoplayer.play"

    .line 1167
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    const-string v0, "com.google.android.exoplayer.ffwd"

    .line 1171
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    const-string v0, "com.google.android.exoplayer.next"

    .line 1174
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    if-eqz v0, :cond_d

    .line 1177
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;->getCustomActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1179
    :cond_d
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useStopAction:Z

    if-eqz p1, :cond_e

    const-string p1, "com.google.android.exoplayer.stop"

    .line 1180
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object v3
.end method

.method protected getOngoing(Lcom/google/android/exoplayer2/Player;)Z
    .locals 2

    .line 1222
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1224
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public invalidate()V
    .locals 1

    .line 982
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-eqz v0, :cond_0

    .line 983
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->postStartOrUpdateNotification()V

    :cond_0
    return-void
.end method

.method public final setBadgeIconType(I)V
    .locals 1

    .line 829
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 839
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 836
    :pswitch_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    .line 841
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setColor(I)V
    .locals 1

    .line 881
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    if-eq v0, p1, :cond_0

    .line 882
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    .line 883
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setColorized(Z)V
    .locals 1

    .line 853
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    if-eq v0, p1, :cond_0

    .line 854
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    .line 855
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    return-void
.end method

.method public final setDefaults(I)V
    .locals 1

    .line 867
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    if-eq v0, p1, :cond_0

    .line 868
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    .line 869
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setFastForwardIncrementMs(J)V
    .locals 2

    .line 734
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 737
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    .line 738
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void
.end method

.method public final setMediaSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 817
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setNotificationListener(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/PlaybackPreparer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 698
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;

    return-void
.end method

.method public final setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 673
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_2

    .line 675
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 674
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_3

    return-void

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_4

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playerListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    if-nez p1, :cond_4

    .line 682
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopNotification(Z)V

    .line 685
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_5

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playerListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 688
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->postStartOrUpdateNotification()V

    :cond_5
    return-void
.end method

.method public final setPriority(I)V
    .locals 1

    .line 898
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 910
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 907
    :pswitch_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    .line 912
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setRewindIncrementMs(J)V
    .locals 2

    .line 748
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 751
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    .line 752
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void
.end method

.method public final setSmallIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 923
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    if-eq v0, p1, :cond_0

    .line 924
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    .line 925
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setUseChronometer(Z)V
    .locals 1

    .line 948
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    if-eq v0, p1, :cond_0

    .line 949
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    .line 950
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setUseNavigationActions(Z)V
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    if-eq v0, p1, :cond_0

    .line 762
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    .line 763
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setUseNavigationActionsInCompactView(Z)V
    .locals 1

    .line 778
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActionsInCompactView:Z

    if-eq v0, p1, :cond_0

    .line 779
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActionsInCompactView:Z

    .line 780
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setUsePlayPauseActions(Z)V
    .locals 1

    .line 790
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    if-eq v0, p1, :cond_0

    .line 791
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    .line 792
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setUseStopAction(Z)V
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useStopAction:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 805
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useStopAction:Z

    .line 806
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    .line 965
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 975
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 972
    :pswitch_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    .line 977
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
