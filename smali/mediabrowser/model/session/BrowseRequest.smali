.class public Lmediabrowser/model/session/BrowseRequest;
.super Ljava/lang/Object;
.source "BrowseRequest.java"


# instance fields
.field private ItemId:Ljava/lang/String;

.field private ItemName:Ljava/lang/String;

.field private ItemType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/session/BrowseRequest;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/session/BrowseRequest;->ItemName:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemType()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/session/BrowseRequest;->ItemType:Ljava/lang/String;

    return-object v0
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/session/BrowseRequest;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setItemName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/session/BrowseRequest;->ItemName:Ljava/lang/String;

    return-void
.end method

.method public final setItemType(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/session/BrowseRequest;->ItemType:Ljava/lang/String;

    return-void
.end method
