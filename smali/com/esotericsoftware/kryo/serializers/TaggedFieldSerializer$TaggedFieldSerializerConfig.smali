.class public Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaggedFieldSerializerConfig"
.end annotation


# instance fields
.field public t:Z

.field public u:Z

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->v:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;
    .locals 1

    invoke-super {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getChunkSize()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->v:I

    return v0
.end method

.method public getChunkedEncoding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->u:Z

    return v0
.end method

.method public getReadUnknownTagData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->t:Z

    return v0
.end method

.method public setChunkSize(I)V
    .locals 2

    iput p1, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->v:I

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaggedFieldSerializerConfig setChunkSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setChunkedEncoding(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->u:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaggedFieldSerializerConfig setChunked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setReadUnknownTagData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->t:Z

    return-void
.end method
