.class public Lmediabrowser/model/providers/ExternalUrl;
.super Ljava/lang/Object;
.source "ExternalUrl.java"


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

    .line 13
    iget-object v0, p0, Lmediabrowser/model/providers/ExternalUrl;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/providers/ExternalUrl;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/providers/ExternalUrl;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/providers/ExternalUrl;->Url:Ljava/lang/String;

    return-void
.end method
