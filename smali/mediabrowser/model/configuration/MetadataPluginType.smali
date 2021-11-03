.class public final enum Lmediabrowser/model/configuration/MetadataPluginType;
.super Ljava/lang/Enum;
.source "MetadataPluginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/configuration/MetadataPluginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/configuration/MetadataPluginType;

.field public static final enum ImageFetcher:Lmediabrowser/model/configuration/MetadataPluginType;

.field public static final enum ImageSaver:Lmediabrowser/model/configuration/MetadataPluginType;

.field public static final enum LocalImageProvider:Lmediabrowser/model/configuration/MetadataPluginType;

.field public static final enum LocalMetadataProvider:Lmediabrowser/model/configuration/MetadataPluginType;

.field public static final enum MetadataFetcher:Lmediabrowser/model/configuration/MetadataPluginType;

.field public static final enum MetadataSaver:Lmediabrowser/model/configuration/MetadataPluginType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lmediabrowser/model/configuration/MetadataPluginType;

    const-string v1, "LocalImageProvider"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/configuration/MetadataPluginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/MetadataPluginType;->LocalImageProvider:Lmediabrowser/model/configuration/MetadataPluginType;

    .line 9
    new-instance v0, Lmediabrowser/model/configuration/MetadataPluginType;

    const-string v1, "ImageFetcher"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/configuration/MetadataPluginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/MetadataPluginType;->ImageFetcher:Lmediabrowser/model/configuration/MetadataPluginType;

    .line 10
    new-instance v0, Lmediabrowser/model/configuration/MetadataPluginType;

    const-string v1, "ImageSaver"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/configuration/MetadataPluginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/MetadataPluginType;->ImageSaver:Lmediabrowser/model/configuration/MetadataPluginType;

    .line 11
    new-instance v0, Lmediabrowser/model/configuration/MetadataPluginType;

    const-string v1, "LocalMetadataProvider"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/configuration/MetadataPluginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/MetadataPluginType;->LocalMetadataProvider:Lmediabrowser/model/configuration/MetadataPluginType;

    .line 12
    new-instance v0, Lmediabrowser/model/configuration/MetadataPluginType;

    const-string v1, "MetadataFetcher"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/configuration/MetadataPluginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/MetadataPluginType;->MetadataFetcher:Lmediabrowser/model/configuration/MetadataPluginType;

    .line 13
    new-instance v0, Lmediabrowser/model/configuration/MetadataPluginType;

    const-string v1, "MetadataSaver"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmediabrowser/model/configuration/MetadataPluginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/MetadataPluginType;->MetadataSaver:Lmediabrowser/model/configuration/MetadataPluginType;

    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [Lmediabrowser/model/configuration/MetadataPluginType;

    sget-object v1, Lmediabrowser/model/configuration/MetadataPluginType;->LocalImageProvider:Lmediabrowser/model/configuration/MetadataPluginType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/configuration/MetadataPluginType;->ImageFetcher:Lmediabrowser/model/configuration/MetadataPluginType;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/configuration/MetadataPluginType;->ImageSaver:Lmediabrowser/model/configuration/MetadataPluginType;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/configuration/MetadataPluginType;->LocalMetadataProvider:Lmediabrowser/model/configuration/MetadataPluginType;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/configuration/MetadataPluginType;->MetadataFetcher:Lmediabrowser/model/configuration/MetadataPluginType;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/configuration/MetadataPluginType;->MetadataSaver:Lmediabrowser/model/configuration/MetadataPluginType;

    aput-object v1, v0, v7

    sput-object v0, Lmediabrowser/model/configuration/MetadataPluginType;->$VALUES:[Lmediabrowser/model/configuration/MetadataPluginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/configuration/MetadataPluginType;
    .locals 1

    .line 22
    invoke-static {}, Lmediabrowser/model/configuration/MetadataPluginType;->values()[Lmediabrowser/model/configuration/MetadataPluginType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/configuration/MetadataPluginType;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/configuration/MetadataPluginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/configuration/MetadataPluginType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/configuration/MetadataPluginType;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/configuration/MetadataPluginType;->$VALUES:[Lmediabrowser/model/configuration/MetadataPluginType;

    invoke-virtual {v0}, [Lmediabrowser/model/configuration/MetadataPluginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/configuration/MetadataPluginType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    invoke-virtual {p0}, Lmediabrowser/model/configuration/MetadataPluginType;->ordinal()I

    move-result v0

    return v0
.end method
