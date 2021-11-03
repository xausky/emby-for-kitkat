.class public Lmediabrowser/model/dto/ImageOptions;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# instance fields
.field private AddPlayedIndicator:Z

.field private BackgroundColor:Ljava/lang/String;

.field private CropWhitespace:Ljava/lang/Boolean;

.field private EnableImageEnhancers:Z

.field private Format:Lmediabrowser/model/drawing/ImageFormat;

.field private Height:Ljava/lang/Integer;

.field private ImageIndex:Ljava/lang/Integer;

.field private ImageType:Lmediabrowser/model/entities/ImageType;

.field private MaxHeight:Ljava/lang/Integer;

.field private MaxWidth:Ljava/lang/Integer;

.field private PercentPlayed:Ljava/lang/Integer;

.field private PositionTicks:Ljava/lang/Long;

.field private Quality:Ljava/lang/Integer;

.field private Tag:Ljava/lang/String;

.field private UnPlayedCount:Ljava/lang/Integer;

.field private Width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    invoke-static {}, Lmediabrowser/model/entities/ImageType;->values()[Lmediabrowser/model/entities/ImageType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->ImageType:Lmediabrowser/model/entities/ImageType;

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/ImageOptions;->setEnableImageEnhancers(Z)V

    return-void
.end method


# virtual methods
.method public final getAddPlayedIndicator()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lmediabrowser/model/dto/ImageOptions;->AddPlayedIndicator:Z

    return v0
.end method

.method public final getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->BackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getCropWhitespace()Ljava/lang/Boolean;
    .locals 1

    .line 140
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->CropWhitespace:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableImageEnhancers()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lmediabrowser/model/dto/ImageOptions;->EnableImageEnhancers:Z

    return v0
.end method

.method public final getFormat()Lmediabrowser/model/drawing/ImageFormat;
    .locals 1

    .line 170
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->Format:Lmediabrowser/model/drawing/ImageFormat;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->Height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageIndex()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->ImageIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageType()Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 19
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->ImageType:Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getMaxHeight()Ljava/lang/Integer;
    .locals 1

    .line 94
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->MaxHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxWidth()Ljava/lang/Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->MaxWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPercentPlayed()Ljava/lang/Integer;
    .locals 1

    .line 200
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->PercentPlayed:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPositionTicks()Ljava/lang/Long;
    .locals 1

    .line 215
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->PositionTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getQuality()Ljava/lang/Integer;
    .locals 1

    .line 109
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->Quality:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnPlayedCount()Ljava/lang/Integer;
    .locals 1

    .line 230
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->UnPlayedCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 49
    iget-object v0, p0, Lmediabrowser/model/dto/ImageOptions;->Width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAddPlayedIndicator(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lmediabrowser/model/dto/ImageOptions;->AddPlayedIndicator:Z

    return-void
.end method

.method public final setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->BackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public final setCropWhitespace(Ljava/lang/Boolean;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->CropWhitespace:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableImageEnhancers(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lmediabrowser/model/dto/ImageOptions;->EnableImageEnhancers:Z

    return-void
.end method

.method public final setFormat(Lmediabrowser/model/drawing/ImageFormat;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->Format:Lmediabrowser/model/drawing/ImageFormat;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->Height:Ljava/lang/Integer;

    return-void
.end method

.method public final setImageIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->ImageIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setImageType(Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->ImageType:Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setMaxHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->MaxHeight:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->MaxWidth:Ljava/lang/Integer;

    return-void
.end method

.method public final setPercentPlayed(Ljava/lang/Integer;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->PercentPlayed:Ljava/lang/Integer;

    return-void
.end method

.method public final setPositionTicks(Ljava/lang/Long;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->PositionTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setQuality(Ljava/lang/Integer;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->Quality:Ljava/lang/Integer;

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->Tag:Ljava/lang/String;

    return-void
.end method

.method public final setUnPlayedCount(Ljava/lang/Integer;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->UnPlayedCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lmediabrowser/model/dto/ImageOptions;->Width:Ljava/lang/Integer;

    return-void
.end method
