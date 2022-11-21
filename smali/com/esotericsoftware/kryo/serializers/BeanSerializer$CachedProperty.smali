.class Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/BeanSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CachedProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/reflect/Method;

.field public c:Ljava/lang/reflect/Method;

.field public d:Ljava/lang/Class;

.field public e:Lcom/esotericsoftware/kryo/Serializer;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/BeanSerializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->h:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->h:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->f:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->b:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->e:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->h:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    iget v3, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->g:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v0, p1, v3, v2}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->c:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->a:Ljava/lang/String;

    return-object v0
.end method
