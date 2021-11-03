.class public interface abstract Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationListener"
.end annotation


# virtual methods
.method public abstract onNotificationCancelled(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onNotificationCancelled(IZ)V
.end method

.method public abstract onNotificationPosted(ILandroid/app/Notification;Z)V
.end method

.method public abstract onNotificationStarted(ILandroid/app/Notification;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
