.class public Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
.super Ljava/lang/Object;
.source "ContentMetadataMutations.java"


# instance fields
.field private final editedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final removedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->editedValues:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->removedValues:Ljava/util/List;

    return-void
.end method

.method private checkAndSet(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->editedValues:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->removedValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .locals 1

    const-string v0, "exo_len"

    .line 46
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->set(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object p0

    return-object p0
.end method

.method public static setRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "exo_redir"

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->remove(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "exo_redir"

    .line 62
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEditedValues()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->editedValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 130
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 132
    instance-of v4, v3, [B

    if-eqz v4, :cond_0

    .line 133
    check-cast v3, [B

    .line 134
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->removedValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->removedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->editedValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .locals 0

    .line 95
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->checkAndSet(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->checkAndSet(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[B)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .locals 1

    .line 107
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->checkAndSet(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object p1

    return-object p1
.end method
