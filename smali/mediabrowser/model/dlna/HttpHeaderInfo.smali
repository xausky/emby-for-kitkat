.class public Lmediabrowser/model/dlna/HttpHeaderInfo;
.super Ljava/lang/Object;
.source "HttpHeaderInfo.java"


# instance fields
.field private Match:Lmediabrowser/model/dlna/HeaderMatchType;

.field private Name:Ljava/lang/String;

.field private Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lmediabrowser/model/dlna/HeaderMatchType;->values()[Lmediabrowser/model/dlna/HeaderMatchType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/HttpHeaderInfo;->Match:Lmediabrowser/model/dlna/HeaderMatchType;

    return-void
.end method


# virtual methods
.method public final getMatch()Lmediabrowser/model/dlna/HeaderMatchType;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/dlna/HttpHeaderInfo;->Match:Lmediabrowser/model/dlna/HeaderMatchType;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lmediabrowser/model/dlna/HttpHeaderInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lmediabrowser/model/dlna/HttpHeaderInfo;->Value:Ljava/lang/String;

    return-object v0
.end method

.method public final setMatch(Lmediabrowser/model/dlna/HeaderMatchType;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/dlna/HttpHeaderInfo;->Match:Lmediabrowser/model/dlna/HeaderMatchType;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lmediabrowser/model/dlna/HttpHeaderInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/dlna/HttpHeaderInfo;->Value:Ljava/lang/String;

    return-void
.end method
