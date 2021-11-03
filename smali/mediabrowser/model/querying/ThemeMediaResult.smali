.class public Lmediabrowser/model/querying/ThemeMediaResult;
.super Lmediabrowser/model/querying/ItemsResult;
.source "ThemeMediaResult.java"


# instance fields
.field private OwnerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lmediabrowser/model/querying/ItemsResult;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOwnerId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/querying/ThemeMediaResult;->OwnerId:Ljava/lang/String;

    return-object v0
.end method

.method public final setOwnerId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/querying/ThemeMediaResult;->OwnerId:Ljava/lang/String;

    return-void
.end method
