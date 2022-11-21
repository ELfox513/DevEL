.class public Lcom/prineside/tdi2/Registry$EnumCategory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Registry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumCategory"
.end annotation


# instance fields
.field public a:I

.field public idListOrdered:Lcom/badlogic/gdx/utils/IntArray;

.field public idRegistry:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public nameListOrdered:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nameRegistry:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-class v0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->a:I

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idRegistry:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameRegistry:Lcom/badlogic/gdx/utils/ObjectIntMap;

    new-instance v1, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    iput-object v1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idListOrdered:Lcom/badlogic/gdx/utils/IntArray;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameListOrdered:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameRegistry:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getMaxId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->a:I

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idRegistry:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public ids()Lcom/badlogic/gdx/utils/IntArray;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idListOrdered:Lcom/badlogic/gdx/utils/IntArray;

    return-object v0
.end method

.method public register(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameRegistry:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->a:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->a:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idRegistry:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idRegistry:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v3, v0, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idRegistry:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0, p1}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameRegistry:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v2, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idListOrdered:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idListOrdered:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->sort()V

    iget-object p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameListOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :goto_2
    iget-object p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idListOrdered:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameListOrdered:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idRegistry:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget p1, p1, v1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->a:I

    invoke-static {p1, v0}, Ljava/lang/StrictMath;->max(II)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->a:I

    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already registered in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public unregister(I)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idRegistry:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameRegistry:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->remove(Ljava/lang/Object;I)I

    iget-object v1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idListOrdered:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntArray;->removeValue(I)Z

    iget-object p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameListOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->idListOrdered:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget p1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    iput p1, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->a:I

    return-void
.end method

.method public values()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Registry$EnumCategory;->nameListOrdered:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method
