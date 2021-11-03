.class Ltv/emby/embyatv/eventhandling/TvApiEventListener$1;
.super Ljava/lang/Object;
.source "TvApiEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/eventhandling/TvApiEventListener;->onMessageCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/MessageCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/eventhandling/TvApiEventListener;

.field final synthetic val$command:Lmediabrowser/model/session/MessageCommand;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/eventhandling/TvApiEventListener;Lmediabrowser/model/session/MessageCommand;)V
    .locals 0

    .line 103
    iput-object p1, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener$1;->this$0:Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    iput-object p2, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener$1;->val$command:Lmediabrowser/model/session/MessageCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener$1;->val$command:Lmediabrowser/model/session/MessageCommand;

    invoke-virtual {v1}, Lmediabrowser/model/session/MessageCommand;->getHeader()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener$1;->val$command:Lmediabrowser/model/session/MessageCommand;

    invoke-virtual {v1}, Lmediabrowser/model/session/MessageCommand;->getHeader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Remote Message"

    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener$1;->val$command:Lmediabrowser/model/session/MessageCommand;

    invoke-virtual {v2}, Lmediabrowser/model/session/MessageCommand;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/TvApp;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
