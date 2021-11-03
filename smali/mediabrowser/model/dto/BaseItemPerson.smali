.class public Lmediabrowser/model/dto/BaseItemPerson;
.super Ljava/lang/Object;
.source "BaseItemPerson.java"


# instance fields
.field private Id:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private PrimaryImageTag:Ljava/lang/String;

.field private Role:Ljava/lang/String;

.field private Type:Ljava/lang/String;


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

    .line 94
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemPerson;->getPrimaryImageTag()Ljava/lang/String;

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
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemPerson;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemPerson;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemPerson;->PrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemPerson;->Role:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemPerson;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemPerson;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemPerson;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemPerson;->PrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setRole(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemPerson;->Role:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemPerson;->Type:Ljava/lang/String;

    return-void
.end method
