.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;",
        ">;",
        "Lnet/bytebuddy/utility/JavaConstant$Visitor<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onDynamic(Lnet/bytebuddy/utility/JavaConstant$Dynamic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onDynamic(Lnet/bytebuddy/utility/JavaConstant$Dynamic;)Lnet/bytebuddy/jar/asm/ConstantDynamic;

    move-result-object p1

    return-object p1
.end method

.method public onDynamic(Lnet/bytebuddy/utility/JavaConstant$Dynamic;)Lnet/bytebuddy/jar/asm/ConstantDynamic;
    .locals 4

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {v3, p0}, Lnet/bytebuddy/utility/JavaConstant;->accept(Lnet/bytebuddy/utility/JavaConstant$Visitor;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getBootstrap()Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Lnet/bytebuddy/jar/asm/Handle;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1, v1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Lnet/bytebuddy/jar/asm/Handle;

    move-result-object p1

    return-object p1
.end method

.method public onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Lnet/bytebuddy/jar/asm/Handle;
    .locals 7

    new-instance v6, Lnet/bytebuddy/jar/asm/Handle;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getHandleType()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->getIdentifier()I

    move-result v1

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public bridge synthetic onMethodType(Lnet/bytebuddy/utility/JavaConstant$MethodType;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onMethodType(Lnet/bytebuddy/utility/JavaConstant$MethodType;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1
.end method

.method public onMethodType(Lnet/bytebuddy/utility/JavaConstant$MethodType;)Lnet/bytebuddy/jar/asm/Type;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1
.end method

.method public onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Lnet/bytebuddy/jar/asm/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaConstant$Simple<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/jar/asm/Type;"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Simple;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1
.end method

.method public onValue(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaConstant$Simple<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Simple;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
