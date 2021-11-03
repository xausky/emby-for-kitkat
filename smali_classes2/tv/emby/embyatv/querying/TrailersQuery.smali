.class public Ltv/emby/embyatv/querying/TrailersQuery;
.super Ljava/lang/Object;
.source "TrailersQuery.java"


# instance fields
.field private mItem:Lmediabrowser/model/dto/BaseItemDto;

.field private mItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/querying/TrailersQuery;->mItemId:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Ltv/emby/embyatv/querying/TrailersQuery;->mItem:Lmediabrowser/model/dto/BaseItemDto;

    return-void
.end method


# virtual methods
.method public getItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 22
    iget-object v0, p0, Ltv/emby/embyatv/querying/TrailersQuery;->mItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Ltv/emby/embyatv/querying/TrailersQuery;->mItemId:Ljava/lang/String;

    return-object v0
.end method
