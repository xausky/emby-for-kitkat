.class public Lmediabrowser/model/session/UserDataChangeInfo;
.super Ljava/lang/Object;
.source "UserDataChangeInfo.java"


# instance fields
.field private UserDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/UserItemDataDto;",
            ">;"
        }
    .end annotation
.end field

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUserDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/UserItemDataDto;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lmediabrowser/model/session/UserDataChangeInfo;->UserDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/session/UserDataChangeInfo;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setUserDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/UserItemDataDto;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lmediabrowser/model/session/UserDataChangeInfo;->UserDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/session/UserDataChangeInfo;->UserId:Ljava/lang/String;

    return-void
.end method
