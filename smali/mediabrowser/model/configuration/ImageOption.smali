.class public Lmediabrowser/model/configuration/ImageOption;
.super Ljava/lang/Object;
.source "ImageOption.java"


# instance fields
.field private Limit:I

.field private MinWidth:I

.field private Type:Lmediabrowser/model/entities/ImageType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lmediabrowser/model/entities/ImageType;->values()[Lmediabrowser/model/entities/ImageType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/configuration/ImageOption;->Type:Lmediabrowser/model/entities/ImageType;

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    return-void
.end method


# virtual methods
.method public final getLimit()I
    .locals 1

    .line 29
    iget v0, p0, Lmediabrowser/model/configuration/ImageOption;->Limit:I

    return v0
.end method

.method public final getMinWidth()I
    .locals 1

    .line 44
    iget v0, p0, Lmediabrowser/model/configuration/ImageOption;->MinWidth:I

    return v0
.end method

.method public final getType()Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 15
    iget-object v0, p0, Lmediabrowser/model/configuration/ImageOption;->Type:Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final setLimit(I)V
    .locals 0

    .line 33
    iput p1, p0, Lmediabrowser/model/configuration/ImageOption;->Limit:I

    return-void
.end method

.method public final setMinWidth(I)V
    .locals 0

    .line 48
    iput p1, p0, Lmediabrowser/model/configuration/ImageOption;->MinWidth:I

    return-void
.end method

.method public final setType(Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmediabrowser/model/configuration/ImageOption;->Type:Lmediabrowser/model/entities/ImageType;

    return-void
.end method
