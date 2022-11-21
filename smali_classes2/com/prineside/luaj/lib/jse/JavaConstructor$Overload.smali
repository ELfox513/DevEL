.class Lcom/prineside/luaj/lib/jse/JavaConstructor$Overload;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/jse/JavaConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Overload"
.end annotation


# instance fields
.field public final x:[Lcom/prineside/luaj/lib/jse/JavaConstructor;


# direct methods
.method public constructor <init>([Lcom/prineside/luaj/lib/jse/JavaConstructor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/JavaConstructor$Overload;->x:[Lcom/prineside/luaj/lib/jse/JavaConstructor;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 5

    sget v0, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/luaj/lib/jse/JavaConstructor$Overload;->x:[Lcom/prineside/luaj/lib/jse/JavaConstructor;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/prineside/luaj/lib/jse/JavaMember;->t(Lcom/prineside/luaj/Varargs;)I

    move-result v3

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaConstructor$Overload;->x:[Lcom/prineside/luaj/lib/jse/JavaConstructor;

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
    invoke-virtual {v1, p1}, Lcom/prineside/luaj/lib/jse/JavaConstructor;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
