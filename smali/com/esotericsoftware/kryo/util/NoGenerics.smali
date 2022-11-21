.class public final Lcom/esotericsoftware/kryo/util/NoGenerics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/util/Generics;


# static fields
.field public static final INSTANCE:Lcom/esotericsoftware/kryo/util/Generics;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryo/util/NoGenerics;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/NoGenerics;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/util/NoGenerics;->INSTANCE:Lcom/esotericsoftware/kryo/util/Generics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGenericTypesSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextGenericClass()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public popGenericType()V
    .locals 0

    return-void
.end method

.method public popTypeVariables(I)V
    .locals 0

    return-void
.end method

.method public pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V
    .locals 0

    return-void
.end method

.method public pushTypeVariables(Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;[Lcom/esotericsoftware/kryo/util/Generics$GenericType;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
