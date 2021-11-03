.class public Lmediabrowser/model/registration/RegistrationInfo;
.super Ljava/lang/Object;
.source "RegistrationInfo.java"


# instance fields
.field private ExpirationDate:Ljava/util/Date;

.field private IsOverLimit:Z

.field private IsRegistered:Z

.field private IsTrial:Z

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/registration/RegistrationInfo;->ExpirationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/registration/RegistrationInfo;->ExpirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getIsOverLimit()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lmediabrowser/model/registration/RegistrationInfo;->IsOverLimit:Z

    return v0
.end method

.method public final getIsRegistered()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lmediabrowser/model/registration/RegistrationInfo;->IsRegistered:Z

    return v0
.end method

.method public final getIsTrial()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lmediabrowser/model/registration/RegistrationInfo;->IsTrial:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/registration/RegistrationInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setExpirationDate(Ljava/util/Date;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/registration/RegistrationInfo;->ExpirationDate:Ljava/util/Date;

    return-void
.end method

.method public final setIsOverLimit(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lmediabrowser/model/registration/RegistrationInfo;->IsOverLimit:Z

    return-void
.end method

.method public final setIsRegistered(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lmediabrowser/model/registration/RegistrationInfo;->IsRegistered:Z

    return-void
.end method

.method public final setIsTrial(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lmediabrowser/model/registration/RegistrationInfo;->IsTrial:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/registration/RegistrationInfo;->Name:Ljava/lang/String;

    return-void
.end method
