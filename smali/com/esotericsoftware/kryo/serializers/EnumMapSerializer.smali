.class public Lcom/esotericsoftware/kryo/serializers/EnumMapSerializer;
.super Lcom/esotericsoftware/kryo/serializers/MapSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/MapSerializer<",
        "Ljava/util/EnumMap;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/EnumMapSerializer;->i:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/EnumMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/EnumMap;",
            ">;I)",
            "Ljava/util/EnumMap;"
        }
    .end annotation

    new-instance p1, Ljava/util/EnumMap;

    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/EnumMapSerializer;->i:Ljava/lang/Class;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object p1
.end method

.method public bridge synthetic create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/kryo/serializers/EnumMapSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/EnumMap;

    move-result-object p1

    return-object p1
.end method

.method public createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/EnumMap;)Ljava/util/EnumMap;
    .locals 0

    new-instance p1, Ljava/util/EnumMap;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    return-object p1
.end method

.method public bridge synthetic createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    check-cast p2, Ljava/util/EnumMap;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/EnumMapSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/EnumMap;)Ljava/util/EnumMap;

    move-result-object p1

    return-object p1
.end method
