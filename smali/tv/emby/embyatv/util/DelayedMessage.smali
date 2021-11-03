.class public Ltv/emby/embyatv/util/DelayedMessage;
.super Ljava/lang/Object;
.source "DelayedMessage.java"


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field private message:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x2ee

    .line 22
    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/util/DelayedMessage;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100554

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage;->title:Ljava/lang/String;

    .line 16
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100637

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage;->message:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage;->handler:Landroid/os/Handler;

    .line 26
    new-instance v0, Ltv/emby/embyatv/util/DelayedMessage$1;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/util/DelayedMessage$1;-><init>(Ltv/emby/embyatv/util/DelayedMessage;Landroid/content/Context;)V

    iput-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage;->runnable:Ljava/lang/Runnable;

    .line 32
    iget-object p1, p0, Ltv/emby/embyatv/util/DelayedMessage;->handler:Landroid/os/Handler;

    iget-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage;->runnable:Ljava/lang/Runnable;

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$002(Ltv/emby/embyatv/util/DelayedMessage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 14
    iput-object p1, p0, Ltv/emby/embyatv/util/DelayedMessage;->dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/util/DelayedMessage;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/emby/embyatv/util/DelayedMessage;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/util/DelayedMessage;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/emby/embyatv/util/DelayedMessage;->message:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Cancel()V
    .locals 2

    .line 36
    iget-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/util/DelayedMessage;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
