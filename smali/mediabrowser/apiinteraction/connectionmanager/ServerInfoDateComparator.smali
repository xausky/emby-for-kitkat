.class public Lmediabrowser/apiinteraction/connectionmanager/ServerInfoDateComparator;
.super Ljava/lang/Object;
.source "ServerInfoDateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmediabrowser/model/apiclient/ServerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lmediabrowser/model/apiclient/ServerInfo;

    check-cast p2, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/connectionmanager/ServerInfoDateComparator;->compare(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ServerInfo;)I

    move-result p1

    return p1
.end method

.method public compare(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ServerInfo;)I
    .locals 2

    .line 13
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getDateLastAccessed()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 14
    invoke-virtual {p2}, Lmediabrowser/model/apiclient/ServerInfo;->getDateLastAccessed()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
