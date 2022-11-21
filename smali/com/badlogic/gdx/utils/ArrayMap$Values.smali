.class public Lcom/badlogic/gdx/utils/ArrayMap$Values;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "Ljava/lang/Object;",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->d:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->a:Lcom/badlogic/gdx/utils/ArrayMap;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->a:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->a:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v2, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->d:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->a:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->a:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    iget v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v1, v3

    const/4 v4, 0x1

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->a:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    iget v0, v0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    return-object p1
.end method
