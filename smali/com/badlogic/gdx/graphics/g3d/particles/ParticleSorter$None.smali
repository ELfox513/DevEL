.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "None"
.end annotation


# instance fields
.field public c:I

.field public d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->c:I

    return-void
.end method


# virtual methods
.method public ensureCapacity(I)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->c:I

    if-ge v0, p1, :cond_1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->d:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->d:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->c:I

    :cond_1
    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)[I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)[I"
        }
    .end annotation

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->d:[I

    return-object p1
.end method
