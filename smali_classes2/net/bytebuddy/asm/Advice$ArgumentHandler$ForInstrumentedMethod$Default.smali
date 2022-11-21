.class public abstract Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;,
        Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Simple;
    }
.end annotation


# instance fields
.field public final enterType:Lnet/bytebuddy/description/type/TypeDefinition;

.field public final exitType:Lnet/bytebuddy/description/type/TypeDefinition;

.field public final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field public final namedTypes:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/SortedMap;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    return-void
.end method


# virtual methods
.method public bindEnter(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;
    .locals 4

    new-instance v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodEnter;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodEnter;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription;Z)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;
    .locals 8

    new-instance v7, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    if-eqz p2, :cond_0

    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    goto :goto_0

    :cond_0
    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    :goto_0
    move-object v6, p2

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/SortedMap;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/StackSize;)V

    return-object v7
.end method

.method public enter()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public exit()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    return v0
.end method

.method public getNamedTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public named(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public returned()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public thrown()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
