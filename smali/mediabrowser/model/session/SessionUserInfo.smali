.class public Lmediabrowser/model/session/SessionUserInfo;
.super Ljava/lang/Object;
.source "SessionUserInfo.java"


# instance fields
.field private UserId:Ljava/lang/String;

.field private UserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/session/SessionUserInfo;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/session/SessionUserInfo;->UserName:Ljava/lang/String;

    return-object v0
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/session/SessionUserInfo;->UserId:Ljava/lang/String;

    return-void
.end method

.method public final setUserName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/session/SessionUserInfo;->UserName:Ljava/lang/String;

    return-void
.end method
