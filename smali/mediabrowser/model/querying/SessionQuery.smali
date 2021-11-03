.class public Lmediabrowser/model/querying/SessionQuery;
.super Ljava/lang/Object;
.source "SessionQuery.java"


# instance fields
.field private ControllableByUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getControllableByUserId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lmediabrowser/model/querying/SessionQuery;->ControllableByUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setControllableByUserId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lmediabrowser/model/querying/SessionQuery;->ControllableByUserId:Ljava/lang/String;

    return-void
.end method
