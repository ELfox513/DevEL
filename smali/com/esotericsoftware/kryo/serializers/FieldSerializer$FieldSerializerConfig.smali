.class public Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldSerializerConfig"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public d:Z

.field public k:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->a:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->b:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->d:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->p:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->r:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCopyTransient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->p:Z

    return v0
.end method

.method public getExtendedFieldNames()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->s:Z

    return v0
.end method

.method public getFieldsCanBeNull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->a:Z

    return v0
.end method

.method public getFixedFieldTypes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->k:Z

    return v0
.end method

.method public getIgnoreSyntheticFields()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->d:Z

    return v0
.end method

.method public getSerializeTransient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->q:Z

    return v0
.end method

.method public getSetFieldsAsAccessible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->b:Z

    return v0
.end method

.method public getVariableLengthEncoding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->r:Z

    return v0
.end method

.method public setCopyTransient(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->p:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig copyTransient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setExtendedFieldNames(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->s:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig extendedFieldNames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFieldsAsAccessible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->b:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig setFieldsAsAccessible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFieldsCanBeNull(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->a:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig fieldsCanBeNull: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFixedFieldTypes(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->k:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig fixedFieldTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIgnoreSyntheticFields(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->d:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig ignoreSyntheticFields: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSerializeTransient(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->q:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig serializeTransient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVariableLengthEncoding(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->r:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig variable length encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
