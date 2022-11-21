.class final Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ArrayCoercion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayCoercion"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$Coercion;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ArrayCoercion;->a:Ljava/lang/Class;

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->a(Ljava/lang/Class;)Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$Coercion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ArrayCoercion;->b:Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$Coercion;

    return-void
.end method


# virtual methods
.method public coerce(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->length()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ArrayCoercion;->a:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ArrayCoercion;->b:Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$Coercion;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/LuaValue;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v4

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public score(Lcom/prineside/luaj/LuaValue;)I
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    sget p1, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->c:I

    return p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ArrayCoercion;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->b(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ArrayCoercion;->b:Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$Coercion;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/LuaValue;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$Coercion;->score(Lcom/prineside/luaj/LuaValue;)I

    move-result p1

    :goto_0
    return p1

    :cond_3
    sget p1, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->a:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrayCoercion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ArrayCoercion;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
