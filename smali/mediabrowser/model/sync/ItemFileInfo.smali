.class public Lmediabrowser/model/sync/ItemFileInfo;
.super Ljava/lang/Object;
.source "ItemFileInfo.java"


# instance fields
.field private ImageType:Lmediabrowser/model/entities/ImageType;

.field private Index:I

.field private Name:Ljava/lang/String;

.field private Path:Ljava/lang/String;

.field private Type:Lmediabrowser/model/sync/ItemFileType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lmediabrowser/model/sync/ItemFileType;->values()[Lmediabrowser/model/sync/ItemFileType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/sync/ItemFileInfo;->Type:Lmediabrowser/model/sync/ItemFileType;

    return-void
.end method


# virtual methods
.method public final getImageType()Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 57
    iget-object v0, p0, Lmediabrowser/model/sync/ItemFileInfo;->ImageType:Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 71
    iget v0, p0, Lmediabrowser/model/sync/ItemFileInfo;->Index:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lmediabrowser/model/sync/ItemFileInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lmediabrowser/model/sync/ItemFileInfo;->Path:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lmediabrowser/model/sync/ItemFileType;
    .locals 1

    .line 15
    iget-object v0, p0, Lmediabrowser/model/sync/ItemFileInfo;->Type:Lmediabrowser/model/sync/ItemFileType;

    return-object v0
.end method

.method public final setImageType(Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lmediabrowser/model/sync/ItemFileInfo;->ImageType:Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 75
    iput p1, p0, Lmediabrowser/model/sync/ItemFileInfo;->Index:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lmediabrowser/model/sync/ItemFileInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lmediabrowser/model/sync/ItemFileInfo;->Path:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lmediabrowser/model/sync/ItemFileType;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmediabrowser/model/sync/ItemFileInfo;->Type:Lmediabrowser/model/sync/ItemFileType;

    return-void
.end method
