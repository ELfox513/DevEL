.class public Lcom/prineside/tdi2/ItemStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# static fields
.field public static final MAX_COUNT:I = 0x3b9ac9ff

.field public static final SORT_COMPARATOR_KIND:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_COMPARATOR_RARITY_ASC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_COMPARATOR_RARITY_DESC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/prineside/tdi2/Item;

.field public b:Lcom/prineside/tdi2/utils/CheatSafeInt;

.field public covered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ItemStack$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/ItemStack$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_KIND:Ljava/util/Comparator;

    new-instance v0, Lcom/prineside/tdi2/ItemStack$2;

    invoke-direct {v0}, Lcom/prineside/tdi2/ItemStack$2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_RARITY_ASC:Ljava/util/Comparator;

    new-instance v0, Lcom/prineside/tdi2/ItemStack$3;

    invoke-direct {v0}, Lcom/prineside/tdi2/ItemStack$3;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_RARITY_DESC:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    iput-object v0, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ItemStack;->covered:Z

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/Item;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    iput-object v0, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/prineside/tdi2/ItemStack;->covered:Z

    if-eqz p1, :cond_1

    if-lt p2, v1, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Count is < 1 ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Item is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ItemStack;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    iget-object v1, p1, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iget-boolean p1, p1, Lcom/prineside/tdi2/ItemStack;->covered:Z

    iput-boolean p1, p0, Lcom/prineside/tdi2/ItemStack;->covered:Z

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;
    .locals 4

    :try_start_0
    const-string v0, "i"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "item"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/prineside/tdi2/Item;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;

    move-result-object v0

    const-string v1, "c"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, "count"

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v2, v0, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create ItemStack from json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public add(I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/utils/PMath;->addWithoutOverflow(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    return-void
.end method

.method public cpy()Lcom/prineside/tdi2/ItemStack;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    iget-object v1, p0, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/ItemStack;->covered:Z

    iput-boolean v1, v0, Lcom/prineside/tdi2/ItemStack;->covered:Z

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    return v0
.end method

.method public getItem()Lcom/prineside/tdi2/Item;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Item;

    iput-object v0, p0, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    const-class v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object p1, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ItemStack;->covered:Z

    return-void
.end method

.method public setCount(I)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v1, 0x0

    const v2, 0x3b9ac9ff

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    return-void
.end method

.method public setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    return-object p0
.end method

.method public setItem(Lcom/prineside/tdi2/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    const-string v0, "i"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Item;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    iget-object v0, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ItemStack;->a:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ItemStack;->b:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/ItemStack;->covered:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
