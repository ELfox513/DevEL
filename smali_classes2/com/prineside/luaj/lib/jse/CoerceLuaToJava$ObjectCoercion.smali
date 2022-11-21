.class final Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ObjectCoercion;
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
    name = "ObjectCoercion"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ObjectCoercion;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public coerce(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ObjectCoercion;->a:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result p1

    int-to-double v0, p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->todouble()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    :cond_6
    return-object v1
.end method

.method public score(Lcom/prineside/luaj/LuaValue;)I
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ObjectCoercion;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->b(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ObjectCoercion;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->b(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ObjectCoercion;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->b(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ObjectCoercion;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isint()Z

    move-result p1

    if-eqz p1, :cond_3

    const-class p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    const-class p1, Ljava/lang/Double;

    :goto_0
    invoke-static {v0, p1}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->b(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_4
    iget-object p1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ObjectCoercion;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->b(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_5
    sget p1, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->a:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectCoercion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$ObjectCoercion;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
