.class Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;
.super Lcom/prineside/luaj/LuaFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/jse/JavaMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Overload"
.end annotation


# instance fields
.field public final u:[Lcom/prineside/luaj/lib/jse/JavaMethod;


# direct methods
.method public constructor <init>([Lcom/prineside/luaj/lib/jse/JavaMethod;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;->u:[Lcom/prineside/luaj/lib/jse/JavaMethod;

    return-void
.end method


# virtual methods
.method public call()Lcom/prineside/luaj/LuaValue;
    .locals 1

    const-string v0, "method cannot be called without instance"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;->q(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;->q(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;->q(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkuserdata(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;->q(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;
    .locals 5

    sget v0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;->u:[Lcom/prineside/luaj/lib/jse/JavaMethod;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3, p2}, Lcom/prineside/luaj/lib/jse/JavaMember;->t(Lcom/prineside/luaj/Varargs;)I

    move-result v3

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;->u:[Lcom/prineside/luaj/lib/jse/JavaMethod;

    aget-object v1, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const-string v0, "no coercible public method"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/prineside/luaj/lib/jse/JavaMethod;->w(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method
