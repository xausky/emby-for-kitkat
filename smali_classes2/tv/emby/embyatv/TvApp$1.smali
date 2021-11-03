.class Ltv/emby/embyatv/TvApp$1;
.super Ljava/lang/Object;
.source "TvApp.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/TvApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/TvApp;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/TvApp;)V
    .locals 0

    .line 182
    iput-object p1, p0, Ltv/emby/embyatv/TvApp$1;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "EmbyAndroidTv"

    const-string v0, "Uncaught exception is: "

    .line 185
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
