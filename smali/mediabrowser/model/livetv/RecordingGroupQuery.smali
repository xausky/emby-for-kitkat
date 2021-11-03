.class public Lmediabrowser/model/livetv/RecordingGroupQuery;
.super Ljava/lang/Object;
.source "RecordingGroupQuery.java"


# instance fields
.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingGroupQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingGroupQuery;->UserId:Ljava/lang/String;

    return-void
.end method
