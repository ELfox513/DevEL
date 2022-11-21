.class public final synthetic Lcom/esotericsoftware/kryo/serializers/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/esotericsoftware/kryo/serializers/k;->a([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
