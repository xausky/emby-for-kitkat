.class public Lmediabrowser/model/configuration/MetadataOptions;
.super Ljava/lang/Object;
.source "MetadataOptions.java"


# instance fields
.field private DisabledImageFetchers:[Ljava/lang/String;

.field private DisabledMetadataFetchers:[Ljava/lang/String;

.field private DisabledMetadataSavers:[Ljava/lang/String;

.field private ImageFetcherOrder:[Ljava/lang/String;

.field private ImageOptions:[Lmediabrowser/model/configuration/ImageOption;

.field private ItemType:Ljava/lang/String;

.field private LocalMetadataReaderOrder:[Ljava/lang/String;

.field private MetadataFetcherOrder:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x500

    .line 90
    invoke-direct {p0, v0, v1}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v0}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 96
    invoke-virtual {v0, p1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 97
    invoke-virtual {v0, p2}, Lmediabrowser/model/configuration/ImageOption;->setMinWidth(I)V

    .line 98
    sget-object p1, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, p1}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    new-array p2, p2, [Lmediabrowser/model/configuration/ImageOption;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    new-array p2, v1, [Lmediabrowser/model/configuration/ImageOption;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/configuration/ImageOption;

    invoke-virtual {p0, p1}, Lmediabrowser/model/configuration/MetadataOptions;->setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V

    .line 102
    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/model/configuration/MetadataOptions;->setDisabledMetadataSavers([Ljava/lang/String;)V

    .line 103
    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/model/configuration/MetadataOptions;->setLocalMetadataReaderOrder([Ljava/lang/String;)V

    .line 105
    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/model/configuration/MetadataOptions;->setDisabledMetadataFetchers([Ljava/lang/String;)V

    .line 106
    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/model/configuration/MetadataOptions;->setMetadataFetcherOrder([Ljava/lang/String;)V

    .line 107
    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/model/configuration/MetadataOptions;->setDisabledImageFetchers([Ljava/lang/String;)V

    .line 108
    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/model/configuration/MetadataOptions;->setImageFetcherOrder([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final GetLimit(Lmediabrowser/model/entities/ImageType;)I
    .locals 5

    .line 114
    invoke-virtual {p0}, Lmediabrowser/model/configuration/MetadataOptions;->getImageOptions()[Lmediabrowser/model/configuration/ImageOption;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    invoke-virtual {v3}, Lmediabrowser/model/configuration/ImageOption;->getType()Lmediabrowser/model/entities/ImageType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v3}, Lmediabrowser/model/configuration/ImageOption;->getLimit()I

    move-result p1

    :goto_2
    return p1
.end method

.method public final GetMinWidth(Lmediabrowser/model/entities/ImageType;)I
    .locals 6

    .line 129
    invoke-virtual {p0}, Lmediabrowser/model/configuration/MetadataOptions;->getImageOptions()[Lmediabrowser/model/configuration/ImageOption;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 131
    invoke-virtual {v4}, Lmediabrowser/model/configuration/ImageOption;->getType()Lmediabrowser/model/entities/ImageType;

    move-result-object v5

    if-ne v5, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    .line 138
    :cond_2
    invoke-virtual {v4}, Lmediabrowser/model/configuration/ImageOption;->getMinWidth()I

    move-result v2

    :goto_2
    return v2
.end method

.method public final IsEnabled(Lmediabrowser/model/entities/ImageType;)Z
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lmediabrowser/model/configuration/MetadataOptions;->GetLimit(Lmediabrowser/model/entities/ImageType;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final IsMetadataSaverEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Lmediabrowser/model/configuration/MetadataOptions;->getDisabledMetadataSavers()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final getDisabledImageFetchers()[Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lmediabrowser/model/configuration/MetadataOptions;->DisabledImageFetchers:[Ljava/lang/String;

    return-object v0
.end method

.method public final getDisabledMetadataFetchers()[Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lmediabrowser/model/configuration/MetadataOptions;->DisabledMetadataFetchers:[Ljava/lang/String;

    return-object v0
.end method

.method public final getDisabledMetadataSavers()[Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/configuration/MetadataOptions;->DisabledMetadataSavers:[Ljava/lang/String;

    return-object v0
.end method

.method public final getImageFetcherOrder()[Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lmediabrowser/model/configuration/MetadataOptions;->ImageFetcherOrder:[Ljava/lang/String;

    return-object v0
.end method

.method public final getImageOptions()[Lmediabrowser/model/configuration/ImageOption;
    .locals 1

    .line 24
    iget-object v0, p0, Lmediabrowser/model/configuration/MetadataOptions;->ImageOptions:[Lmediabrowser/model/configuration/ImageOption;

    return-object v0
.end method

.method public final getItemType()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lmediabrowser/model/configuration/MetadataOptions;->ItemType:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalMetadataReaderOrder()[Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lmediabrowser/model/configuration/MetadataOptions;->LocalMetadataReaderOrder:[Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadataFetcherOrder()[Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lmediabrowser/model/configuration/MetadataOptions;->MetadataFetcherOrder:[Ljava/lang/String;

    return-object v0
.end method

.method public final setDisabledImageFetchers([Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lmediabrowser/model/configuration/MetadataOptions;->DisabledImageFetchers:[Ljava/lang/String;

    return-void
.end method

.method public final setDisabledMetadataFetchers([Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmediabrowser/model/configuration/MetadataOptions;->DisabledMetadataFetchers:[Ljava/lang/String;

    return-void
.end method

.method public final setDisabledMetadataSavers([Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/configuration/MetadataOptions;->DisabledMetadataSavers:[Ljava/lang/String;

    return-void
.end method

.method public final setImageFetcherOrder([Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lmediabrowser/model/configuration/MetadataOptions;->ImageFetcherOrder:[Ljava/lang/String;

    return-void
.end method

.method public final setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lmediabrowser/model/configuration/MetadataOptions;->ImageOptions:[Lmediabrowser/model/configuration/ImageOption;

    return-void
.end method

.method public final setItemType(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lmediabrowser/model/configuration/MetadataOptions;->ItemType:Ljava/lang/String;

    return-void
.end method

.method public final setLocalMetadataReaderOrder([Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lmediabrowser/model/configuration/MetadataOptions;->LocalMetadataReaderOrder:[Ljava/lang/String;

    return-void
.end method

.method public final setMetadataFetcherOrder([Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lmediabrowser/model/configuration/MetadataOptions;->MetadataFetcherOrder:[Ljava/lang/String;

    return-void
.end method
