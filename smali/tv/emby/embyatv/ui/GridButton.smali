.class public Ltv/emby/embyatv/ui/GridButton;
.super Ljava/lang/Object;
.source "GridButton.java"


# instance fields
.field private id:I

.field private imageIndex:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Ltv/emby/embyatv/ui/GridButton;->id:I

    .line 13
    iput-object p2, p0, Ltv/emby/embyatv/ui/GridButton;->text:Ljava/lang/String;

    .line 14
    iput p3, p0, Ltv/emby/embyatv/ui/GridButton;->imageIndex:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 22
    iget v0, p0, Ltv/emby/embyatv/ui/GridButton;->id:I

    return v0
.end method

.method public getImageIndex()I
    .locals 1

    .line 25
    iget v0, p0, Ltv/emby/embyatv/ui/GridButton;->imageIndex:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Ltv/emby/embyatv/ui/GridButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/ui/GridButton;->text:Ljava/lang/String;

    return-object v0
.end method
