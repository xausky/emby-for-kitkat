.class public Lmediabrowser/model/apiclient/ConnectionOptions;
.super Ljava/lang/Object;
.source "ConnectionOptions.java"


# instance fields
.field private EnableWebSocket:Z

.field private ReportCapabilities:Z

.field private UpdateDateLastAccessed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ConnectionOptions;->setEnableWebSocket(Z)V

    .line 51
    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ConnectionOptions;->setReportCapabilities(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ConnectionOptions;->setUpdateDateLastAccessed(Z)V

    return-void
.end method


# virtual methods
.method public final getEnableWebSocket()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lmediabrowser/model/apiclient/ConnectionOptions;->EnableWebSocket:Z

    return v0
.end method

.method public final getReportCapabilities()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lmediabrowser/model/apiclient/ConnectionOptions;->ReportCapabilities:Z

    return v0
.end method

.method public final getUpdateDateLastAccessed()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lmediabrowser/model/apiclient/ConnectionOptions;->UpdateDateLastAccessed:Z

    return v0
.end method

.method public final setEnableWebSocket(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lmediabrowser/model/apiclient/ConnectionOptions;->EnableWebSocket:Z

    return-void
.end method

.method public final setReportCapabilities(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lmediabrowser/model/apiclient/ConnectionOptions;->ReportCapabilities:Z

    return-void
.end method

.method public final setUpdateDateLastAccessed(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lmediabrowser/model/apiclient/ConnectionOptions;->UpdateDateLastAccessed:Z

    return-void
.end method
