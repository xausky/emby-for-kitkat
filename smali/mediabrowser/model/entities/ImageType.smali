.class public final enum Lmediabrowser/model/entities/ImageType;
.super Ljava/lang/Enum;
.source "ImageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/ImageType;

.field public static final enum Art:Lmediabrowser/model/entities/ImageType;

.field public static final enum Backdrop:Lmediabrowser/model/entities/ImageType;

.field public static final enum Banner:Lmediabrowser/model/entities/ImageType;

.field public static final enum Box:Lmediabrowser/model/entities/ImageType;

.field public static final enum BoxRear:Lmediabrowser/model/entities/ImageType;

.field public static final enum Chapter:Lmediabrowser/model/entities/ImageType;

.field public static final enum Disc:Lmediabrowser/model/entities/ImageType;

.field public static final enum Logo:Lmediabrowser/model/entities/ImageType;

.field public static final enum Menu:Lmediabrowser/model/entities/ImageType;

.field public static final enum Primary:Lmediabrowser/model/entities/ImageType;

.field public static final enum Screenshot:Lmediabrowser/model/entities/ImageType;

.field public static final enum Thumb:Lmediabrowser/model/entities/ImageType;

.field public static final enum Thumbnail:Lmediabrowser/model/entities/ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 11
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Primary"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    .line 15
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Art"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    .line 19
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Backdrop"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    .line 23
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Banner"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    .line 27
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Logo"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    .line 31
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Thumb"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    .line 35
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Disc"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Disc:Lmediabrowser/model/entities/ImageType;

    .line 39
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Box"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Box:Lmediabrowser/model/entities/ImageType;

    .line 43
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Screenshot"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Screenshot:Lmediabrowser/model/entities/ImageType;

    .line 47
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Menu"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Menu:Lmediabrowser/model/entities/ImageType;

    .line 51
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Chapter"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Chapter:Lmediabrowser/model/entities/ImageType;

    .line 55
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "BoxRear"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->BoxRear:Lmediabrowser/model/entities/ImageType;

    .line 56
    new-instance v0, Lmediabrowser/model/entities/ImageType;

    const-string v1, "Thumbnail"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lmediabrowser/model/entities/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ImageType;->Thumbnail:Lmediabrowser/model/entities/ImageType;

    const/16 v0, 0xd

    .line 6
    new-array v0, v0, [Lmediabrowser/model/entities/ImageType;

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Disc:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Box:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v9

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Screenshot:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v10

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Menu:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v11

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Chapter:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v12

    sget-object v1, Lmediabrowser/model/entities/ImageType;->BoxRear:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v13

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Thumbnail:Lmediabrowser/model/entities/ImageType;

    aput-object v1, v0, v14

    sput-object v0, Lmediabrowser/model/entities/ImageType;->$VALUES:[Lmediabrowser/model/entities/ImageType;

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

.method public static forValue(I)Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 65
    invoke-static {}, Lmediabrowser/model/entities/ImageType;->values()[Lmediabrowser/model/entities/ImageType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/entities/ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/ImageType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/entities/ImageType;->$VALUES:[Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 60
    invoke-virtual {p0}, Lmediabrowser/model/entities/ImageType;->ordinal()I

    move-result v0

    return v0
.end method
