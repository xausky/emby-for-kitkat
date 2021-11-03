.class public Ltv/emby/embyatv/querying/SpecialsQuery;
.super Ljava/lang/Object;
.source "SpecialsQuery.java"


# instance fields
.field private ItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Ltv/emby/embyatv/querying/SpecialsQuery;->ItemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Ltv/emby/embyatv/querying/SpecialsQuery;->ItemId:Ljava/lang/String;

    return-object v0
.end method
