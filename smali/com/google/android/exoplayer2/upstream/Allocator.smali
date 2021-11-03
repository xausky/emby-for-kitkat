.class public interface abstract Lcom/google/android/exoplayer2/upstream/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"


# virtual methods
.method public abstract allocate()Lcom/google/android/exoplayer2/upstream/Allocation;
.end method

.method public abstract getIndividualAllocationLength()I
.end method

.method public abstract getTotalBytesAllocated()I
.end method

.method public abstract release(Lcom/google/android/exoplayer2/upstream/Allocation;)V
.end method

.method public abstract release([Lcom/google/android/exoplayer2/upstream/Allocation;)V
.end method

.method public abstract trim()V
.end method
