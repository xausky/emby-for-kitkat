.class final Ltv/emby/embyatv/util/Utils$3;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->getJumpListPrefixesAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/dto/NameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/Response;

.field final synthetic val$prefixes:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 408
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$3;->val$prefixes:Ljava/util/List;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$3;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 408
    check-cast p1, [Lmediabrowser/model/dto/NameValuePair;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$3;->onResponse([Lmediabrowser/model/dto/NameValuePair;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/dto/NameValuePair;)V
    .locals 5

    .line 411
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 412
    iget-object v4, p0, Ltv/emby/embyatv/util/Utils$3;->val$prefixes:Ljava/util/List;

    invoke-virtual {v3}, Lmediabrowser/model/dto/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$3;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$3;->val$prefixes:Ljava/util/List;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
