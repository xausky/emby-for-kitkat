.class public final Ltangible/DotNetToJavaStringHelper;
.super Ljava/lang/Object;
.source "DotNetToJavaStringHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 27
    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Ltangible/DotNetToJavaStringHelper;->join(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v1, v0

    move v0, p2

    .line 40
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    sub-int v2, v0, p2

    if-ge v2, p3, :cond_3

    if-eqz p0, :cond_1

    if-le v0, p2, :cond_1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_1
    aget-object v2, p1, v0

    if-eqz v2, :cond_2

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static varargs trimStart(Ljava/lang/String;[Ljava/lang/Character;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 64
    array-length v3, p1

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 74
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_3

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-object v6, p1, v3

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_5
    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_4
    return-object p0
.end method
