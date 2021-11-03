.class public Lmediabrowser/model/session/MessageCommand;
.super Ljava/lang/Object;
.source "MessageCommand.java"


# instance fields
.field private Header:Ljava/lang/String;

.field private Text:Ljava/lang/String;

.field private TimeoutMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeader()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/session/MessageCommand;->Header:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/session/MessageCommand;->Text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeoutMs()Ljava/lang/Long;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/session/MessageCommand;->TimeoutMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final setHeader(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/session/MessageCommand;->Header:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/session/MessageCommand;->Text:Ljava/lang/String;

    return-void
.end method

.method public final setTimeoutMs(Ljava/lang/Long;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/session/MessageCommand;->TimeoutMs:Ljava/lang/Long;

    return-void
.end method
