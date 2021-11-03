.class public Lmediabrowser/model/devices/LocalFileInfo;
.super Ljava/lang/Object;
.source "LocalFileInfo.java"


# instance fields
.field private Album:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private MimeType:Ljava/lang/String;

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlbum()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lmediabrowser/model/devices/LocalFileInfo;->Album:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/devices/LocalFileInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lmediabrowser/model/devices/LocalFileInfo;->MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/devices/LocalFileInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lmediabrowser/model/devices/LocalFileInfo;->Album:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/devices/LocalFileInfo;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lmediabrowser/model/devices/LocalFileInfo;->MimeType:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/devices/LocalFileInfo;->Name:Ljava/lang/String;

    return-void
.end method
