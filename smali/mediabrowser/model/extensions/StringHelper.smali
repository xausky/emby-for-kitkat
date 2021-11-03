.class public final Lmediabrowser/model/extensions/StringHelper;
.super Ljava/lang/Object;
.source "StringHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 35
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static ToStringCultureInvariant(I)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ToStringCultureInvariant(J)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static TrimStart(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 69
    new-array v0, v0, [Ljava/lang/Character;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ltangible/DotNetToJavaStringHelper;->trimStart(Ljava/lang/String;[Ljava/lang/Character;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
