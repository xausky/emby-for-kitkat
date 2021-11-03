.class public Lmediabrowser/model/apiclient/SessionUpdatesEventArgs;
.super Ljava/lang/Object;
.source "SessionUpdatesEventArgs.java"


# instance fields
.field private Sessions:[Lmediabrowser/model/session/SessionInfoDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSessions()[Lmediabrowser/model/session/SessionInfoDto;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/apiclient/SessionUpdatesEventArgs;->Sessions:[Lmediabrowser/model/session/SessionInfoDto;

    return-object v0
.end method

.method public final setSessions([Lmediabrowser/model/session/SessionInfoDto;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/apiclient/SessionUpdatesEventArgs;->Sessions:[Lmediabrowser/model/session/SessionInfoDto;

    return-void
.end method
