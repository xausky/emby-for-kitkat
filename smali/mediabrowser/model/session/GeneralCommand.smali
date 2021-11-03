.class public Lmediabrowser/model/session/GeneralCommand;
.super Ljava/lang/Object;
.source "GeneralCommand.java"


# instance fields
.field private Arguments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ControllingUserId:Ljava/lang/String;

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/session/GeneralCommand;->setArguments(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final getArguments()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lmediabrowser/model/session/GeneralCommand;->Arguments:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getControllingUserId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/session/GeneralCommand;->ControllingUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/session/GeneralCommand;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setArguments(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lmediabrowser/model/session/GeneralCommand;->Arguments:Ljava/util/HashMap;

    return-void
.end method

.method public final setControllingUserId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/session/GeneralCommand;->ControllingUserId:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/session/GeneralCommand;->Name:Ljava/lang/String;

    return-void
.end method
