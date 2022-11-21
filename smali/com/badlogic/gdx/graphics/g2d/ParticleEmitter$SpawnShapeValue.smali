.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpawnShapeValue"
.end annotation


# instance fields
.field public c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

.field public d:Z

.field public e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->point:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->both:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    return-void
.end method


# virtual methods
.method public getShape()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    return-object v0
.end method

.method public getSide()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    return-object v0
.end method

.method public isEdges()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->d:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->d:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->d:Z

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "shape"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ellipse:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    if-ne v0, v1, :cond_1

    const-string v0, "edges"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->d:Z

    const-string v0, "side"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    :cond_1
    return-void
.end method

.method public save(Ljava/io/Writer;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ellipse:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edges: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "side: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setEdges(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->d:Z

    return-void
.end method

.method public setShape(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    return-void
.end method

.method public setSide(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    return-void
.end method
