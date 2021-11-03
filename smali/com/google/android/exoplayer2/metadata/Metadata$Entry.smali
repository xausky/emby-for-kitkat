.class public interface abstract Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation


# virtual methods
.method public abstract getWrappedMetadataBytes()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
