.class final Ltv/emby/embyatv/util/Utils$23;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$response:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 1663
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$23;->val$response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 1671
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$23;->val$response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public onResponse()V
    .locals 1

    .line 1666
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$23;->val$response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
