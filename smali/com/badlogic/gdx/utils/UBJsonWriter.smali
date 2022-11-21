.class public Lcom/badlogic/gdx/utils/UBJsonWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/DataOutputStream;

.field public b:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

.field public d:Z

.field public final k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->k:Lcom/badlogic/gdx/utils/Array;

    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :cond_0
    check-cast p1, Ljava/io/DataOutputStream;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public array()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->b:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->d:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->k:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/UBJsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->b:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

.method public array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->b:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->d:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->k:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->d:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->a()V

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->k:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    :goto_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->b:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected an object, array, or value since a name was set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->b:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->a:Z

    if-nez v0, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->d:Z

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Current item must be an object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public object()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->b:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->d:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->d:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->k:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-direct {v2, p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/UBJsonWriter;Z)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->b:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

.method public object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->object()Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public pop()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value()Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(B)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(C)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(F)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(S)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([B)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([C)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([F)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([S)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;[Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public value()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public value(B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public value(C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    return-object p0
.end method

.method public value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-object p0
.end method

.method public value(F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-object p0
.end method

.method public value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-object p0
.end method

.method public value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-object p0
.end method

.method public value(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->object()Lcom/badlogic/gdx/utils/UBJsonWriter;

    :goto_0
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    :goto_2
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    :cond_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    :cond_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    :cond_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    :cond_e
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value()Lcom/badlogic/gdx/utils/UBJsonWriter;

    :goto_4
    return-object p0

    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unhandled JsonValue type"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value()Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(B)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(S)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(F)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of p1, p1, Ljava/lang/Double;

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p0

    :cond_7
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(C)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unknown object type."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v0, p1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method public value(S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-object p0
.end method

.method public value(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    if-eqz p1, :cond_0

    const/16 p1, 0x54

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public value([B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    aget-char v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_1

    :cond_0
    array-length v3, v2

    const/16 v4, 0x7fff

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v4, 0x49

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    aget-short v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->d(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method

.method public value([Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->a:Ljava/io/DataOutputStream;

    aget-boolean v3, p1, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x54

    goto :goto_1

    :cond_0
    const/16 v3, 0x46

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    return-object p0
.end method
