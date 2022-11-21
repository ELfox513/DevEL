.class Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;->newInstantiatorOf(Ljava/lang/Class;)Lu7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/esotericsoftware/reflectasm/ConstructorAccess;

.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;Lcom/esotericsoftware/reflectasm/ConstructorAccess;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$1;->c:Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$1;->a:Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    iput-object p3, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$1;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$1;->a:Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    invoke-virtual {v0}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error constructing instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$1;->b:Ljava/lang/Class;

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
