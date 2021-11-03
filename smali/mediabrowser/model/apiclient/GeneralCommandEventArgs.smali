.class public Lmediabrowser/model/apiclient/GeneralCommandEventArgs;
.super Ljava/lang/Object;
.source "GeneralCommandEventArgs.java"


# instance fields
.field private Command:Lmediabrowser/model/session/GeneralCommand;

.field private KnownCommandType:Lmediabrowser/model/session/GeneralCommandType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommand()Lmediabrowser/model/session/GeneralCommand;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->Command:Lmediabrowser/model/session/GeneralCommand;

    return-object v0
.end method

.method public final getKnownCommandType()Lmediabrowser/model/session/GeneralCommandType;
    .locals 1

    .line 33
    iget-object v0, p0, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->KnownCommandType:Lmediabrowser/model/session/GeneralCommandType;

    return-object v0
.end method

.method public final setCommand(Lmediabrowser/model/session/GeneralCommand;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->Command:Lmediabrowser/model/session/GeneralCommand;

    return-void
.end method

.method public final setKnownCommandType(Lmediabrowser/model/session/GeneralCommandType;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->KnownCommandType:Lmediabrowser/model/session/GeneralCommandType;

    return-void
.end method
