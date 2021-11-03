.class public final enum Lmediabrowser/model/apiclient/ConnectionState;
.super Ljava/lang/Enum;
.source "ConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/apiclient/ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/apiclient/ConnectionState;

.field public static final enum ConnectSignIn:Lmediabrowser/model/apiclient/ConnectionState;

.field public static final enum OfflineSignIn:Lmediabrowser/model/apiclient/ConnectionState;

.field public static final enum OfflineSignedIn:Lmediabrowser/model/apiclient/ConnectionState;

.field public static final enum ServerSelection:Lmediabrowser/model/apiclient/ConnectionState;

.field public static final enum ServerSignIn:Lmediabrowser/model/apiclient/ConnectionState;

.field public static final enum SignedIn:Lmediabrowser/model/apiclient/ConnectionState;

.field public static final enum Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/apiclient/ConnectionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 5
    new-instance v0, Lmediabrowser/model/apiclient/ConnectionState;

    const-string v1, "Unavailable"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmediabrowser/model/apiclient/ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/apiclient/ConnectionState;->Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

    .line 6
    new-instance v0, Lmediabrowser/model/apiclient/ConnectionState;

    const-string v1, "ServerSignIn"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lmediabrowser/model/apiclient/ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/apiclient/ConnectionState;->ServerSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    .line 7
    new-instance v0, Lmediabrowser/model/apiclient/ConnectionState;

    const-string v1, "SignedIn"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lmediabrowser/model/apiclient/ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/apiclient/ConnectionState;->SignedIn:Lmediabrowser/model/apiclient/ConnectionState;

    .line 8
    new-instance v0, Lmediabrowser/model/apiclient/ConnectionState;

    const-string v1, "ServerSelection"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lmediabrowser/model/apiclient/ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/apiclient/ConnectionState;->ServerSelection:Lmediabrowser/model/apiclient/ConnectionState;

    .line 9
    new-instance v0, Lmediabrowser/model/apiclient/ConnectionState;

    const-string v1, "ConnectSignIn"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lmediabrowser/model/apiclient/ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/apiclient/ConnectionState;->ConnectSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    .line 10
    new-instance v0, Lmediabrowser/model/apiclient/ConnectionState;

    const-string v1, "OfflineSignIn"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lmediabrowser/model/apiclient/ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/apiclient/ConnectionState;->OfflineSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    .line 11
    new-instance v0, Lmediabrowser/model/apiclient/ConnectionState;

    const-string v1, "OfflineSignedIn"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lmediabrowser/model/apiclient/ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/apiclient/ConnectionState;->OfflineSignedIn:Lmediabrowser/model/apiclient/ConnectionState;

    .line 3
    new-array v0, v9, [Lmediabrowser/model/apiclient/ConnectionState;

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->ServerSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->SignedIn:Lmediabrowser/model/apiclient/ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->ServerSelection:Lmediabrowser/model/apiclient/ConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->ConnectSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->OfflineSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->OfflineSignedIn:Lmediabrowser/model/apiclient/ConnectionState;

    aput-object v1, v0, v8

    sput-object v0, Lmediabrowser/model/apiclient/ConnectionState;->$VALUES:[Lmediabrowser/model/apiclient/ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lmediabrowser/model/apiclient/ConnectionState;->intValue:I

    .line 33
    invoke-static {}, Lmediabrowser/model/apiclient/ConnectionState;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/apiclient/ConnectionState;
    .locals 1

    .line 43
    invoke-static {}, Lmediabrowser/model/apiclient/ConnectionState;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/apiclient/ConnectionState;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/apiclient/ConnectionState;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lmediabrowser/model/apiclient/ConnectionState;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lmediabrowser/model/apiclient/ConnectionState;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/apiclient/ConnectionState;->mappings:Ljava/util/HashMap;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/apiclient/ConnectionState;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/apiclient/ConnectionState;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/apiclient/ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/apiclient/ConnectionState;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/apiclient/ConnectionState;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/apiclient/ConnectionState;->$VALUES:[Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v0}, [Lmediabrowser/model/apiclient/ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/apiclient/ConnectionState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 38
    iget v0, p0, Lmediabrowser/model/apiclient/ConnectionState;->intValue:I

    return v0
.end method
