.class Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryo/serializers/BeanSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/beans/PropertyDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/BeanSerializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;->a:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/beans/PropertyDescriptor;Ljava/beans/PropertyDescriptor;)I
    .locals 0

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/beans/PropertyDescriptor;

    check-cast p2, Ljava/beans/PropertyDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;->compare(Ljava/beans/PropertyDescriptor;Ljava/beans/PropertyDescriptor;)I

    move-result p1

    return p1
.end method
