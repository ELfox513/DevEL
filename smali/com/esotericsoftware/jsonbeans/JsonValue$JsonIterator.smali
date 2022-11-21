.class public Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/jsonbeans/JsonValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/esotericsoftware/jsonbeans/JsonValue;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/jsonbeans/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/esotericsoftware/jsonbeans/JsonValue;

.field public b:Lcom/esotericsoftware/jsonbeans/JsonValue;

.field public final synthetic d:Lcom/esotericsoftware/jsonbeans/JsonValue;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/jsonbeans/JsonValue;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->a:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->a:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->a:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->b:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->a:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->next()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->b:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget-object v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget-object v0, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v0, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v2, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget-object v0, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v0, :cond_1

    iput-object v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    return-void
.end method
