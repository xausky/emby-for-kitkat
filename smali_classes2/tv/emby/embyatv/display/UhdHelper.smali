.class public Ltv/emby/embyatv/display/UhdHelper;
.super Ljava/lang/Object;
.source "UhdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;,
        Ltv/emby/embyatv/display/UhdHelper$WorkHandler;
    }
.end annotation


# static fields
.field public static final HEIGHT_UHD:I = 0x870

.field private static final INTERSTITIAL_FADED_BROADCAST_MSG:I = 0x4

.field private static final INTERSTITIAL_TIMEOUT_MSG:I = 0x5

.field public static final MODESWITCH_OVERLAY_DISABLE:Ljava/lang/String; = "com.amazon.tv.notification.modeswitch_overlay.action.DISABLE"

.field public static final MODESWITCH_OVERLAY_ENABLE:Ljava/lang/String; = "com.amazon.tv.notification.modeswitch_overlay.action.ENABLE"

.field public static final MODESWITCH_OVERLAY_EXTRA_STATE:Ljava/lang/String; = "com.amazon.tv.notification.modeswitch_overlay.extra.STATE"

.field public static final MODESWITCH_OVERLAY_STATE_CHANGED:Ljava/lang/String; = "com.amazon.tv.notification.modeswitch_overlay.action.STATE_CHANGED"

.field private static final MODE_CHANGED_MSG:I = 0x1

.field private static final MODE_CHANGE_TIMEOUT_MSG:I = 0x2

.field public static final OVERLAY_STATE_DISMISSED:I = 0x0

.field private static final SEND_CALLBACK_WITH_SUPPLIED_RESULT:I = 0x3

.field public static final SET_MODE_TIMEOUT_DELAY_MS:I = 0x3a98

.field public static final SHOW_INTERSTITIAL_TIMEOUT_DELAY_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UhdHelper"

.field public static final version:Ljava/lang/String; = "v1.1"


# instance fields
.field private currentOverlayStatus:I

.field private isInterstitialFadeReceived:Z

.field isReceiversRegistered:Z

.field mContext:Landroid/content/Context;

.field mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mInternalDisplay:Ltv/emby/embyatv/display/Display;

.field private mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListener:Ltv/emby/embyatv/display/UhdHelperListener;

.field private mTargetWindow:Landroid/view/Window;

.field private mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

.field private overlayStateChangeReceiver:Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;

.field private sDisplayClassName:Ljava/lang/String;

.field private sGetModeIdMethodName:Ljava/lang/String;

.field private sGetModeMethodName:Ljava/lang/String;

.field private sGetPhysicalHeightMethodName:Ljava/lang/String;

.field private sGetPhysicalWidthMethodName:Ljava/lang/String;

.field private sGetRefreshRateMethodName:Ljava/lang/String;

.field private sPreferredDisplayModeIdFieldName:Ljava/lang/String;

.field private sSupportedModesMethodName:Ljava/lang/String;

