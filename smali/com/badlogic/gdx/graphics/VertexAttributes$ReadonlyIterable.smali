.class Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/VertexAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadonlyIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

.field public d:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;-><init>([Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->b:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->b:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->d:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->b:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->d:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iput v3, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->b:I

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->d:Z

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->d:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput-boolean v3, v1, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->d:Z

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->d:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput v3, v1, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->b:I

    iput-boolean v2, v1, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->d:Z

    iput-boolean v3, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->d:Z

    return-object v1
.end method
