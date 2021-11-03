.class public Lmediabrowser/model/dto/NameIdPair;
.super Ljava/lang/Object;
.source "NameIdPair.java"


# instance fields
.field private Id:Ljava/lang/String;

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/dto/NameIdPair;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/dto/NameIdPair;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/dto/NameIdPair;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/dto/NameIdPair;->Name:Ljava/lang/String;

    return-void
.end method
