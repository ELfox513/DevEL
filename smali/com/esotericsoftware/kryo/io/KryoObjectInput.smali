.class public Lcom/esotericsoftware/kryo/io/KryoObjectInput;
.super Lcom/esotericsoftware/kryo/io/KryoDataInput;
.source "SourceFile"

# interfaces
.implements Ljava/io/ObjectInput;


# instance fields
.field public final a:Lcom/esotericsoftware/kryo/Kryo;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/KryoDataInput;-><init>(Lcom/esotericsoftware/kryo/io/Input;)V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/KryoObjectInput;->a:Lcom/esotericsoftware/kryo/Kryo;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/io/Input;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->read([BII)I

    move-result p1

    return p1
.end method

.method public readObject()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoObjectInput;->a:Lcom/esotericsoftware/kryo/Kryo;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public skip(J)J
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/kryo/io/Input;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
