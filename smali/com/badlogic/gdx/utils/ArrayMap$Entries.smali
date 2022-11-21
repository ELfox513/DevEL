.class public Lcom/badlogic/gdx/utils/ArrayMap$Entries;
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
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:I

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->b:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->k:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->a:Lcom/badlogic/gdx/utils/ArrayMap;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->d:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->a:Lcom/badlogic/gdx/utils/ArrayMap;

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
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->d:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->a:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v2, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->k:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->b:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v3, v1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v0

    iput-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->d:I

    aget-object v0, v1, v0

    iput-object v0, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    return-object v2

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->d:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->a:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->d:I

    return-void
.end method
