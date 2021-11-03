.class public final enum Lmediabrowser/model/configuration/DynamicDayOfWeek;
.super Ljava/lang/Enum;
.source "DynamicDayOfWeek.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/configuration/DynamicDayOfWeek;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Everyday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Friday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Monday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Saturday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Sunday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Thursday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Tuesday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Wednesday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Weekday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field public static final enum Weekend:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/configuration/DynamicDayOfWeek;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Sunday"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Sunday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    .line 6
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Monday"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Monday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    .line 7
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Tuesday"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Tuesday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    .line 8
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Wednesday"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Wednesday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    .line 9
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Thursday"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Thursday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    .line 10
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Friday"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Friday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    .line 11
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Saturday"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Saturday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    .line 12
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Everyday"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Everyday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    .line 13
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Weekday"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Weekday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    .line 14
    new-instance v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const-string v1, "Weekend"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lmediabrowser/model/configuration/DynamicDayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Weekend:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    const/16 v0, 0xa

    .line 3
    new-array v0, v0, [Lmediabrowser/model/configuration/DynamicDayOfWeek;

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Sunday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Monday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Tuesday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Wednesday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Thursday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Friday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Saturday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Everyday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v9

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Weekday:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v10

    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->Weekend:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    aput-object v1, v0, v11

    sput-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->$VALUES:[Lmediabrowser/model/configuration/DynamicDayOfWeek;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->intValue:I

    .line 36
    invoke-static {}, Lmediabrowser/model/configuration/DynamicDayOfWeek;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/configuration/DynamicDayOfWeek;
    .locals 1

    .line 46
    invoke-static {}, Lmediabrowser/model/configuration/DynamicDayOfWeek;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/configuration/DynamicDayOfWeek;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/configuration/DynamicDayOfWeek;->mappings:Ljava/util/HashMap;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/configuration/DynamicDayOfWeek;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/configuration/DynamicDayOfWeek;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/configuration/DynamicDayOfWeek;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->$VALUES:[Lmediabrowser/model/configuration/DynamicDayOfWeek;

    invoke-virtual {v0}, [Lmediabrowser/model/configuration/DynamicDayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/configuration/DynamicDayOfWeek;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 41
    iget v0, p0, Lmediabrowser/model/configuration/DynamicDayOfWeek;->intValue:I

    return v0
.end method
