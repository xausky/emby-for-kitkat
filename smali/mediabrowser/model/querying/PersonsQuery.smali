.class public Lmediabrowser/model/querying/PersonsQuery;
.super Lmediabrowser/model/querying/ItemsByNameQuery;
.source "PersonsQuery.java"


# instance fields
.field private PersonTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lmediabrowser/model/querying/ItemsByNameQuery;-><init>()V

    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/PersonsQuery;->setPersonTypes([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getPersonTypes()[Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/querying/PersonsQuery;->PersonTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final setPersonTypes([Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/querying/PersonsQuery;->PersonTypes:[Ljava/lang/String;

    return-void
.end method
