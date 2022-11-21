.class public abstract enum Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

.field public static final enum DEFAULT_CONSTRUCTOR:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

.field public static final enum IMITATE_SUPER_CLASS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

.field public static final enum IMITATE_SUPER_CLASS_OPENING:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

.field public static final enum IMITATE_SUPER_CLASS_PUBLIC:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

.field public static final enum NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$1;

    const-string v1, "NO_CONSTRUCTORS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$2;

    const-string v3, "DEFAULT_CONSTRUCTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->DEFAULT_CONSTRUCTOR:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$3;

    const-string v5, "IMITATE_SUPER_CLASS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->IMITATE_SUPER_CLASS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    new-instance v5, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$4;

    const-string v7, "IMITATE_SUPER_CLASS_PUBLIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->IMITATE_SUPER_CLASS_PUBLIC:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    new-instance v7, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$5;

    const-string v9, "IMITATE_SUPER_CLASS_OPENING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->IMITATE_SUPER_CLASS_OPENING:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    const/4 v9, 0x5

    new-array v9, v9, [Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    return-object v0
.end method


# virtual methods
.method public abstract doExtractConstructors(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation
.end method

.method public abstract doInject(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
.end method

.method public extractConstructors(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->doExtractConstructors(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$Token;

    new-instance v12, Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getModifiers()I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->resolveModifier(I)I

    move-result v4

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v5

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v7

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v8

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v9

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v10

    sget-object v11, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public inject(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .locals 0

    sget-object p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    invoke-virtual {p0, p2, p1}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->doInject(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    move-result-object p1

    return-object p1
.end method

.method public resolveModifier(I)I
    .locals 0

    return p1
.end method

.method public with(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;
    .locals 1

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;-><init>(Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V

    return-object v0
.end method

.method public withInheritedAnnotations()Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;
    .locals 2

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;

    sget-object v1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;->EXCLUDING_RECEIVER:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;-><init>(Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V

    return-object v0
.end method
