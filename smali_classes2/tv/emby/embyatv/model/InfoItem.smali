.class public Ltv/emby/embyatv/model/InfoItem;
.super Ljava/lang/Object;
.source "InfoItem.java"


# instance fields
.field private invert:Z

.field private label:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    .line 13
    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ltv/emby/embyatv/model/InfoItem;->label:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Ltv/emby/embyatv/model/InfoItem;->value:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Ltv/emby/embyatv/model/InfoItem;->invert:Z

    return-void
.end method


# virtual methods
.method public Invert()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Ltv/emby/embyatv/model/InfoItem;->invert:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Ltv/emby/embyatv/model/InfoItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Ltv/emby/embyatv/model/InfoItem;->value:Ljava/lang/String;

    return-object v0
.end method
