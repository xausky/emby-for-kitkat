.class public Lmediabrowser/model/entities/MediaUrl;
.super Ljava/lang/Object;
.source "MediaUrl.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/entities/MediaUrl;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/entities/MediaUrl;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/entities/MediaUrl;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/entities/MediaUrl;->Url:Ljava/lang/String;

    return-void
.end method
