.class public Lmediabrowser/model/dto/ItemIndex;
.super Ljava/lang/Object;
.source "ItemIndex.java"


# instance fields
.field private ItemCount:I

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 31
    iget v0, p0, Lmediabrowser/model/dto/ItemIndex;->ItemCount:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/dto/ItemIndex;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setItemCount(I)V
    .locals 0

    .line 35
    iput p1, p0, Lmediabrowser/model/dto/ItemIndex;->ItemCount:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/dto/ItemIndex;->Name:Ljava/lang/String;

    return-void
.end method
