.class Ltv/emby/embyatv/integration/Recommendations$1;
.super Ljava/lang/Object;
.source "Recommendations.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/integration/Recommendations;->replaceOldest(Ltv/emby/embyatv/integration/RecommendationType;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ltv/emby/embyatv/integration/Recommendation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/integration/Recommendations;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/integration/Recommendations;)V
    .locals 0

    .line 87
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendations$1;->this$0:Ltv/emby/embyatv/integration/Recommendations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 87
    check-cast p1, Ltv/emby/embyatv/integration/Recommendation;

    check-cast p2, Ltv/emby/embyatv/integration/Recommendation;

    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/integration/Recommendations$1;->compare(Ltv/emby/embyatv/integration/Recommendation;Ltv/emby/embyatv/integration/Recommendation;)I

    move-result p1

    return p1
.end method

.method public compare(Ltv/emby/embyatv/integration/Recommendation;Ltv/emby/embyatv/integration/Recommendation;)I
    .locals 2

    .line 90
    invoke-virtual {p1}, Ltv/emby/embyatv/integration/Recommendation;->getDateAdded()J

    move-result-wide v0

    invoke-virtual {p2}, Ltv/emby/embyatv/integration/Recommendation;->getDateAdded()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
