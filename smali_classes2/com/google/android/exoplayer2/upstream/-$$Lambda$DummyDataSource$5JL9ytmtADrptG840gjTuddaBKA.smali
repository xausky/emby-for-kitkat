.class public final synthetic Lcom/google/android/exoplayer2/upstream/-$$Lambda$DummyDataSource$5JL9ytmtADrptG840gjTuddaBKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$DummyDataSource$5JL9ytmtADrptG840gjTuddaBKA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DummyDataSource$5JL9ytmtADrptG840gjTuddaBKA;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DummyDataSource$5JL9ytmtADrptG840gjTuddaBKA;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DummyDataSource$5JL9ytmtADrptG840gjTuddaBKA;->INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$DummyDataSource$5JL9ytmtADrptG840gjTuddaBKA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->lambda$5JL9ytmtADrptG840gjTuddaBKA()Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method
