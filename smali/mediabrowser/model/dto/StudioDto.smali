.class public Lmediabrowser/model/dto/StudioDto;
.super Ljava/lang/Object;
.source "StudioDto.java"


# instance fields
.field private Id:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private PrimaryImageTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHasPrimaryImage()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lmediabrowser/model/dto/StudioDto;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lmediabrowser/model/dto/StudioDto;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/dto/StudioDto;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/dto/StudioDto;->PrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmediabrowser/model/dto/StudioDto;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/dto/StudioDto;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/dto/StudioDto;->PrimaryImageTag:Ljava/lang/String;

    return-void
.end method
