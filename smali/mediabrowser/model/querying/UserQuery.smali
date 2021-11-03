.class public Lmediabrowser/model/querying/UserQuery;
.super Ljava/lang/Object;
.source "UserQuery.java"


# instance fields
.field private IsDisabled:Ljava/lang/Boolean;

.field private IsHidden:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIsDisabled()Ljava/lang/Boolean;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/querying/UserQuery;->IsDisabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsHidden()Ljava/lang/Boolean;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/querying/UserQuery;->IsHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setIsDisabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/querying/UserQuery;->IsDisabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsHidden(Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/querying/UserQuery;->IsHidden:Ljava/lang/Boolean;

    return-void
.end method
