.class public Lmediabrowser/model/connect/ConnectUser;
.super Ljava/lang/Object;
.source "ConnectUser.java"


# instance fields
.field private Email:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private ImageUrl:Ljava/lang/String;

.field private IsActive:Z

.field private Name:Ljava/lang/String;


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
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectUser;->Email:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectUser;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectUser;->ImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsActive()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lmediabrowser/model/connect/ConnectUser;->IsActive:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/connect/ConnectUser;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectUser;->Email:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectUser;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectUser;->ImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setIsActive(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lmediabrowser/model/connect/ConnectUser;->IsActive:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/connect/ConnectUser;->Name:Ljava/lang/String;

    return-void
.end method
