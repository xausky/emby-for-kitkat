.class public Lmediabrowser/model/users/PinRedeemResult;
.super Ljava/lang/Object;
.source "PinRedeemResult.java"


# instance fields
.field private Success:Z

.field private UsersReset:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSuccess()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lmediabrowser/model/users/PinRedeemResult;->Success:Z

    return v0
.end method

.method public final getUsersReset()[Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/users/PinRedeemResult;->UsersReset:[Ljava/lang/String;

    return-object v0
.end method

.method public final setSuccess(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lmediabrowser/model/users/PinRedeemResult;->Success:Z

    return-void
.end method

.method public final setUsersReset([Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/users/PinRedeemResult;->UsersReset:[Ljava/lang/String;

    return-void
.end method
