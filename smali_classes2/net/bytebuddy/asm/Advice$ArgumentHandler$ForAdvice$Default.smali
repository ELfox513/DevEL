.class public abstract Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodExit;,
        Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default$ForMethodEnter;
    }
.end annotation


# instance fields
.field public final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription;

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
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->namedTypes:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public argument(I)I
    .locals 0

    return p1
.end method

.method public enter()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public exit()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    return v0
.end method

.method public named(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method
