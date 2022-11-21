.class public Lcom/prineside/tdi2/serializers/FloatArraySerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/badlogic/gdx/utils/FloatArray;",
        ">;"
    }
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/serializers/FloatArraySerializer$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/FloatArraySerializer$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/FloatArraySerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/badlogic/gdx/utils/FloatArray;",
            ">;)",
            "Lcom/badlogic/gdx/utils/FloatArray;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    new-instance v1, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v1, p3, v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(ZI)V

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p3

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Can\'t create object instance"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/FloatArraySerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/FloatArray;)V
    .locals 1

    iget p1, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-boolean v0, p3, Lcom/badlogic/gdx/utils/FloatArray;->ordered:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v0, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge p1, v0, :cond_1

    iget-object v0, p3, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/FloatArraySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/FloatArray;)V

    return-void
.end method
