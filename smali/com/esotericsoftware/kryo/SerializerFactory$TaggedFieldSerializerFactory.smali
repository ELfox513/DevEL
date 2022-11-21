.class public Lcom/esotericsoftware/kryo/SerializerFactory$TaggedFieldSerializerFactory;
.super Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/SerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaggedFieldSerializerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory<",
        "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;-><init>()V

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/SerializerFactory$TaggedFieldSerializerFactory;->a:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/SerializerFactory$TaggedFieldSerializerFactory;->a:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/SerializerFactory$TaggedFieldSerializerFactory;->a:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    return-object v0
.end method

.method public bridge synthetic newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/SerializerFactory$TaggedFieldSerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;

    move-result-object p1

    return-object p1
.end method

.method public newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;
    .locals 2

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/SerializerFactory$TaggedFieldSerializerFactory;->a:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;)V

    return-object v0
.end method
