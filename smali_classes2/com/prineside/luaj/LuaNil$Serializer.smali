.class public Lcom/prineside/luaj/LuaNil$Serializer;
.super Lcom/prineside/tdi2/serializers/SingletonSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaNil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/serializers/SingletonSerializer<",
        "Lcom/prineside/luaj/LuaNil;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/serializers/SingletonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read()Lcom/prineside/luaj/LuaNil;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaNil;->u:Lcom/prineside/luaj/LuaNil;

    return-object v0
.end method

.method public bridge synthetic read()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaNil$Serializer;->read()Lcom/prineside/luaj/LuaNil;

    move-result-object v0

    return-object v0
.end method
