.class public Lmediabrowser/logging/ConsoleLogger;
.super Ljava/lang/Object;
.source "ConsoleLogger.java"

# interfaces
.implements Lmediabrowser/model/logging/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs LogException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 45
    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 47
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget-object v1, p2, v0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs Debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public varargs Error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 14
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public varargs ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/logging/ConsoleLogger;->LogException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs Fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public varargs FatalException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/logging/ConsoleLogger;->LogException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs Info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public varargs Warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