.field private showInterstitial:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.view.Display"

    .line 31
    iput-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->sDisplayClassName:Ljava/lang/String;

    const-string v0, "getSupportedModes"

    .line 32
    iput-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->sSupportedModesMethodName:Ljava/lang/String;

    const-string v0, "preferredDisplayModeId"

    .line 33
    iput-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->sPreferredDisplayModeIdFieldName:Ljava/lang/String;

    const-string v0, "getMode"

    .line 34
    iput-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetModeMethodName:Ljava/lang/String;

    const-string v0, "getModeId"

    .line 35
    iput-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetModeIdMethodName:Ljava/lang/String;

    const-string v0, "getPhysicalHeight"

    .line 36
    iput-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetPhysicalHeightMethodName:Ljava/lang/String;

    const-string v0, "getPhysicalWidth"

    .line 37
    iput-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetPhysicalWidthMethodName:Ljava/lang/String;

    const-string v0, "getRefreshRate"

    .line 38
    iput-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetRefreshRateMethodName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/display/UhdHelper;->showInterstitial:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/display/UhdHelper;->isInterstitialFadeReceived:Z

    .line 75
    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mContext:Landroid/content/Context;

    .line 76
    new-instance p1, Ltv/emby/embyatv/display/Display;

    invoke-direct {p1}, Ltv/emby/embyatv/display/Display;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mInternalDisplay:Ltv/emby/embyatv/display/Display;

    .line 77
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance p1, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;-><init>(Ltv/emby/embyatv/display/UhdHelper;Landroid/os/Looper;)V

    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    .line 79
    new-instance p1, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;-><init>(Ltv/emby/embyatv/display/UhdHelper;Ltv/emby/embyatv/display/UhdHelper$1;)V

    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->overlayStateChangeReceiver:Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;

    .line 80
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 81
    iput-boolean v0, p0, Ltv/emby/embyatv/display/UhdHelper;->isReceiversRegistered:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/display/UhdHelper;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Ltv/emby/embyatv/display/UhdHelper;->isInterstitialFadeReceived:Z

    return p0
.end method

