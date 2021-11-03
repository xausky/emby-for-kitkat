.class public interface abstract Lmediabrowser/model/logging/ILogManager;
.super Ljava/lang/Object;
.source "ILogManager.java"


# virtual methods
.method public abstract AddConsoleOutput()V
.end method

.method public abstract Flush()V
.end method

.method public abstract GetLogger(Ljava/lang/String;)Lmediabrowser/model/logging/ILogger;
.end method

.method public abstract ReloadLogger(Lmediabrowser/model/logging/LogSeverity;)V
.end method

.method public abstract RemoveConsoleOutput()V
.end method

.method public abstract getExceptionMessagePrefix()Ljava/lang/String;
.end method

.method public abstract getLogFilePath()Ljava/lang/String;
.end method

.method public abstract getLogSeverity()Lmediabrowser/model/logging/LogSeverity;
.end method

.method public abstract setExceptionMessagePrefix(Ljava/lang/String;)V
.end method

.method public abstract setLogSeverity(Lmediabrowser/model/logging/LogSeverity;)V
.end method
