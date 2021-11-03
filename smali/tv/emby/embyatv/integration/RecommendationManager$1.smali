.class Ltv/emby/embyatv/integration/RecommendationManager$1;
.super Ljava/lang/Object;
.source "RecommendationManager.java"

# interfaces
.implements Ltv/emby/embyatv/integration/LoadPublishedChannels$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/integration/RecommendationManager;->validate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/integration/RecommendationManager;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/integration/RecommendationManager;)V
    .locals 0

    .line 95
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublishedChannelsLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/OreoChannel;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/emby/embyatv/integration/RecommendationManager;->access$002(Ltv/emby/embyatv/integration/RecommendationManager;Z)Z

    .line 99
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v0, p1}, Ltv/emby/embyatv/integration/RecommendationManager;->access$102(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/util/List;)Ljava/util/List;

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 101
    iget-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    const-string v2, "DEFAULT"

    invoke-static {v0, v2}, Ltv/emby/embyatv/integration/RecommendationManager;->access$300(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/integration/RecommendationManager;->access$202(Ltv/emby/embyatv/integration/RecommendationManager;Ltv/emby/embyatv/integration/OreoChannel;)Ltv/emby/embyatv/integration/OreoChannel;

    .line 102
    iget-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    const-string v0, "NEXTUP"

    invoke-static {p1, v0}, Ltv/emby/embyatv/integration/RecommendationManager;->access$300(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Ltv/emby/embyatv/integration/OreoChannel;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/integration/RecommendationManager;->access$402(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 105
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Oreo channels loaded.  Total: %d Default ID: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v4}, Ltv/emby/embyatv/integration/RecommendationManager;->access$100(Ltv/emby/embyatv/integration/RecommendationManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v3}, Ltv/emby/embyatv/integration/RecommendationManager;->access$200(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v3}, Ltv/emby/embyatv/integration/RecommendationManager;->access$200(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/integration/OreoChannel;->getId()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$1;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/integration/RecommendationManager;->validate()Z

    return-void
.end method
