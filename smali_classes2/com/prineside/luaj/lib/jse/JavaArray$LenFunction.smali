.class final Lcom/prineside/luaj/lib/jse/JavaArray$LenFunction;
.super Lcom/prineside/luaj/lib/OneArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/jse/JavaArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LenFunction"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/OneArgFunction;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/jse/JavaArray$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/jse/JavaArray$LenFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    check-cast p1, Lcom/prineside/luaj/LuaUserdata;

    iget-object p1, p1, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1
.end method
