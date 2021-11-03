.class public final Lcom/google/android/exoplayer2/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/Metadata$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const-class v2, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    return-void
.end method


# virtual methods
.method public varargs copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    .line 116
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 119
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v0
.end method

.method public copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    .line 106
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 153
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 155
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
