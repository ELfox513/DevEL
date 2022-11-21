.class final Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$BytesCoercion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BytesCoercion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$BytesCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    check-cast p1, [B

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf([B)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method
