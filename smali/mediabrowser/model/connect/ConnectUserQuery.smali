.class public Lmediabrowser/model/connect/ConnectUserQuery;
.super Ljava/lang/Object;
.source "ConnectUserQuery.java"


# instance fields
.field private Email:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private NameOrEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectUserQuery;->Email:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectUserQuery;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectUserQuery;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameOrEmail()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectUserQuery;->NameOrEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectUserQuery;->Email:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectUserQuery;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectUserQuery;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setNameOrEmail(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectUserQuery;->NameOrEmail:Ljava/lang/String;

    return-void
.end method
