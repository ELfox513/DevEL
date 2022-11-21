.class public final Lcom/esotericsoftware/kryo/serializers/ImmutableCollectionsSerializers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/ImmutableCollectionsSerializers$JdkImmutableSetSerializer;,
        Lcom/esotericsoftware/kryo/serializers/ImmutableCollectionsSerializers$JdkImmutableMapSerializer;,
        Lcom/esotericsoftware/kryo/serializers/ImmutableCollectionsSerializers$JdkImmutableListSerializer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultSerializers(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 1

    const-string v0, "java.util.ImmutableCollections"

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableCollectionsSerializers$JdkImmutableListSerializer;->a(Lcom/esotericsoftware/kryo/Kryo;)V

    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableCollectionsSerializers$JdkImmutableMapSerializer;->a(Lcom/esotericsoftware/kryo/Kryo;)V

    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableCollectionsSerializers$JdkImmutableSetSerializer;->a(Lcom/esotericsoftware/kryo/Kryo;)V

    :cond_0
    return-void
.end method
