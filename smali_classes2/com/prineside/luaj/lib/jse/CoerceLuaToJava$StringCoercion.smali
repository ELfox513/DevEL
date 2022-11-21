.class final Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$StringCoercion;
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
    name = "StringCoercion"
.end annotation


# static fields
.field public static final TARGET_TYPE_BYTES:I = 0x1

.field public static final TARGET_TYPE_STRING:I


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$StringCoercion;->a:I

    return-void
.end method


# virtual methods
.method public coerce(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$StringCoercion;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    iget v0, p1, Lcom/prineside/luaj/LuaString;->m_length:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v2, v0}, Lcom/prineside/luaj/LuaString;->copyInto(I[BII)V

    return-object v1
.end method

.method public score(Lcom/prineside/luaj/LuaValue;)I
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget p1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$StringCoercion;->a:I

    if-nez p1, :cond_0

    sget p1, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->b:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->c:I

    :goto_0
    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->isValidUtf8()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$StringCoercion;->a:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$StringCoercion;->a:I

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    sget v0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->b:I

    :goto_1
    return v0

    :cond_5
    sget p1, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->a:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringCoercion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava$StringCoercion;->a:I

    if-nez v1, :cond_0

    const-string v1, "String"

    goto :goto_0

    :cond_0
    const-string v1, "byte[]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
