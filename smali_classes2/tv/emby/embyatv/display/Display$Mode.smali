.class public Ltv/emby/embyatv/display/Display$Mode;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/display/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltv/emby/embyatv/display/Display$Mode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field private mModeId:I

.field private mRefreshRate:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Ltv/emby/embyatv/display/Display$Mode$1;

    invoke-direct {v0}, Ltv/emby/embyatv/display/Display$Mode$1;-><init>()V

    sput-object v0, Ltv/emby/embyatv/display/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIF)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Ltv/emby/embyatv/display/Display$Mode;->mModeId:I

    .line 38
    iput p2, p0, Ltv/emby/embyatv/display/Display$Mode;->mWidth:I

    .line 39
    iput p3, p0, Ltv/emby/embyatv/display/Display$Mode;->mHeight:I

    .line 40
    iput p4, p0, Ltv/emby/embyatv/display/Display$Mode;->mRefreshRate:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Ltv/emby/embyatv/display/Display$Mode;-><init>(IIIF)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ltv/emby/embyatv/display/Display$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ltv/emby/embyatv/display/Display$Mode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 95
    :cond_2
    check-cast p1, Ltv/emby/embyatv/display/Display$Mode;

    .line 96
    iget v2, p0, Ltv/emby/embyatv/display/Display$Mode;->mModeId:I

    iget v3, p1, Ltv/emby/embyatv/display/Display$Mode;->mModeId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 98
    :cond_3
    iget v2, p0, Ltv/emby/embyatv/display/Display$Mode;->mHeight:I

    iget v3, p1, Ltv/emby/embyatv/display/Display$Mode;->mHeight:I

    if-eq v2, v3, :cond_4

    return v1

    .line 100
    :cond_4
    iget v2, p0, Ltv/emby/embyatv/display/Display$Mode;->mWidth:I

    iget v3, p1, Ltv/emby/embyatv/display/Display$Mode;->mWidth:I

    if-eq v2, v3, :cond_5

    return v1

    .line 102
    :cond_5
    iget v2, p0, Ltv/emby/embyatv/display/Display$Mode;->mRefreshRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget p1, p1, Ltv/emby/embyatv/display/Display$Mode;->mRefreshRate:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-eq v2, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getModeId()I
    .locals 1

    .line 47
    iget v0, p0, Ltv/emby/embyatv/display/Display$Mode;->mModeId:I

    return v0
.end method

.method public getPhysicalHeight()I
    .locals 1

    .line 55
    iget v0, p0, Ltv/emby/embyatv/display/Display$Mode;->mHeight:I

    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    .line 64
    iget v0, p0, Ltv/emby/embyatv/display/Display$Mode;->mWidth:I

    return v0
.end method

.method public getRefreshRate()F
    .locals 1

    .line 72
    iget v0, p0, Ltv/emby/embyatv/display/Display$Mode;->mRefreshRate:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 80
    iget v0, p0, Ltv/emby/embyatv/display/Display$Mode;->mModeId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget v2, p0, Ltv/emby/embyatv/display/Display$Mode;->mHeight:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget v2, p0, Ltv/emby/embyatv/display/Display$Mode;->mWidth:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget v1, p0, Ltv/emby/embyatv/display/Display$Mode;->mRefreshRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(IIF)Z
    .locals 1

    .line 115
    iget v0, p0, Ltv/emby/embyatv/display/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Ltv/emby/embyatv/display/Display$Mode;->mHeight:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Ltv/emby/embyatv/display/Display$Mode;->mRefreshRate:F

    .line 117
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode [mModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltv/emby/embyatv/display/Display$Mode;->mModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltv/emby/embyatv/display/Display$Mode;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltv/emby/embyatv/display/Display$Mode;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltv/emby/embyatv/display/Display$Mode;->mRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 136
    iget p2, p0, Ltv/emby/embyatv/display/Display$Mode;->mModeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget p2, p0, Ltv/emby/embyatv/display/Display$Mode;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget p2, p0, Ltv/emby/embyatv/display/Display$Mode;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget p2, p0, Ltv/emby/embyatv/display/Display$Mode;->mRefreshRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
