.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:I

.field public d:I

.field public k:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

.field public p:Lcom/badlogic/gdx/graphics/Camera;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->d:I

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->a:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public abstract a([I)V
.end method

.method public abstract allocParticlesData(I)V
.end method

.method public begin()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->b:I

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->b:I

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->b:I

    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->b:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->sort(Lcom/badlogic/gdx/utils/Array;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->a([I)V

    :cond_0
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->d:I

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->ensureCapacity(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->allocParticlesData(I)V

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->d:I

    return-void
.end method

.method public getBufferedCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->b:I

    return v0
.end method

.method public getSorter()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    return-object v0
.end method

.method public resetCapacity()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->b:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->d:I

    return-void
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->p:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    return-void
.end method

.method public setSorter(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->p:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->d:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->ensureCapacity(I)V

    return-void
.end method