.method static synthetic access$202(Ltv/emby/embyatv/display/UhdHelper;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Ltv/emby/embyatv/display/UhdHelper;->isInterstitialFadeReceived:Z

    return p1
.end method

.method static synthetic access$300(Ltv/emby/embyatv/display/UhdHelper;ILjava/lang/reflect/Field;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/display/UhdHelper;->initModeChange(ILjava/lang/reflect/Field;)V

    return-void
.end method

.method static synthetic access$400(Ltv/emby/embyatv/display/UhdHelper;)I
    .locals 0

    .line 27
    iget p0, p0, Ltv/emby/embyatv/display/UhdHelper;->currentOverlayStatus:I

    return p0
.end method

.method static synthetic access$402(Ltv/emby/embyatv/display/UhdHelper;I)I
    .locals 0

    .line 27
    iput p1, p0, Ltv/emby/embyatv/display/UhdHelper;->currentOverlayStatus:I

    return p1
.end method

.method static synthetic access$500(Ltv/emby/embyatv/display/UhdHelper;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ltv/emby/embyatv/display/UhdHelper;->hideOptimizingOverlay()V

    return-void
.end method

.method static synthetic access$600(Ltv/emby/embyatv/display/UhdHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Ltv/emby/embyatv/display/UhdHelper;->mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/display/UhdHelper;)Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;
    .locals 0

    .line 27
    iget-object p0, p0, Ltv/emby/embyatv/display/UhdHelper;->overlayStateChangeReceiver:Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/display/UhdHelper;)Ltv/emby/embyatv/display/UhdHelper$WorkHandler;
    .locals 0

    .line 27
    iget-object p0, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    return-object p0
.end method

.method private convertReturnedModeToInternalMode(Ljava/lang/Object;)Ltv/emby/embyatv/display/Display$Mode;
    .locals 7

    .line 248
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 249
    iget-object v1, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetModeIdMethodName:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    iget-object v3, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetPhysicalWidthMethodName:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 251
    iget-object v4, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetPhysicalHeightMethodName:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 252
    iget-object v5, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetRefreshRateMethodName:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 253
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mInternalDisplay:Ltv/emby/embyatv/display/Display;

    invoke-virtual {v0, v1, v3, v4, p1}, Ltv/emby/embyatv/display/Display;->getModeInstance(IIIF)Ltv/emby/embyatv/display/Display$Mode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    sget-object v0, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v1, "error converting"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getCurrentDisplay()Landroid/view/Display;
    .locals 3

    .line 291
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 293
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 294
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 299
    aget-object v0, v0, v1

    return-object v0

    .line 295
    :cond_2
    :goto_0
    sget-object v0, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v2, "ERROR on device to get the display"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private hideOptimizingOverlay()V
    .locals 2

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.tv.notification.modeswitch_overlay.action.DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Ltv/emby/embyatv/display/UhdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 478
    sget-object v0, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v1, "Sending the broadcast to hide display overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initModeChange(ILjava/lang/reflect/Field;)V
    .locals 3

    .line 442
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mTargetWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez p2, :cond_0

    .line 445
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 446
    iget-object v1, p0, Ltv/emby/embyatv/display/UhdHelper;->sPreferredDisplayModeIdFieldName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 449
    :cond_0
    :goto_0
    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 450
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mTargetWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    iget-object p2, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 453
    :goto_1
    sget-object p2, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    iget-object p2, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2, v2, v1}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private isAmazonFireTVDevice()Z
    .locals 3

    .line 209
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 210
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "AFT"

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Amazon"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showOptimizingOverlay()V
    .locals 2

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.tv.notification.modeswitch_overlay.action.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Ltv/emby/embyatv/display/UhdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    sget-object v0, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v1, "Sending the broadcast to display overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getMode()Ltv/emby/embyatv/display/Display$Mode;
    .locals 4

    .line 222
    invoke-direct {p0}, Ltv/emby/embyatv/display/UhdHelper;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 227
    :cond_0
    :try_start_0
    iget-object v2, p0, Ltv/emby/embyatv/display/UhdHelper;->sDisplayClassName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 228
    iget-object v3, p0, Ltv/emby/embyatv/display/UhdHelper;->sGetModeMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 229
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    invoke-direct {p0, v0}, Ltv/emby/embyatv/display/UhdHelper;->convertReturnedModeToInternalMode(Ljava/lang/Object;)Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 232
    sget-object v2, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v2, "Current Mode is not present in supported Modes"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getSupportedModes()[Ltv/emby/embyatv/display/Display$Mode;
    .locals 7

    const/4 v0, 0x0

    .line 270
    :try_start_0
    iget-object v1, p0, Ltv/emby/embyatv/display/UhdHelper;->sDisplayClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 271
    iget-object v2, p0, Ltv/emby/embyatv/display/UhdHelper;->sSupportedModesMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 272
    invoke-direct {p0}, Ltv/emby/embyatv/display/UhdHelper;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 273
    array-length v2, v1

    new-array v2, v2, [Ltv/emby/embyatv/display/Display$Mode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :try_start_1
    array-length v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 276
    invoke-direct {p0, v5}, Ltv/emby/embyatv/display/UhdHelper;->convertReturnedModeToInternalMode(Ljava/lang/Object;)Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 279
    :goto_1
    sget-object v0, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2
.end method

.method public registerModeChangeListener(Ltv/emby/embyatv/display/UhdHelperListener;)V
    .locals 0

    .line 490
    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mListener:Ltv/emby/embyatv/display/UhdHelperListener;

    return-void
.end method

.method public setPreferredDisplayModeId(Landroid/view/Window;IZ)V
    .locals 9

    .line 327
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 331
    iget-object v1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    iget-object v2, p0, Ltv/emby/embyatv/display/UhdHelper;->mListener:Ltv/emby/embyatv/display/UhdHelperListener;

    invoke-static {v1, v2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->access$900(Ltv/emby/embyatv/display/UhdHelper$WorkHandler;Ltv/emby/embyatv/display/UhdHelperListener;)V

    .line 333
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-ge v1, v4, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    .line 336
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 339
    :pswitch_0
    invoke-direct {p0}, Ltv/emby/embyatv/display/UhdHelper;->isAmazonFireTVDevice()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v1, :cond_2

    .line 348
    sget-object p1, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to set preferred Display mode on an unsupported device: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    iget-object p2, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    invoke-virtual {p2, v5, v3, v3, v4}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 352
    :cond_2
    invoke-direct {p0}, Ltv/emby/embyatv/display/UhdHelper;->isAmazonFireTVDevice()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p3, 0x0

    .line 356
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    sget-object p1, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    const-string p2, "setPreferredDisplayModeId is already in progress! Cannot set another while it is in progress"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    iget-object p2, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    invoke-virtual {p2, v5, v4}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 363
    :cond_4
    invoke-virtual {p0}, Ltv/emby/embyatv/display/UhdHelper;->getMode()Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 364
    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result v1

    if-ne v1, p2, :cond_5

    goto/16 :goto_8

    .line 371
    :cond_5
    invoke-virtual {p0}, Ltv/emby/embyatv/display/UhdHelper;->getSupportedModes()[Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0

    .line 374
    array-length v1, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_8

    aget-object v7, v0, v6

    .line 375
    invoke-virtual {v7}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result v8

    if-ne v8, p2, :cond_7

    .line 376
    invoke-virtual {v7}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v0

    const/16 v1, 0x870

    if-lt v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    move v1, v0

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    if-nez v0, :cond_9

    .line 382
    sget-object p1, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    const-string p2, "Requested mode id not among the supported Mode Id."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    iget-object p2, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    invoke-virtual {p2, v5, v3, v3, v4}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 389
    :cond_9
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 391
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    invoke-virtual {v0, p2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->setExpectedMode(I)V

    .line 392
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Ltv/emby/embyatv/display/UhdHelper;->overlayStateChangeReceiver:Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.amazon.tv.notification.modeswitch_overlay.action.STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    new-instance v0, Ltv/emby/embyatv/display/UhdHelper$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/display/UhdHelper$1;-><init>(Ltv/emby/embyatv/display/UhdHelper;)V

    iput-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 409
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v6, p0, Ltv/emby/embyatv/display/UhdHelper;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v7, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    invoke-virtual {v0, v6, v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 410
    iput-boolean v3, p0, Ltv/emby/embyatv/display/UhdHelper;->isReceiversRegistered:Z

    .line 412
    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mTargetWindow:Landroid/view/Window;

    if-eqz p3, :cond_a

    if-eqz v1, :cond_a

    const/4 p1, 0x1

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    .line 413
    :goto_6
    iput-boolean p1, p0, Ltv/emby/embyatv/display/UhdHelper;->showInterstitial:Z

    .line 416
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mTargetWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 418
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 421
    :try_start_0
    iget-object p3, p0, Ltv/emby/embyatv/display/UhdHelper;->sPreferredDisplayModeIdFieldName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    iget-boolean p3, p0, Ltv/emby/embyatv/display/UhdHelper;->showInterstitial:Z

    if-eqz p3, :cond_b

    .line 430
    iput-boolean v2, p0, Ltv/emby/embyatv/display/UhdHelper;->isInterstitialFadeReceived:Z

    .line 431
    invoke-direct {p0}, Ltv/emby/embyatv/display/UhdHelper;->showOptimizingOverlay()V

    .line 432
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    iget-object p2, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 434
    :cond_b
    invoke-direct {p0, p2, p1}, Ltv/emby/embyatv/display/UhdHelper;->initModeChange(ILjava/lang/reflect/Field;)V

    :goto_7
    return-void

    :catch_0
    move-exception p1

    .line 423
    sget-object p2, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    iget-object p2, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    invoke-virtual {p2, v5, v3, v3, v4}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 365
    :cond_c
    :goto_8
    sget-object p1, Ltv/emby/embyatv/display/UhdHelper;->TAG:Ljava/lang/String;

    const-string p2, "Current mode id same as mode id requested or is Null. Aborting."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    iget-object p2, p0, Ltv/emby/embyatv/display/UhdHelper;->mWorkHandler:Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    invoke-virtual {p2, v5, v3, v3, v0}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterDisplayModeChangeListener(Ltv/emby/embyatv/display/UhdHelperListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 498
    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper;->mListener:Ltv/emby/embyatv/display/UhdHelperListener;

    return-void
.end method
