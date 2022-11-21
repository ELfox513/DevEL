.class public Lcom/badlogic/gdx/utils/JsonWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/JsonWriter$OutputType;,
        Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/Writer;

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

.field public k:Z

.field public p:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public q:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->b:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->p:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->q:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public array()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->b:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->d:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

.method public array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->d:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->a:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->b:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->b:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->k:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->k:Z

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->b:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    return-object v0
.end method

.method public json(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public json(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/JsonWriter;->json(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->d:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->a:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->b:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->p:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/JsonWriter;->k:Z

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Current item must be an object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public object()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->b:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->d:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

.method public object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public pop()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->a()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->b:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->d:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected an object, array, or value since a name was set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->p:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-void
.end method

.method public setQuoteLongValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->q:Z

    return-void
.end method

.method public value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->q:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    long-to-double v5, v1

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->p:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public write([CII)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
