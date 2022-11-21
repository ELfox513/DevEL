.class public Lcom/esotericsoftware/jsonbeans/JsonWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/Writer;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

.field public k:Z

.field public p:Lcom/esotericsoftware/jsonbeans/OutputType;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->json:Lcom/esotericsoftware/jsonbeans/OutputType;

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->p:Lcom/esotericsoftware/jsonbeans/OutputType;

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public array()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->d:Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v2, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->a:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->b:Z

    if-nez v2, :cond_0

    iput-boolean v1, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->b:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->k:Z

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->k:Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    invoke-direct {v2, p0, v1}, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;-><init>(Lcom/esotericsoftware/jsonbeans/JsonWriter;Z)V

    iput-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->d:Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public array(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->array()Lcom/esotericsoftware/jsonbeans/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->pop()Lcom/esotericsoftware/jsonbeans/JsonWriter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->d:Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->a:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->b:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->p:Lcom/esotericsoftware/jsonbeans/OutputType;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/jsonbeans/OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iput-boolean v2, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->k:Z

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Current item must be an object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public object()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->d:Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->a:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->b:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->b:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->k:Z

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->k:Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    invoke-direct {v2, p0, v1}, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;-><init>(Lcom/esotericsoftware/jsonbeans/JsonWriter;Z)V

    iput-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->d:Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public object(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->object()Lcom/esotericsoftware/jsonbeans/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public pop()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->a()V

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    :goto_0
    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->d:Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected an object, array, or value since a name was set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->value(Ljava/lang/Object;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public setOutputType(Lcom/esotericsoftware/jsonbeans/OutputType;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->p:Lcom/esotericsoftware/jsonbeans/OutputType;

    return-void
.end method

.method public value(Ljava/lang/Object;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    .locals 7

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    long-to-double v5, v1

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->d:Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->a:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->b:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->b:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->k:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->k:Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Name must be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->p:Lcom/esotericsoftware/jsonbeans/OutputType;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/jsonbeans/OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public write([CII)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
