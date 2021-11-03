.class public Lmediabrowser/apiinteraction/QueryStringDictionary;
.super Ljava/util/HashMap;
.source "QueryStringDictionary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private GetEncodedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 355
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private GetStrings([I)[Ljava/lang/String;
    .locals 4

    .line 188
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 190
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 191
    new-instance v2, Ljava/lang/Integer;

    aget v3, p1, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private GetStrings([Ljava/lang/Enum;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>([TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 414
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 416
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 417
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private GetStrings([Ljava/lang/Integer;)[Ljava/lang/String;
    .locals 3

    .line 165
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 167
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 168
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final Add(Ljava/lang/String;D)V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Add(Ljava/lang/String;I)V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Add(Ljava/lang/String;J)V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Add(Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 378
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Add(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 256
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 258
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Add(Ljava/lang/String;Z)V
    .locals 1

    .line 127
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Add(Ljava/lang/String;[I)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, ","

    .line 181
    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetStrings([I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Ltangible/DotNetToJavaStringHelper;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Add(Ljava/lang/String;[Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    const-string v0, ","

    .line 404
    invoke-virtual {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/String;)V

    return-void
.end method

.method public final Add(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 391
    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetStrings([Ljava/lang/Enum;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Add(Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, ","

    .line 158
    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetStrings([Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Ltangible/DotNetToJavaStringHelper;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Add(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, ","

    .line 239
    invoke-virtual {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Add(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 289
    invoke-static {p3, p2}, Ltangible/DotNetToJavaStringHelper;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 291
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 385
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/Enum;)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 319
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;[I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    const-string v0, ","

    .line 409
    invoke-virtual {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/String;)V

    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 398
    invoke-virtual {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 271
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 305
    invoke-virtual {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final GetQueryString()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 332
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    invoke-virtual {p0, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 335
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 337
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%1$s=%2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-direct {p0, v3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final GetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 366
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetQueryString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 373
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
